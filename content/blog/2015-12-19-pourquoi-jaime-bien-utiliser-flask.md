---
title: Pourquoi j’aime bien utiliser Flask
slug: pourquoi-jaime-bien-utiliser-flask
author: Cédric Bonhomme
type: post
date: 2015-12-19T22:11:33+00:00
categories:
  - Programming
tags:
  - python
  - flask
  - socket.io
  - WebSocket

---
```python
def post_postprocessor(updated_user=None, **kw):
    socketio.emit('update_user_representation', updated_user, namespace="/user")

with app.app_context():
    blueprint_user = manager.create_api_blueprint(models.User,
                                    methods=['GET', 'POST', 'PUT', 'DELETE'],
                                    allow_delete_many = True,
                                    postprocessors = {
                                        'POST': [post_postprocessor]
                                    })
    app.register_blueprint(blueprint_user)

if __name__ == "__main__":
    socketio.run(app,
                host=conf.WEBSERVER_HOST,
                port=conf.WEBSERVER_PORT,
                debug=conf.WEBSERVER_DEBUG)
```

Voici une API ReSTful pour un modèle (_User_) qui permet de propager vers
différents clients les modifications effectuées sur un object.

Je trouve ça vraiment beau.