---
title: Peeling the Onion of Computer Science
slug: peeling-the-onion-of-computer-science
author: Cédric Bonhomme
type: post
date: 2026-10-18
draft: true
categories: ["Science"]
tags: ["computer-science", "mathematics", "logic", "history", "ai", "critical-thinking"]
series: ["Thinking for Ourselves"]
---

I have been thinking about computer science. What it is, where it comes from, and what remains when you start taking it apart. It may sound like an odd thing to wonder about for someone who has spent years working in the field. But perhaps that is precisely why I keep coming back to it.

There is also a more immediate reason. In my [previous post]({{< ref "/blog/2026-10-10-a-machine-that-dances-in-your-place.md" >}}), I wrote about generative AI and what it does to our curiosity and to the pleasure of doing difficult work ourselves. Since then, the hype has only grown. A handful of companies behave as if they owned the future. They want to tell us what progress should look like and what we should work on, and to privatise knowledge that was built in the open, over generations. Before arguing with that story, I wanted to go back to the beginning and ask what this discipline actually is, and what it rests upon.

I imagine computer science as an onion. We peel away one layer, then another. Programming languages, algorithms, operating systems, networks, databases, artificial intelligence. Underneath all that, we find mathematics. Logic. Set theory. Algebra. The theory of languages. And if we keep peeling, what do we have left?

![A coloured-pencil drawing of a red onion cut in half, its rings circling a small pale core](/images/blog/2026/10/onion.jpg)

*Drawing by [Catherine T. Kaplan](https://www.ctk-art.com/).*

I wrote down these thoughts and shared them in a Signal group where scientists, computer scientists, artists and cybersecurity professionals talk together, some of them colleagues, some not. One of them pointed out that, for a long time, parts of the mathematical establishment considered computer science more of a tool than a science in its own right. I don't know whether that is a fair description of an entire tradition, and I am not particularly interested in a war between disciplines. But the question deserves to be asked.

What makes computer science a science? And what, exactly, is its subject?

I am not trying to diminish computer science. Quite the opposite. I want to understand what we are talking about when we use this very broad word.

Look at the people who helped lay its foundations. Kurt Gödel was a mathematician and logician. Alan Turing was a mathematician and logician. Alonzo Church was a mathematician and logician. John von Neumann was a mathematician whose work had an enormous influence on computing. These people did not start by writing applications or selling computers. They were asking fundamental questions about mathematics, logic, calculation and what can be done by following a precise set of rules.

Gödel's incompleteness theorems, published in 1931, changed our understanding of formal mathematics. Any consistent, effectively axiomatized formal system powerful enough to express elementary arithmetic contains statements it can neither prove nor disprove. And such a system cannot, under the relevant assumptions, establish its own consistency from within. These were not small results. They dealt a serious blow to important ambitions associated with David Hilbert's programme for establishing the foundations of mathematics.[^1]

Did Gödel annihilate logic? Of course not. Logic survived. Mathematics survived. Logicians continued to work. But the results changed the questions they could ask, and the answers they could reasonably expect.

I find the distinction important. Gödel did not destroy a discipline. He showed that a particular ambition had limits. He made us understand something fundamental about the systems we use to reason.

I cannot ask whether Gödel annihilated logic without thinking of Hugo Duminil-Copin. Earlier this month, after OpenAI put online hundreds of manuscripts claiming to settle open mathematical problems, sixteen of them his, he told his colleagues: "They annihilated my research field."[^2] I wrote about it in my previous post. The situations are not equivalent: Gödel proved a theorem, while today's worry is about how mathematics is produced, checked and passed on. What connects them is the fear of losing something essential. Today it is the mathematicians who seem to be in danger. I think they will survive, as the logicians did. Not unchanged, and probably not without pain. But a proof still has to be read, checked and understood by someone, and the questions worth asking do not disappear because some answers arrive faster.

A few years after Gödel, Turing approached another fundamental question. What does it mean for something to be computable? Is there a general procedure that can solve a given class of problems? He described an abstract machine, now called the Turing machine, and used it to investigate the limits of mechanical calculation.[^3]

This machine does not need a screen, a processor, a keyboard or even electricity. It exists as a mathematical model. We can reason about it, construct proofs about it, and establish what it can and cannot compute without building anything physical.

![A Turing machine: a control unit, a read/write head, and an infinite tape of cells](/images/blog/2026/10/turing-machine.jpg)

*A tape, a head and a few rules. A slide from the University of Aberdeen's course on formal models of computation. And if you ever pass through Aberdeen, the [Aberdeen Art Gallery](https://sites.aberdeencity.gov.uk/AAGM/plan-your-visit/art-gallery) is worth the visit too.*

Church independently developed a different formal account of effective calculation through lambda calculus. The two approaches were shown to be equivalent in the relevant sense.[^3] Like Turing's machine, lambda calculus needs nothing physical to exist.

That is the point that interests me most. **Computer science does not necessarily need a computer.**

Of course, we need physical machines to run the software we write. Physics, electronics and engineering are indispensable to building them. There are questions in computer science that cannot be answered properly without experiments on real systems. But the theory of computation does not depend on the existence of a silicon chip. The Turing machine is enough to ask fundamental questions about computation.

The history is telling. Some of the foundations of computer science were developed before modern electronic computers became the machines we know today. The theory did not simply emerge from the hardware. In important ways, the mathematics came first.

So let us peel another layer.

What remains when we remove the computer itself? Algorithms. Formal languages. Computability. Complexity. The semantics of programs. The mathematical study of processes that transform information according to rules. These are not merely accessories to a machine. They are questions in their own right.

And yet I hesitate to say that computer science is simply applied mathematics. That would miss something too. Mathematics supplies a language and many of the tools, but computer science has developed its own problems, concepts and methods. The question of what can be computed, what can be automated, or how the cost of computation grows with the size of a problem has become a substantial field of inquiry.

The line is subtle. A discipline can grow out of another without remaining merely a branch of it. The fact that much of computer science is mathematical does not automatically settle the question of what computer science is.

There is another word that complicates the discussion, particularly for us French speakers: *informatique*.

It is tempting to read *informatique* as *science de l'information*. The word is usually explained as a combination of *information* and *automatique*, and the Académie française defines *informatique* as the rational and automatic processing of information.[^4] It is not quite the same thing as saying that computer science is the science of information.

Information theory is a separate, though closely related, discipline. Claude Shannon's landmark paper, *A Mathematical Theory of Communication*, appeared in 1948. It established a mathematical framework for reasoning about information, coding, communication and noise.[^5] Shannon was asking questions such as how much information a message contains and what the limits of reliable communication are.

Computer science asks other questions. What can be computed? What procedure can solve a problem? How much time and memory will it require? Can we prove that an algorithm is correct? Can we prove that a function will terminate? Can the problem be solved at all? Do you remember those courses at university?

The two fields meet constantly, but they are not interchangeable. A communication channel can be studied mathematically without knowing the meaning of the messages it carries. An algorithm can be studied without concerning ourselves with how its input was transmitted. Information, computation and meaning are connected, but they are not the same thing.

This is why I have become careful about the words we use. If we call everything information science, we risk losing the specific questions that make computation distinctive. If we call everything computer science, we risk absorbing disciplines that have their own subject matter and their own history.

The onion metaphor is useful precisely because it does not give us an easy answer. Peel away the hardware, and the theory remains. Peel away the applications, and the study of computation remains. But if we peel away the mathematics and logic, I am not sure that much of the intellectual core of computer science survives.

Perhaps the centre of the onion is not an object at all. Perhaps it is a question: what can be done by following a precise procedure, and what are the limits of doing so?

This brings me to Edsger W. Dijkstra.

In 1984, Dijkstra wrote an essay called *On the Nature of Computing Science*.[^6] It is a short text, but one that I find particularly interesting in the present context. He was asking almost exactly the question that has been bothering me: what is computer science, and what should it be?

His answer was radical. For computing science to become a viable academic discipline, he argued, it should become an unusually formal branch of mathematics. He wanted methodological concerns and formal reasoning to occupy a central place. In his view, mathematical elegance was not a luxury. Simplicity mattered, and understanding why something works mattered more than accumulating facts about it.

I find a great deal to agree with here. Dijkstra was defending the intellectual substance of computing against the temptation to define it by whatever happens to be fashionable, profitable or politically useful.

He was also suspicious of grand promises. He observed that computing was expected to cure all the ills of the world, and wondered what would later be recognised as its alchemy. The less a new technology is understood, the higher the expectations placed upon it.

This was written in 1984. Nobody was asking him to evaluate ChatGPT, large language models or the latest claims about artificial general intelligence. But the pattern is familiar. Every new technology arrives accompanied by people who are convinced that it will transform everything. Its limitations are dismissed as temporary. Its costs are treated as secondary. Its commercial success becomes evidence of its importance.

The promises may turn out to be alchemy. The damage will not. Many translators describe their work shifting from translating to correcting machine output, often for less. Mathematicians, as Duminil-Copin's reaction showed, are watching the open culture of their discipline close up. This is not a projection about some distant future. It is happening now, to people with names and careers, while the grand promises remain promises.

Dijkstra also wrote that complexity sells better. Not only in industry, but in academia. It is easier to be rewarded for introducing a complicated concept than for showing that an existing one is unnecessary. There are institutions and careers built around complexity, while the person who removes it can struggle to demonstrate that they have done anything important.

That observation could have been written today.

I do not agree with everything in Dijkstra's vision, though. I am not convinced that the whole of computer science can, or should, be reduced to formal mathematics. Some questions require empirical observation, experiments, measurements and an understanding of the physical world. Operating systems fail in production. Networks behave in ways that are difficult to capture in a model. Human beings do not always behave as a formal specification would like them to. Machine learning, in particular, depends on a combination of mathematical theory, statistical reasoning, engineering and empirical evaluation.

But I do not see this as a contradiction. Dijkstra's emphasis on formal reasoning is complementary to those other methods. It reminds us that computer science should not be reduced to the construction of artefacts or the measurement of how quickly a product can be shipped. We need to understand what we build, what assumptions it makes, and where its limits lie.

There is a difference between a scientific discipline and an industry that uses its results.

A company can build a very successful product without making a fundamental scientific discovery. A scientific result can be intellectually important without becoming a product at all.

And this is where my thoughts return to the companies that currently dominate the technology industry.

OpenAI, Google, Anthropic and others make use of decades of research in mathematics, statistics, computer science, linguistics and engineering. The work of many researchers, including people working in public institutions and universities, made today's systems possible. Their development also involves substantial engineering, research and experimentation. I am not claiming that the companies contribute nothing of their own.

But I do question the story that surrounds their products. The scale of their infrastructure, the amount of money they spend and the speed at which they release new models are presented as though they were proof of scientific superiority. They are not the same thing.

A billion-dollar investment does not make a mathematical result more true. A model with more parameters does not automatically represent a deeper understanding of the problem. A demonstration that looks impressive is not the same as a scientific explanation of why a system works, where it fails, and what it can reliably do.

Sometimes, though, the result is real. This week, Anthropic described how one of its models worked out where the seeds of the NIST elliptic curves came from, a question cryptographers had been asking for years. The answer is almost disappointing: Unix timestamps from 1997, fed to `lrand48`, an ordinary pseudorandom generator from the C library.[^7] No cryptographic break, no hidden mathematics: just an old mystery with a reproducible explanation. What interests me is not that a machine found it. It is that anyone can check it: the procedure is described, the code is published, and the authors list what remains unexplained. That is what a result looks like. The headline says Claude revealed the origins; the page credits ten researchers. The story and the work are not quite the same thing.

We should be able to recognise genuine advances without allowing commercial marketing to rewrite the history of how they became possible.

I am also uneasy about the way the industry turns scientific achievement into a concentration of power. When access to advanced computational resources, research infrastructure and powerful models becomes concentrated in a small number of companies, the ability to use scientific knowledge becomes dependent on those companies. We move from sharing knowledge to renting access to its applications.

This is not an argument against using technology. It is an argument for understanding what it rests upon, and for asking who controls the result.

In that previous post, I wrote about the pleasure of doing difficult work yourself. About the danger of handing over the very process through which you learn to think. I see a connection here. The history of computer science is a reminder that the important work is not always the machine at the end. Sometimes it is a person spending years thinking about a question that has no immediate commercial value. Sometimes it is a proof that tells us a problem cannot be solved. Sometimes it is an elegant idea that makes a whole class of problems easier to understand.

There is no spectacular product in that description. No launch event. No demonstration on a stage. Just intellectual work.

I do not want to romanticise mathematics or pretend that every discovery is made for the love of truth. Science has its own institutional incentives, vanities and power structures. The people in that Signal group reminded me of that, too. Researchers are human beings; they have careers, funding pressures and ambitions. Dijkstra himself was criticising the reward systems of academia, not just the commercial world.

But this is exactly why we should distinguish the work from the machinery surrounding it. The fact that science is imperfect does not mean that the scientific method is meaningless. The fact that researchers have incentives does not mean that a scientific result and a marketing claim are equivalent.

Computer science is a good place to see the distinction. Its history is full of abstract questions whose value was not immediately obvious, and of ideas that took decades to become practical. Turing did not need a modern computer to reason about computation. Gödel did not need a software product to reveal limits in formal systems. Shannon did not need a social network to develop a mathematical theory of communication.

They were not merely building tools. They were changing what we knew.

So I come back to the onion. What is left when we peel away the products, the programming languages, the computers, the marketing and the fashionable promises?

Not nothing. Mathematics, logic, formal reasoning, algorithms, the theory of computation. And beyond these, a discipline with its own questions about what can be automated and what cannot.

I am happy to call that computer science. I do not need it to be the most important science, or to stand above mathematics, physics or any other field. I do not think we need to rank disciplines against one another. They borrow from each other, enrich each other, and sometimes challenge each other's assumptions.

But we should not confuse the science with the industry that has grown around it. And we should not confuse the ability to build a machine with the ability to understand what the machine is doing.

The machine is not the whole story. It never was.

[^1]: Stanford Encyclopedia of Philosophy, [Gödel’s Incompleteness Theorems](https://plato.stanford.edu/entries/goedel-incompleteness/).

[^2]: "Nouveau coup de massue d'OpenAI sur les mathématiciens : « Ils ont annihilé mon domaine de recherche »", [*Le Monde*](https://www.lemonde.fr/sciences/article/2026/10/10/nouveau-coup-de-massue-d-openai-sur-les-mathematiciens-ils-ont-annihile-mon-domaine-de-recherche_6790951_1650684.html), 10 October 2026 (subscribers only).

[^3]: Stanford Encyclopedia of Philosophy, [The Church–Turing Thesis](https://plato.stanford.edu/entries/church-turing/); Alan Turing, [“On Computable Numbers, with an Application to the Entscheidungsproblem” (1936)](https://www.cs.virginia.edu/~robins/Turing_Paper_1936.pdf).

[^4]: Académie française, [“Informatique”](https://www.dictionnaire-academie.fr/article/A9I1219); Larousse, [“Informatique”](https://www.larousse.fr/dictionnaires/francais/informatique/42996).

[^5]: Claude E. Shannon, [“A Mathematical Theory of Communication” (1948)](https://doi.org/10.1002/j.1538-7305.1948.tb01338.x).

[^6]: Edsger W. Dijkstra, [“On the Nature of Computing Science” (EWD 896, 1984)](https://www.cs.utexas.edu/~EWD/transcriptions/EWD08xx/EWD896.html).

[^7]: Anthropic, ["Claude reveals ECDSA curve origins"](https://www.anthropic.com/research/ecdsa-curve-origins), 16 October 2026.
