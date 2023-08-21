---
title: imposm.parser
slug: imposm-parser
author: Cédric Bonhomme
type: post
date: 2012-03-15T12:46:46+00:00
categories:
  - Python
tags:
  - python
  - OpenStreetMap
  - osm

---
J'ai découvert [ce module](http://dev.omniscale.net/imposm.parser/) Python ce
matin. Il est génial.

```python
from imposm.parser import OSMParser

# simple class that handles the parsed OSM data.
class HighwayCounter(object):
    highways = 0

    def ways(self, ways):
        # callback method for ways
        for osmid, tags, refs in ways:
            if 'highway' in tags:
              self.highways += 1

# instantiate counter and parser and start parsing

counter = HighwayCounter()
p = OSMParser(concurrency=4, ways_callback=counter.ways)
p.parse('germany.osm')

# done
print(counter.highways)
```

Python sauvera nos vies.
