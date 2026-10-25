# Graphical abstract review, version 1

These 4:3 candidates are prepared for owner feedback. The previously selected
figure remains in place. Paper titles/authors/DOIs stay outside the artwork.

## Refined brief

Explain Tag / Recall / optional Find through the belongings scenario and show the small qualitative study observations that motivated the design, keeping the proposed self-efficacy benefit distinct from an evaluated outcome.

Use source-supported categories and results, a 240 × 180 mm canvas, 9 pt native
labels and precise black linework. Preserve distinctions between demonstrations,
qualitative observations, simulations and measured outcomes. No paper PDFs are
added to the repository.

## Candidates

- [snaptag](assets/snaptag.png), editable source `snaptag.tex`.

## Source evidence

Paper pp. 138–140. Qualitative interviews, routine mapping and shadowing involved five adults ages 58–70. Reported experiences: all five misplaced household items at least once a day; three reported medication/frequency confusion; four were apprehensive about tablets or unfamiliar gadgets. Dot counts are participant counts out of five, not population prevalence or an efficacy estimate. Values are in reported-results.csv.

Existing accepted artwork is reused unchanged, with native text/cues and a new evidence band. The illustration is conceptual, not a participant portrait or original screenshot. Circles/triangles substitute for colour tag cues. No clinical or long-term self-efficacy improvement is claimed.

Sources: https://doi.org/10.1145/2676702.2676719.
Source values, conditions, transformations and input/output hashes are recorded
in `provenance.json` and, where numeric values are replotted, `reported-results.csv`.
Existing reused artwork retains its original resolution and generation provenance
in the selected figure's original source directory.

## Rebuild and review

With TeX, Ghostscript, Poppler and a sibling research-ops checkout, run from the
repository root (replace NAME with a candidate stem above):

```sh
python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
  figures/review-v1/NAME.tex --out-dir .local/abstract-review-v1 \
  --build-dir .local/abstract-review-build
```

The current renderer defaults to 2400 × 1800 output and 960 × 720 review for this
physical 4:3 page. PNGs are selected review exports; PDFs and logs stay ignored.
Keep the 4:3 geometry when adjusting individual panels. Re-render and inspect
labels, numeric scales, counts and arrow endpoints after changes. These are
first review compositions, not a claim of venue-specific submission compliance.
