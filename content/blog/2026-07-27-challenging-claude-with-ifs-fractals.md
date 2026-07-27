---
title: "Challenging Claude's creativity with IFS fractals and OCaml"
slug: challenging-claude-with-ifs-fractals
author: Cédric Bonhomme
type: post
date: 2026-07-27T07:00:00Z
categories:
  - Programming
tags:
  - ocaml
  - ifs
  - fractals
  - ai
  - claude

---

Sixteen years ago, during a functional programming course, I wrote a small
OCaml program that draws fractals with
[iterated function systems](https://github.com/cedricbonhomme/iterated-function-systems)
(IFS). It is one of my oldest repositories still alive, and it has barely
changed since 2010. I have a long standing affection for both OCaml and
fractals: I even published a
[small work about fractals](https://scholar.google.fr/scholar?oi=bibs&cluster=90579809364779260&hl=en)
back in 2008. So when I recently got my hands on Claude Fable 5, Anthropic's
new model, I thought this dusty little project would make a perfect
playground. Not to fix bugs or refactor code, but to challenge its
creativity: could it invent *new* IFS fractals?

## A quick refresher

An IFS describes an image as the union of shrunken copies of itself. You give
a handful of affine transforms (each one a mix of scaling, rotation and
translation) together with a weight, and the image, the attractor, follows.
The program draws it with the chaos game: start anywhere, repeatedly pick a
transform at random and plot the point. A few hundred thousand iterations
later, the Barnsley fern appears out of twenty-four coefficients.

![Barnsley Fern](/images/blog/2026/07/ifs_barnsley.png)

The repository originally contained eleven classic fractals: the fern, the
Sierpiński triangle, a dragon curve, the Koch curve, and so on.

## First challenge: create something of your own

I told Claude that the Barnsley fern was my favorite and asked whether it
could define a new fractal, either a known one or one of its own invention.

What I found interesting is *how* it worked. It cannot open the graphics
window from its terminal session, so it rewrote the chaos game in a few lines
of Python, rendered the candidates to PNG images, looked at them, and
iterated on the coefficients before writing a single line of OCaml. It also
used the simulation to compute the bounding box of each attractor, so the
viewport in the OCaml record frames the image correctly on the first try.

It came back with two proposals. The first was a known one, the classic maple
leaf. The second was its own: it composed rotation and scaling matrices by
hand (a 0.92 contraction with a 20° rotation for the main curl, a smaller
offset copy for the offshoots) and produced a spiral of spirals that it named
`fiddlehead`, the coiled tip of a young fern frond, as a nod to my favorite
fractal:

![Fiddlehead](/images/blog/2026/07/ifs_fiddlehead.png)

I asked whether it was really its creation, because the result looked
familiar to me. The answer was honest and, I think, exactly right: the
coefficients are its own, but the recipe (one dominant contracting rotation
plus small offset copies) is a well known way to build spiral attractors. In
fact the `galaxy` fractal that has been sitting in my own file since 2010
uses the same architecture. Convergent evolution rather than a copy.

## Second challenge: the vegvísir

Then I raised the difficulty. Could it draw something like the vegvísir, the
Icelandic "wayfinder" stave that Björk has as a tattoo? I love Björk, so the
choice was not entirely innocent.

Claude's first answer was that, strictly speaking, this is impossible. An IFS
attractor is a single self-similar set, while the real vegvísir has a
*different* rune at the end of each of its eight arms. That asymmetry is
simply out of reach. I appreciated getting the mathematical limitation before
the workaround.

The workaround is clever, though. The first transform is a pure 45° rotation
with scale 1.0. It is not a contraction and draws nothing by itself: it only
teleports points between the eight arms, so whatever the other transforms
create gets replicated all around the circle. The remaining transforms draw a
single arm: a thin shaft, two crossbars (each crossbar being a squashed,
rotated copy of the entire symbol, which decorates it with rune-like detail
for free), a miniature of the whole symbol at the tip, and a small copy to
fill the center.

![Vegvísir](/images/blog/2026/07/ifs_vegvisir.png)

The result is not a vegvísir. It is more of an eight-armed rune compass whose
every arm ends in an infinitely recursive copy of the whole. But I like it a
lot, and the family resemblance is there.

## Third challenge: something really new, from nature

The vegvísir experiment made me think. It is funny that, most of the time,
things from nature (flowers, ferns, leaves) make the best IFS candidates. So
for the last challenge I simply asked for an idea: something really new,
maybe from nature.

Claude proposed two candidates, prototyped both, and kept both.

The first, `sunflower`, is phyllotaxis distilled to *two* transforms. One
rotates by the golden angle, 137.508°, the angle real plants use to place
successive seeds and florets, while contracting slightly toward the center.
Because the golden angle is the "most irrational" angle, consecutive buds
never line up into spokes; they fill the disk evenly, exactly as in a real
sunflower head or a romanesco. The other transform plants a bud at the rim,
and since every bud is a copy of the whole attractor, each one is a rosette
made of rosettes:

![Sunflower](/images/blog/2026/07/ifs_sunflower.png)

The second, `lace`, is Queen Anne's lace (wild carrot), whose flower is an
umbel: a dome of stalks radiating from one point, each stalk ending in a
smaller umbel, each of those in smaller umbels still. An umbrella made of
umbrellas. Five transforms place shrunken, slightly rotated copies of the
entire plant along the rim of a dome, and a sixth squashes the whole image
into the thin stem:

![Queen Anne's lace](/images/blog/2026/07/ifs_lace.png)

This one is my favorite of the batch. It looks like something picked on the
side of a road, yet it is entirely described by thirty-six numbers.

## Why nature wins

Claude's explanation of why plants work so well deserves to be repeated. A
plant does not follow a blueprint of its final shape; it grows by repeating
simple local rules: sprout, shrink, turn, repeat. Its final form is the
accumulation of the same rule applied at every scale, which is exactly what
an IFS attractor is. The fern is not *like* a fractal, it is the fixed point
of a handful of affine maps, and so, in a very real sense, are the plants
themselves. That is why the most convincing images in the collection take so
few numbers to describe, and why Barnsley needed only four transforms to
capture a fern.

Designed symbols, on the other hand, resist. The vegvísir struggled precisely
because it was drawn by human hands to *mean* something, not grown by a rule.
Nature is self-similar because growth is iteration. Culture, mostly, is not.

## Closing thoughts

My sixteen-year-old toy project went from eleven fractals to sixteen over
breakfast and a good coffee, and the README now explains the chaos game far
better than I ever bothered to. What struck me the most was not the speed but
the method: simulate first, look at the result, be honest about what is
original and what is not, and know when a challenge is mathematically
impossible before bending it into something achievable.

Everything is on GitHub:
[https://github.com/cedricbonhomme/iterated-function-systems](https://github.com/cedricbonhomme/iterated-function-systems).
If you have OCaml installed, `draw lace 300000;;` is a nice way to spend
a couple of seconds.
