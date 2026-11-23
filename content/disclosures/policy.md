+++
title = "Vulnerability disclosure policy"
description = "How I handle vulnerability reports and publish advisories as GCVE Numbering Authority 2015"
date = "2026-11-23"
lastmod = "2026-11-23" # keep in sync with "Last updated" at the bottom
# A plain page, not an advisory: kept out of the disclosures list and the GCVE feeds.
type = "page"
+++

I am [GCVE](https://gcve.eu) Numbering Authority (GNA) **2015**. This policy
says how I handle vulnerability reports about my software and how I publish
the resulting advisories. It follows
[GCVE-BCP-02](https://gcve.eu/bcp/gcve-bcp-02/) (vulnerability handling) and
[GCVE-BCP-06](https://gcve.eu/bcp/gcve-bcp-06/) (GNA transparency).

## Operational model

- **Who:** Cédric Bonhomme, acting as an individual maintainer.
- **Profile:** vendor authority. I publish advisories for software I write
  and maintain.
- **Disclosure model:** coordinated vulnerability disclosure (CVD), with
  embargoes.
- **Visibility:** public. Every advisory, identifier and status is published.
- **Review:** each report is reviewed by me. Identifiers are never allocated
  automatically.

## Scope

This policy covers the projects listed on my [software](/software/) page that
I maintain myself.

It does not cover projects maintained by an organisation that has its own
numbering authority. Those advisories are published by that organisation.
This is the case for projects I work on at [CIRCL](https://www.circl.lu),
such as [Vulnerability-Lookup](https://github.com/vulnerability-lookup/vulnerability-lookup),
which are handled by GNA 1 (CIRCL).

Vulnerabilities in third-party dependencies should go to the upstream project.
I will help coordinate when one of my projects is affected.

## Reporting a vulnerability

Send an email to [cedric@cedricbonhomme.org](mailto:cedric@cedricbonhomme.org).
I strongly prefer encrypted reports. My OpenPGP key is listed in
[security.txt](/.well-known/security.txt).

Please include:

- the project and version (or commit) affected;
- a description of the issue and its impact;
- steps to reproduce it, or a proof of concept;
- how you would like to be credited, if at all.

Please do not open a public issue or pull request for a vulnerability that is
not yet fixed.

## What happens next

These are targets, not guarantees: this is a personal project, and holidays
happen. If I am going to miss one, I will tell you.

| Step | Target |
|---|---|
| Acknowledge the report | within 5 business days |
| Confirm or dispute the issue, and share a plan | within 14 days |
| Release a fix and publish the advisory | within 90 days of the report |

While the case is open, I keep the reporter informed of progress and of the
planned publication date.

## Embargo and publication

- By default, details stay confidential until a fix is released, or for **90
  days** after the report, whichever comes first.
- The date can move by agreement with the reporter: earlier when a fix ships
  sooner, later when a fix is genuinely complex and progress is being made.
- When a vulnerability is **actively exploited**, I may publish sooner, with
  mitigations, so that users can protect themselves.
- If other parties are affected (downstream distributions, other projects), I
  coordinate a common publication date with them.

## Identifiers and advisories

- Identifiers have the form `GCVE-2015-<year>-<number>`.
- An identifier is assigned once the issue is confirmed. It is **never
  reused** and **never reassigned** to a different vulnerability.
- An identifier that turns out to be invalid (duplicate, not a vulnerability)
  is marked **REJECTED**, never deleted.
- Advisories are published on the [disclosures](/disclosures/) page and in
  machine-readable form ([GCVE-BCP-03](https://gcve.eu/bcp/gcve-bcp-03/) and
  [GCVE-BCP-05](https://gcve.eu/bcp/gcve-bcp-05/)):
  [`/api/gcve/publication`](/api/gcve/publication) and
  [`/dumps/gna-2015.ndjson`](/dumps/gna-2015.ndjson).
- Corrections are published as updates of the same advisory. Advisory URLs are
  permanent.
- If the same vulnerability already has a CVE or another GCVE identifier, the
  advisory references it rather than duplicating it.

## Credit

Reporters are credited by name (or handle) in the advisory, unless they ask to
remain anonymous. Credits are listed on the [disclosures](/disclosures/) page.

## Good-faith research

I will not take legal action against anyone who researches my software in good
faith and in line with this policy: reports the issue to me privately, gives me
reasonable time to fix it, and avoids harming users or their data. Research on
running services that I do not own (for example, other people's
installations of my software) needs their permission, not mine.

## Conflict of interest

I work at CIRCL, which operates GNA 1 and maintains the GCVE project and
Vulnerability-Lookup. GNA 2015 is personal: its scope and decisions are my own
and are not made on behalf of CIRCL.

## Changes to this policy

Last updated: 2026-11-23.
