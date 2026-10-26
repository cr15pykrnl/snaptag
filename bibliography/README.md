# References cited by the paper

The final BibTeX file retains all 7 metadata-verified references cited by the paper.
No unresolved metadata records remain.

Use `snaptag-verified.bib` as the reusable metadata set. A verified identity does
not establish that the work supports a particular scientific claim. Read it
before reuse.

## Files

- [snaptag-verified.bib](snaptag-verified.bib)

Original reference numbers remain in citation keys and entry comments. Each entry
records its metadata-verification source in a BibTeX comment. Corrections and
verification limitations are documented here; no separate CSV index is required.

## Sources and method

Reviewed 26 October 2026 using the publication DOI landing pages, publisher-
deposited reference arrays from the Crossref REST API and primary publisher,
proceedings, university, government, arXiv or explicitly identified ISBN catalog records. DOI landing-page requests
to ACM and some other publishers were blocked; their deposited reference metadata
provides membership evidence rather than a claim that their full text was read.
Recovered bibliography metadata was used only after
matching it to a published reference slot; uncited manuscript entries are excluded.

DOI metadata was retrieved with `curl -sSL` from
`https://api.crossref.org/works/<doi>` and matched by identifier and title.
Corrections and source-specific verification notes are documented below.
BibTeX syntax is checked with `bibtex` using the `plain` style and every key.
Cross-paper duplicates remain in their separate paper lists; deduplicate by DOI
when combining lists. Citation keys are stable paper/reference-number identifiers.

The bibliography contains citation metadata only. Manuscripts, PDFs, private
archive paths and abstract text are excluded. Verification concerns bibliographic
identity, not study validity, replication or support for a future claim.

## Remaining review

No unresolved metadata records remain in this paper’s reference list.

## Recorded corrections and version choices

- `snaptag_ref003`: Cited surname Clancy corrected to Clancey from the DOI record.
- `snaptag_ref007`: Forbes public HTML author meta tag and JSON-LD datePublished confirm Michael Wolf and 24 April 2014; retrieved directly with curl when the browser fetch reported a paywall. Metadata checked, not an endorsement of this news article.
