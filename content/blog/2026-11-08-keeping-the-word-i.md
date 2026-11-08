---
title: 'Keeping the Word "I": Moving Back to SourceHut'
slug: keeping-the-word-i
author: Cédric Bonhomme
description: "Writing code is one of the few things I build myself, and I am not handing it to a machine. So the projects I care about are leaving Copilot-centred GitHub for SourceHut."
type: post
date: 2026-11-08
categories: ["Technology"]
tags: ["sourcehut", "github", "free-software", "open-source", "ai", "copilot", "microsoft", "programming", "python", "ocaml"]
series: ["Thinking for Ourselves"]
---

Some of my projects are more than fifteen years old. I have been writing software for most of my life and I still enjoy it as much as the first day. It is one of the few things I know how to build. I play the piano, but apart from that I am not good with my hands. I don't make furniture, I don't fix engines. What I make is software. I love writing Python, and I love writing OCaml even more.

A few weeks ago I wrote about [a machine that dances in your place](/2026/10/10/a-machine-that-dances-in-your-place/), and about Amélie Nothomb saying that "difficulty is my pleasure". This post is the same idea, applied to code.

## The word "I"

I have tried LLM-assisted development. I can see what it does and I won't pretend it doesn't work. But I don't experience it as building. When a model writes the code, I can't take credit for it. There is no satisfaction, no pride, nothing to remember. The pleasure I have had for years in building things is simply not there.

You notice it in the language first. "I fixed the bug." "I added support for…" The sentences are the same as before, but the word "I" starts to sound wrong. Who fixed the bug? I described it, I read a diff, I clicked accept. That is a job, maybe a useful one, but it is not the one I chose.

I recently read [*What should we learn now?*](https://ducktape.blot.im/what-should-we-learn-now), a short essay by a developer who uses these tools every day at work, and it puts a name on that feeling: "We really are all suffering from being promoted to managers, and our technical skills are atrophying." What struck me most is the point about friction. A legacy codebase, a stubborn build system, a rabbit hole you did not plan to go down: that is where we used to learn, without even deciding to. "We don't run into the friction because the LLM smooths it out for us." Their advice is to keep coding by hand on your own time, the way pilots keep logging manual flight hours even though the autopilot does most of the flying. I agree with all of it. I would only add that for me it is not training. Coding by hand is not the exercise I do to stay sharp for the real work. It is the real work, and the part I enjoy.

And I don't see why I should give that part away. It is the part I like. It is mine.

## Where the code lives

This is where GitHub comes in. GitHub is no longer a place to host code that happens to have a few extra features. It is built around Copilot now. Copilot in the editor, Copilot reviewing pull requests, Copilot agents you can assign to an issue so that it opens the pull request for you. Every page nudges you towards handing over the writing. That is the direction of the platform, and again, it is not mine.

There is also the older question of what happens to the code itself. Copilot was trained on public repositories without much regard for the licences of the code it learned from. Free software licences exist so that people keep certain freedoms when they reuse our work. A model that absorbs that work and hands it back with no licence and no attribution is a strange way to honour them.

This summer GitHub went one step further. It joined a coalition of generative AI companies opposing an update to California's Artificial Intelligence Transparency Act, and its argument was that the law's licensing requirements would run against free and open source software. Bradley M. Kühn, of the Software Freedom Conservancy, [took that argument apart](https://sfconservancy.org/blog/2026/jul/03/github-gen-ai-california-22757-ok-for-foss-license/): the law is not bad for free software, and in any case "the LLM-gen-AI systems in question are not FOSS themselves anyway!" So the company that trained a proprietary model on our code now hides behind free software to lobby for the AI industry. He calls it "Another Reason to Give Up GitHub", and I agree. GitHub is a proprietary service, owned by Microsoft, that a large part of the free software world depends on. And we should not forget that Microsoft also owns roughly 27 percent of OpenAI.[^msft]

When I follow the threads, I find the same company at the end of most of them. Microsoft owns GitHub, where the code is hosted. It owns npm, where much of the JavaScript world gets its packages. It makes VS Code, the editor most developers write in, and Copilot, which now writes inside it. It runs Azure, where the models are trained and served. The editor, the forge, the package registry, the assistant, the datacentre, and a quarter of the company that makes the models. I don't think anyone planned it that way, but the effect is the same: the whole journey of a line of code, from the moment it is typed to the moment it is shipped, can now happen on Microsoft's ground. I have known most of this for years. I just kept putting off doing something about it.

## SourceHut

So the projects I am really proud of are moving to [SourceHut](https://sr.ht/~cedric). It is actually a return: several of them lived there before, and some never left. [Newspipe](https://sr.ht/~cedric/newspipe) is there, and so is the source of this website.

I like SourceHut for what it is and for what it is not. It is small, fast, and works without JavaScript. It is free software. It is paid for by its users, so I know who the customer is. And it keeps a way of contributing that I have come to appreciate again: you send a patch to a mailing list, someone reads it and answers by email. It is slower than clicking a green button. It asks you to read and to write properly. That is exactly the kind of friction I want to keep around the things I make.

To be honest, I also like that it breaks with the pull request. For many developers today, contributing to open source *means* opening a pull request on GitHub, as if there had never been another way. But the pull request is GitHub's model, and it came with the rest of the package: stars, followers, green squares on a contribution graph. Contributing slowly became something you show, not only something you do. I have followed this workflow for years, and much more closely since generative AI arrived. Maintainers now receive pull requests and bug reports that nobody really wrote, sent by people who have not read the code they are changing.[^curl] And the platform answers with more AI: a bot to summarise the pull request, another one to review it. The patch on a mailing list cannot be turned into a game like that. Someone has to write it, someone has to read it.

I won't pretend this solves everything. Public code on SourceHut can be scraped like public code anywhere else. Moving does not take my projects out of anyone's training set. What it changes is the place I spend my time, the tools I put in front of contributors, and the company I support with my presence. That is not nothing.

Some things will stay on GitHub for a while, mostly projects that I maintain as part of my work. The move is slow, and that is fine. The projects I am proud of, the ones I wrote myself, line by line, for the pleasure of it, will be on SourceHut.

[^msft]: "The next chapter of the Microsoft–OpenAI partnership", [Microsoft](https://blogs.microsoft.com/blog/2025/10/28/the-next-chapter-of-the-microsoft-openai-partnership/), 28 October 2025. After OpenAI's recapitalisation, Microsoft "holds an investment in OpenAI Group PBC valued at approximately $135 billion, representing roughly 27 percent on an as-converted diluted basis".

[^curl]: Daniel Stenberg, maintainer of curl, warned about it as early as January 2024 in ["The I in LLM stands for intelligence"](https://daniel.haxx.se/blog/2024/01/02/the-i-in-llm-stands-for-intelligence/): "A crap report does not help the project at all." Two years later curl closed its bug bounty. In ["The end of the curl bug-bounty"](https://daniel.haxx.se/blog/2026/01/26/the-end-of-the-curl-bug-bounty/), 26 January 2026, he describes "an explosion in AI slop reports" during 2025, with the share of confirmed vulnerabilities falling below 5 percent, and explains that the "never-ending slop submissions take a serious mental toll to manage".
