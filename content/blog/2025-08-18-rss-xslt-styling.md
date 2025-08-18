---
title: RSS Feeds With a Fresh Coat of XSLT
slug: rss-xslt-styling
author: Cédric Bonhomme
type: post
date: 2025-08-18
categories: ["Blog"]
tags: ["rss", "xslt", "web", "retro-tech", "hugo", "newspipe"]
---

Yes, it’s 2025, and I’m still happily using RSS. Not only that. I’ve just gone and added an **XSLT stylesheet** to my blog’s feed: [https://www.cedricbonhomme.org/blog/index.xml](https://www.cedricbonhomme.org/blog/index.xml).  

Why? Because why not.

For most people, an RSS feed is just raw XML that either:
1. Opens in a newsreader (if you’re one of the enlightened few), or  
2. Looks like incomprehensible angle-bracket soup in the browser.  

With XSLT styling, the second group of people at least gets a **pretty preview** instead of a wall of tags. Think of it as putting lipstick on an XML pig. Except this pig now has a decent font, some CSS, and a “Visit Website →” button. 🐷✨  

### The Retro Charm
There’s something delightfully anachronistic about it. Everyone is busy chasing the latest AI-powered social streams, and I’m here polishing my RSS feed with technology that first appeared around the time flip phones were cool.  With my cup of tea.

It’s like maintaining a vinyl collection in the age of streaming.  

### How It Works
The trick is simple:
- Add an XML stylesheet declaration at the top of your feed.
- Serve it with the right header.
- Write some XSLT and CSS to make it look decent.  

Voilà, your feed is no longer a sad text dump. It’s a **mini landing page**.  

The Hugo template for my feed now includes an XML declaration and a reference to the XSLT stylesheet:

```xml
{{- printf "<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\"?>" | safeHTML }}
{{- printf "<?xml-stylesheet href=%q type=\"text/xsl\"?>" ("style.xsl" | relLangURL) | safeHTML }}
```

The stylesheet itself lives at [style.xsl](https://www.cedricbonhomme.org/style.xsl).

### Why Bother?
Because RSS is still awesome. It’s decentralized, private, and doesn’t shove ads or tracking down your throat. And now, if a curious visitor stumbles on my feed, they’ll see something friendly instead of a developer-only artifact.  

So, if you’re also clinging lovingly to RSS in 2025:  
- Subscribe to my blog via your favorite newsreader.  
- Or just admire the shiny styled feed in your browser.  

Long live RSS. Long live XSLT. Long live [Newspipe](https://github.com/cedricbonhomme/newspipe)!


