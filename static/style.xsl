<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:atom="http://www.w3.org/2005/Atom" xmlns:dc="http://purl.org/dc/elements/1.1/"
  xmlns:itunes="http://www.itunes.com/dtds/podcast-1.0.dtd">

  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes" />

  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml" lang="en">
      <head>
        <title><xsl:value-of select="/rss/channel/title" /> – Web Feed</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <style>
          body {
            font-family: 'Barlow', sans-serif;
            font-size: 1rem;
            line-height: 1.6;
            background: #f9f9fb;
            color: #1a1a1a;
            margin: 0;
            padding: 0;
          }

          header {
            margin: 1.5em 0;
            text-align: center;
          }

          header a {
            display: inline-block;
            padding: 0.5em 1em;
            border-radius: 6px;
            background: #5741ac;
            color: white;
            text-decoration: none;
            font-weight: 600;
          }

          header a:hover {
            background: #3f2e82;
          }

          nav {
            max-width: 800px;
            margin: 1.5em auto;
            padding: 0 1em;
            text-align: center;
          }

          nav img {
            width: 120px;
            border-radius: 50%;
            margin-bottom: 1em;
          }

          .container {
            max-width: 800px;
            margin: auto;
            padding: 0 1em 2em 1em;
          }

          h2 {
            margin-top: 2em;
            margin-bottom: 1em;
            font-size: 1.6rem;
            border-bottom: 2px solid #ddd;
            padding-bottom: 0.3em;
          }

          .item {
            background: white;
            border-radius: 10px;
            padding: 1em;
            margin-bottom: 1em;
            box-shadow: 0 2px 6px rgba(0,0,0,0.05);
            transition: transform 0.2s ease;
          }

          .item:hover {
            transform: translateY(-2px);
          }

          .item h3 {
            margin: 0 0 0.3em 0;
            font-size: 1.2rem;
          }

          .item h3 a {
            color: #5741ac;
            text-decoration: none;
          }

          .item h3 a:hover {
            text-decoration: underline;
          }

          .meta {
            color: #666;
            font-size: 0.9rem;
          }

          a {
            color: #5741ac;
          }

          a:hover {
            color: #3f2e82;
          }
        </style>
      </head>
      <body>
        <nav>
          <img src="/images/profile-picture.jpg" alt="Profile picture" />
          <p><strong>Welcome!</strong> This is my web feed (RSS/Atom).</p>
          <p>You can <strong>subscribe</strong> by copying the URL from your browser's address bar into your favorite newsreader.</p>
          <p>New to feeds? Visit <a href="https://aboutfeeds.com">About Feeds</a> to learn how it works.</p>
          <p>Looking for a self-hosted newsreader? Try <a href="https://github.com/cedricbonhomme/newspipe" target="_blank">Newspipe</a>.</p>
        </nav>

        <div class="container">
          <header>
            <a>
              <xsl:attribute name="href">
                <xsl:value-of select="/rss/channel/link" />
              </xsl:attribute>
              Visit Website →
            </a>
          </header>

          <h2>Recent Items</h2>
          <xsl:for-each select="/rss/channel/item">
            <div class="item">
              <h3>
                <a target="_blank">
                  <xsl:attribute name="href">
                    <xsl:value-of select="link" />
                  </xsl:attribute>
                  <xsl:value-of select="title" />
                </a>
              </h3>
              <div class="meta">
                Published on <xsl:value-of select="pubDate" />
              </div>
            </div>
          </xsl:for-each>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
