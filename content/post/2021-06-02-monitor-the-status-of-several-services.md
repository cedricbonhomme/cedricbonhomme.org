---
title: Monitor the status of several services
slug: monitor-the-status-of-several-services
author: Cédric Bonhomme
type: post
date: 2021-06-02T21:00:59+00:00
categories:
  - Software
tags:
  - python
  - monitoring
  - SmallTech
  - yaml

---
I am working on a small side project. It is called [Guardian][1].

The goal is to check the status of several services and, hopefully, interdependents.

It really embraces the KISS principle. The services and checks to be performed are specified in a YAML file. No server is necessary, nor any required database. Actually it is only possible to generate responsive HTML reports, surely it will be possible to  generate Markdown files. The email notification system is almost implemented.

The software is licensed under <a href="https://www.gnu.org/licenses/agpl-3.0.html" rel="nofollow noopener">GNU Affero General Public License version 3</a>.

PS: The main reason to write this post in English is that my blog is now followed in the Fediverse. Try to follow ``@Cedric@blog.cedricbonhomme.org`` in the Mastodon/Friendica search field.

 [1]: https://git.sr.ht/~cedric/guardian
