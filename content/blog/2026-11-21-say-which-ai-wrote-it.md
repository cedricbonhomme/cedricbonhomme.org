---
title: "Say which AI wrote it"
slug: say-which-ai-wrote-it
author: Cédric Bonhomme
type: post
date: 2026-11-21T19:00:00Z
categories:
  - Programming
tags:
  - ai
  - open-source
  - transparency
  - git

---

AI tools now write a growing part of the code that reaches Open Source projects,
including mine. I don't think the interesting question is whether a project should
accept it: that is each project's choice. Where it is accepted, I would like it to
be done openly.

So I wrote down the practice I follow, and built a small site around it:
**<https://www.saywhichai.org>**

## The practice

It fits in three sentences.

- **Say so.** A commit that was not written by a human ends with a trailer naming
  the model and its version.
- **A human answers for it.** Every change is read, understood and tested by the
  person who submits it.
- **No shame, no ranking.** Declaring an AI tool is never held against a
  contribution, and nobody has to use one.

The trailer is one line that most coding agents already know how to write:

```
Co-Authored-By: Claude Opus 5.5 <noreply@anthropic.com>
```

To adopt the practice, a project adds a section to its `CONTRIBUTING.md`, a few
rules to its `AGENTS.md`, and two boxes to its pull request template. The site has
[the texts ready to copy](https://www.saywhichai.org/good-practice.html). The same
commitments also exist as a short, versioned
[charter](https://github.com/cedricbonhomme/ai-disclosure/blob/main/AI_CHARTER.md)
that a project can adopt by name.

## What it looks like

A rule is easier to believe when you can see it applied. The site follows
[a few projects](https://www.saywhichai.org/projects.html) I maintain or work on,
such as [Vulnerability-Lookup](http://vulnerability-lookup.org/),
[VulnTrain](https://github.com/vulnerability-lookup/VulnTrain),
[Newspipe](https://www.newspipe.org)
and [Stegano](https://git.sr.ht/~cedric/stegano). For each one it reads
the commits and the pull requests and shows what the contributors declare: which
models are named, since when, and by how many people.

Each project page also has a short [Gource](https://gource.io/) video of the
history of the repository. In it, a model named in a trailer appears as a user of
its own, next to the person who made the commit: you see the models arrive, work
alongside people, and give way to the next version.

Two things matter to me in how this is shown. The figures are a lower bound: a
commit without a trailer is "no AI declared", not "written without AI". And the
pages rank nobody.

The list of projects is a showcase, not a registry, and it will stay short. The
tool that builds the pages is
[free software](https://github.com/cedricbonhomme/ai-disclosure), so anyone can run
it on their own projects.

## Not every project chooses this

Some projects refuse AI-generated contributions, and many state nothing yet. The
site [compares these positions](https://www.saywhichai.org/policies.html) without
taking a side. What I propose is only one way of being open about it.

If you maintain a project and this speaks to you, try it, and tell me what does
not work.
