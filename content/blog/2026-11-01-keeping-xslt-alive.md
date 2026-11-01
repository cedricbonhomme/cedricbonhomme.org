---
title: Keeping My XSLT-Styled Feed Alive After Chrome Drops It
slug: keeping-xslt-alive
author: Cédric Bonhomme
type: post
date: 2026-11-01
categories: ["Blog"]
tags: ["rss", "xslt", "web", "hugo", "apache", "newspipe"]
---

Last year I gave my RSS feed [a fresh coat of XSLT]({{< ref "/blog/2025-08-18-rss-xslt-styling.md" >}}),
so that a curious visitor opening [https://www.cedricbonhomme.org/blog/index.xml](https://www.cedricbonhomme.org/blog/index.xml)
in a browser would see a friendly little landing page instead of angle-bracket
soup.

This evening I opened that feed in Chromium, and was greeted by a big red
banner:

> This site uses XSLT; that functionality is being removed from this browser
> very soon. When that happens, this page will likely no longer display
> correctly.

Well. My vinyl collection just got a letter from the landlord.

### Google Is Killing XSLT

This is not a surprise. Google [announced it in 2025](https://developer.chrome.com/docs/web-platform/deprecating-xslt):
both the `XSLTProcessor` JavaScript API and the `<?xml-stylesheet?>`
processing instruction (when it points to XSLT) are going away. The
arguments are that browsers still rely on old C libraries such as libxslt,
which keep producing memory-safety bugs, and that only about 0.02% of page
loads use XSLT at all. Firefox and WebKit have signalled the same intention.

The timeline is short:

- **Chrome 143** (December 2025): official deprecation, warnings in the
  console.
- **Chrome 158** (November 17, 2026): XSLT stops working on Stable, except for
  sites in an Origin Trial and companies using an Enterprise Policy.
- **Chrome 176** (August 2027): the Origin Trial and Enterprise Policy end, and
  XSLT is gone for everyone.

So in about two weeks, my pretty feed becomes raw XML again for most
visitors. I understand the security argument. I still like XSLT. A
stylesheet that turns data into a page, with no JavaScript, no framework and
no build pipeline, is a lovely idea.

### Move the Transform, Not the Technology

The trick, which I had already used for the feeds of
[Vulnerability-Lookup](https://www.vulnerability-lookup.org), is simple:
if the browser no longer wants to run the XSLT, run it yourself and send the
result. Same stylesheet, different place.

Vulnerability-Lookup is a Flask application, so it applies the stylesheet
with lxml on each request. This website is a static Hugo site, so the
transform happens once, at build time, with good old `xsltproc`:

```make
build:
	hugo --cleanDestinationDir
	$(MAKE) feeds-html

feeds-html:
	@grep -rl --include=index.xml 'xml-stylesheet' public/ | while read -r f; do \
		xsltproc --nonet static/style.xsl "$$f" > "$$f.html" || exit 1; \
	done
```

Every feed that references the stylesheet now has a pre-rendered HTML twin:
`/blog/index.xml` gets `/blog/index.xml.html`.

### One URL, Two Representations

The feed URL must not change: it is what people copy into their newsreader.
So the server decides which version to send, based on the `Accept` header.
When you open a link, browsers send an `Accept` header that starts with
`text/html`. Newsreaders ask for `application/rss+xml`, `application/atom+xml`
or `application/xml` first.

The site is served by Apache, so a few lines in `.htaccess` do the job:

```apache
<IfModule mod_rewrite.c>
  RewriteEngine On
  RewriteCond %{HTTP_ACCEPT} ^text/html
  RewriteCond %{REQUEST_FILENAME}.html -f
  RewriteRule ^(.+\.xml)$ $1.html [L]
</IfModule>

<IfModule mod_headers.c>
  <FilesMatch "\.xml(\.html)?$">
    Header append Vary Accept
  </FilesMatch>
</IfModule>
```

The `Vary: Accept` header tells caches that the same URL has two
representations, so a newsreader never gets the HTML page from a cache that
a browser filled.

You can check both behaviours with curl:

```bash
$ curl -sI -H 'Accept: text/html' https://www.cedricbonhomme.org/blog/index.xml | grep -i content-type
content-type: text/html
$ curl -sI https://www.cedricbonhomme.org/blog/index.xml | grep -i content-type
content-type: application/xml
```

### A Few Details

- The stylesheet must be XSLT 1.0. Mine said `version="3.0"` but only used
  1.0 features, and libxslt, like browsers, only implements 1.0.
- With `method="html"`, the literal `<html>` element should not carry the
  XHTML namespace, otherwise libxslt serializes it as XML (`<meta></meta>`).
  Adding `doctype-system="about:legacy-compat"` to `xsl:output` gives a proper
  HTML5 doctype, so the page renders in standards mode.
- Firefox still receives the HTML, like every other browser. If a browser
  ever gets the raw XML, the `<?xml-stylesheet?>` instruction is still there
  as a fallback.

Google also offers a WASM [polyfill](https://developer.chrome.com/docs/web-platform/deprecating-xslt)
that you load with a `<script>` tag inside the XML. It works, but it means
shipping JavaScript to style a document that needs none. Doing the transform
on the server is simpler, faster for the visitor, and does not depend on any
browser keeping anything alive.

### So, Long Live XSLT?

In a way, yes. XSLT is leaving the browser, but my `style.xsl` remains the
single source of the feed page design. It just runs on my machine now, instead
of yours.

Long live RSS. Long live XSLT, wherever it runs. And long live
[Newspipe](https://sr.ht/~cedric/newspipe)!
