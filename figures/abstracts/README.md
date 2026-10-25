# Graphical abstracts

Situated context prompts the user to recall an association before SnapTag offers the answer, preserving agency in everyday memory support.

## Figures

- [snaptag](assets/snaptag.svg): editable source `snaptag.tex`.

## Scientific evidence

Paper pages 138-140. Scenario 1 names Veena Malik, age 62, a homemaker leaving home to visit a neighbor: she tags keys and spectacles and associates them with the doorway. A contextual prompt first shows the tags; tapping reveals the object identity, with an optional camera aid if it is still not located. Scenario 2 names Ramesh Pai, age 68: photographs/color associations connect medicines to the cabinet and time after lunch. The study involved five adults ages 58-70, using interviews, routine mapping and shadowing; prototype feedback reported a sense of accomplishment and acknowledgment of effort.

The person is an illustrative reconstruction of the published scenario character, not a portrait of an actual participant. Sari clothing is an illustrative choice, not a documented study attribute. Only shape cues are retained for the monochrome tag associations. The medicine sequence is schematic and provides no dosing instruction. No measured long-term self-efficacy gain or clinical benefit is claimed. The original prototype and raw participant data are unavailable.

Publication links: https://doi.org/10.1145/2676702.2676719.

## Build and inspect

Requirements: Python 3, TeX/TikZ, Helvetica-compatible fonts, Ghostscript, Poppler
and a sibling research-ops checkout. Quantitative figures additionally require
gnuplot with the cairolatex terminal (tested with gnuplot 6.0.3). `GNUPLOT` can
select a compatible executable.

From the repository root:

```sh
sh figures/abstracts/build.sh
```

The script regenerates the selected SVGs and anti-aliased PNG fallbacks. Generated PDF intermediates, native
gnuplot exports and compiler logs stay in ignored `.local/figures/`; remove that
folder after checking the outputs. The published package retains editable TikZ,
plot scripts/data, required artwork, source evidence and checksums.

Abstracts use a 240 × 180 mm canvas and export at 2400 × 1800 px (4:3), with
960 × 720 px review views during builds. All native labels are 9 pt
Helvetica-compatible. Artwork and native labels remain black on white. PNG fallbacks use anti-aliased
greyscale edges; no one-bit threshold is applied. Original artwork inputs remain intact.
Informational dots, hatches, dash styles and markers encode categories.

Inspect full-size and README-size renders after editing. Check scientific
meaning, units, marker counts, label clearance, padding, legend scope and
bottom-right citations. A faithful replot is not an independent reproduction.
No publisher figures or manuscript PDFs are included, and no new asset reuse
license is asserted. Source data and illustrative content remain distinct.

The built-in image tool edited `artwork-before-edit.png` using the exact
`artwork-prompt.txt`; `artwork-veena.png` is the unmodified 1774 × 887 px output.
The scenario character is illustrative. Earlier generation/refinement prompts
are retained in `prompts/`; historical model and seed settings were unavailable.

## Selected export formats

The project README embeds the anti-aliased PNG with an opaque white background
for visibility in light and dark themes. Clicking the preview opens its SVG. PDF intermediates stay in ignored local storage;
no PDFs are published. Poppler's `pdftocairo` is required for SVG export.

These SVGs combine scalable native labels/connectors with the original embedded
bitmap illustrations. Those illustrations retain their resolution limit; exporting
SVG does not vectorize them.

PNG fallbacks: [snaptag](assets/snaptag.png)

The owner reconfirmed the embedded-PNG illustration version on 26 October 2026.
Tracing, centreline conversion and manual redraw trials were not selected. The
normal build continues to use the original illustration PNGs.
