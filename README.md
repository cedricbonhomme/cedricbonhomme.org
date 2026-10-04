# cedricbonhomme.org

Source code of the website https://www.cedricbonhomme.org

You're free to reuse the content under the terms of
CC-BY-SA, and the code under the terms of the
[GNU General Public License version 3](https://www.gnu.org/licenses/gpl-3.0.html).

## Building

The site is built with [Hugo](https://gohugo.io) (extended edition, version
0.158.0 or later). The [Anatole](https://github.com/lxndrblz/anatole) theme is
pulled in as a Hugo module, which requires [Go](https://go.dev) to be installed,
and its stylesheets are compiled with [Dart Sass](https://sass-lang.com/dart-sass),
whose `sass` binary must be on the `PATH`.

```bash
hugo mod get -u   # update the theme to its latest release
hugo server       # preview locally
hugo              # build into public/
```

## Announcing new articles on Mastodon

New blog posts are automatically announced on
[Mastodon](https://fosstodon.org/@cedric) by
[feed2toot](https://gitlab.com/chaica/feed2toot), which polls the blog's RSS
feed (`https://www.cedricbonhomme.org/blog/index.xml`) from a cron job on the
hosting account. Only the section feed is used, as it lists blog posts only.

The web hosting offers no root access, so everything lives in a virtual
environment in the home directory. The feed2toot release on PyPI (0.17) does
not run on Python 3.12 or later without a one-line patch.

```bash
mkdir -p ~/feed2toot && cd ~/feed2toot
python -m venv venv
./venv/bin/pip install feed2toot
sed -i 's/SafeConfigParser/ConfigParser/g' venv/lib/python3.*/site-packages/feed2toot/confparse.py
```

Create an application on the Mastodon instance (Preferences > Development)
with only the `write:statuses` scope, then store its credentials in two files:

```bash
printf 'CLIENT_KEY\nCLIENT_SECRET\n' > clientcred.txt
printf 'ACCESS_TOKEN\n' > usercred.txt
chmod 600 *.txt
```

`~/feed2toot/feed2toot.ini` (paths must be absolute):

```ini
[mastodon]
instance_url=https://fosstodon.org
user_credentials=/home/ACCOUNT/feed2toot/usercred.txt
client_credentials=/home/ACCOUNT/feed2toot/clientcred.txt
toot_visibility=public

[cache]
cachefile=/home/ACCOUNT/feed2toot/cache.db
cache_limit=10000

[lock]
lock_file=/home/ACCOUNT/feed2toot/feed2toot.lock
lock_timeout=3600

[rss]
uri=https://www.cedricbonhomme.org/blog/index.xml
toot=New article: {title} {link}

[feedparser]
accept_bozo_exceptions=true
```

Check what would be posted, seed the cache so existing articles are not
announced again, then schedule the job (via `crontab -e` or the hosting
panel's scheduled tasks):

```bash
./venv/bin/feed2toot -c feed2toot.ini --dry-run
./venv/bin/feed2toot -c feed2toot.ini --populate-cache
```

```
*/15 * * * * /home/ACCOUNT/feed2toot/venv/bin/feed2toot -c /home/ACCOUNT/feed2toot/feed2toot.ini
```

If a run posts nothing and prints nothing, run it with `--debug`. A crashed
run can leave `feed2toot.lock` behind, and feed2toot exits silently while a
lock younger than `lock_timeout` exists. Removing the file fixes it.
