---
title: Contrôle du temps de présence
slug: controle-du-temps-de-presence
author: Cédric Bonhomme
type: post
date: 2015-01-04T09:52:15+00:00
tags:
  - python
  - dsk

---
C'est l'année des cadeaux. Voici aujourd'hui un petit script qui va permettre
aux chanceux utilisateurs du logiciel [DSKnet][1] d'établir quelques
statistiques de présence.

```python
#! /usr/bin/env python
#-*- coding: utf-8 -*-

#
# Fetch the list of present in your business from
# the DSK Time platform (http://www.dsk.lu).
# Results are stored in a data base.
# You can run this script periodically with cron.
#
# Requirements:
# $ sudo pip install beautifulsoup4 requests sqlalchemy
#

__author__ = "Cedric Bonhomme"
__version__ = "$Revision: 0.1 $"
__date__ = "$Date: 2015/01/04 $"
__revision__ = "$Date: 2015/01/04 $"
__copyright__ = "Copyright (c) Cedric Bonhomme"
__license__ = "GPLv3"

from datetime import datetime
from bs4 import BeautifulSoup
import requests

from sqlalchemy import create_engine, Table, Column, ForeignKey, desc
from sqlalchemy import Integer, String, DateTime, Float, Boolean
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import relation, relationship, mapper, sessionmaker

Base = declarative_base()

payload = {
    "redirect": "",
    'lglogin': "<your-PIN>",
    'lgpasswd': "<you-password>",
    "valider": "Valider"
}
DSKnet_ADDRESS = "http://dsknet.private.your-businness.com"
DB_TYPE = "postgres"
DB_NAME = "dsk"
DB_USER_NAME = "cedric"
DB_PASSWORD = "password"
DB_ADDRESS = "127.0.0.1"
DB_PORT = 5432
DB_CONNECTION = "%s://%s:%s@%s:%s/%s" % \
    (DB_TYPE, DB_USER_NAME, DB_PASSWORD, DB_ADDRESS, DB_PORT, DB_NAME)
STATUS = ["entree", "absence", "timeout", "sortie", "mission"]

#
# Models
#
class Employee(Base):
    """
    Represents an employee.
    An employee is a name and a list of status (logs).
    """
    __tablename__ = 'employees'

    id = Column(Integer, primary_key=True)
    name = Column(String(80))
    logs = relationship('Status', backref = 'user', lazy = 'dynamic', cascade='all,delete-orphan',
                                order_by=desc("statuses.date"))

    def __init__(self, name):
        self.name = name

    def __str__(self):
        return """Name: %s""" % (self.name.encode("utf-8"),)

    def __repr__(self):
        return self.name

class Status(Base):
    """
    Represents a status.
    """
    __tablename__ = 'statuses'

    id = Column(Integer, primary_key=True)
    present = Column(Boolean(), default=False)
    status = Column(String(80))
    date = Column(DateTime(), default=datetime.now)

    employee_id = Column(Integer, ForeignKey('employees.id'))

    def __str__(self):
        return """Status: %s\nTime: %s""" % (self.status, self.date)

#
# Data recovery
#
def get_data():
    """
    Get the data from the DSK system.
    """
    with requests.session() as c:
        c.post(DSKnet_ADDRESS+"/login.php", data=payload)
        request = c.get(DSKnet_ADDRESS+"/PresAbs.php")
        return request.text

def parse_data(data):
    """
    Parse the table of employees.
    """
    soup = BeautifulSoup(data)
    tables = soup.findAll("table", attrs={'class': 'TabPresAbs'})

    result = []
    for table in tables:
        data = [row.findAll("td") for row in table.findAll("tr")[1:]]
        for person in data:
            name = person[0].text.strip()
            status = person[1].attrs["class"][0][5:]
            new_person = (name, status)
            result.append(new_person)
    return result

def find(employees, name):
    return [employe for employe in EMPLOYEES if name in employe[0].lower()]


if __name__ == "__main__":
    # Point of entry in execution mode
    engine = create_engine(DB_CONNECTION)
    Base.metadata.create_all(engine)
    Session = sessionmaker(bind=engine)
    session = Session()

    # Update the database
    data = get_data()
    EMPLOYEES = parse_data(data)
    print("Number of employees: %s" % len(EMPLOYEES))
    for employee_name, status in EMPLOYEES:
        employee = session.query(Employee).filter(Employee.name == employee_name).first()
        if employee is None:
            employee = Employee(employee_name)
            session.add(employee)
            session.commit()
        new_status = Status(present= status=="entree" if True else False, status=status)
        session.add(new_status)
        employee.logs.append(new_status)
        session.commit()

    # Test some filters
    for employee in session.query(Employee).all():
        print employee
        print employee.logs[-1]
        print
    for employee in session.query(Employee).filter(Employee.name.like("%BONHOMME%")).all():
        print employee
        print employee.logs[-1]
        print

    print

    for status in session.query(Status).filter(Status.status=="entree").all():
        print status
        print status.user
        print
```

Il s'agit ici d'une première version qui pour le moment insère essentiellement
des données dans une base. Il manque surtout quelques fonctions pour générer des
graphes.

 [1]: http://www.dsk.lu/produits.php?ID=95