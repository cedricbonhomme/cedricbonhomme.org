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
