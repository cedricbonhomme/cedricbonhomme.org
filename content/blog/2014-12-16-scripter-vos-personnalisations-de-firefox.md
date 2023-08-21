---
title: Scripter vos personnalisations de Firefox
slug: scripter-vos-personnalisations-de-firefox
author: Cédric Bonhomme
type: post
date: 2014-12-16T08:48:33+00:00
categories:
  - Web
tags:
  - firefox

---
La page `about:config` est une chose que j'aime beaucoup. Surtout depuis que
je sais [comment modifier les valeurs][1] avec un script.

```javascript
user_pref("browser.urlbar.trimURLs", false);
user_pref("browser.urlbar.formatting.enabled", false);
user_pref("browser.search.suggest.enabled", false);
user_pref("browser.search.showOneOffButtons", false);
user_pref("geo.enabled", false);
user_pref("javascript.enabled", false);
user_pref("loop.throttled", false);
user_pref("network.http.sendRefererHeader", 0);
```

 [1]: http://kb.mozillazine.org/User.js_file