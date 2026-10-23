# SnapTag graphical abstract

This figure explains the belongings scenario from Baadkar, Singh, Saraf and
Bagalkot, India HCI 2014, [doi:10.1145/2676702.2676719](https://doi.org/10.1145/2676702.2676719).
The Tag/Recall/Find illustrations on page 139 and scenario on page 140 informed
the visual. The central idea is to prompt situated recall before revealing an
answer; identification and camera help are optional fallback interactions.

The person, objects and screens are conceptual illustrations, not participant
portraits or original app screenshots. Circle and triangle cues identify keys
and spectacles consistently. This scenario uses two of the paper's five tag cues;
shapes substitute for colour in this monochrome figure. No clinical efficacy,
deployment or automatic real-time tracking result is claimed.

## Authoring files

- `snaptag.tex`: editable labels, symbols, screen content and transitions.
- `artwork-original.png`: accepted label-free artwork, 1774 × 887 pixels.
- `artwork-generated.png`: recovered host-tool output with the same grayscale
  pixels as `artwork-original.png`, retaining the tool's original metadata.
- `prompts/`: recovered initial/refinement prompts and the exact two upscale
  prompts used on 2026-10-24.
- `iterations/00-historical-draft.png`: recovered earlier plate, with angled
  tables and a plant, superseded by the accepted orthographic composition.
- `iterations/01-upscale-attempt.png` and `02-upscale-retry.png`: unsuccessful
  upscale attempts. Both returned 1774 × 887 pixels and were not selected.
- `provenance.json`: sources, generation limitations, decisions and file hashes.
- `../../assets/snaptag.pdf` and `.png`: final composite exports.

All available SnapTag authoring records identified for this plate are retained
here. Historical model names, seeds, invocation settings and any unlocated
earlier trials remain unknown. The historical draft's association with the
initial prompt is inferred from its contents and chronology, not a recovered
invocation log. Prompts do not guarantee identical image regeneration.

The historical generation prompt used the approved ReRide plate for style and
SnapTag paper figures for scientific content. These reference images are not
bundled here: the publication figures are not cleared for redistribution in this
repository, and the exact historical reference attachments were not recovered.
The DOI and page references identify the source; rendering the accepted figure
does not require those references or an image-generation account.

## Build the accepted figure

Install a TeX distribution with TikZ, standalone and Helvetica-compatible fonts,
plus Ghostscript and Poppler. With a sibling `research-ops` checkout, run from
the SnapTag repository root:

```sh
python3 -I ../research-ops/.agents/skills/tikz-graphical-abstracts/scripts/render.py \
  figures/snaptag/snaptag.tex --width 4400 --out-dir assets \
  --build-dir .local/figure-build
```

The renderer checks one embedded black native font at 9 pt and page bounds,
exports a grayscale PDF with losslessly compressed raster artwork, and produces
a 4400-pixel-wide PNG plus a local 900-pixel review image. Build logs and temporary
files remain under ignored `.local/`; the source and selected outputs belong in Git.
The renderer is maintained centrally in `research-ops`; no local copy is vendored.

The 2026-10-24 revision keeps the original illustration at the owner's request
after two unsuccessful image-tool upscales. Its native resolution is unchanged.
The larger export improves native labels and geometry, while lossless PDF
compression avoids adding JPEG artifacts. The PDF is a raster/vector composite,
not fully vector artwork. Review full-size and README-size exports after edits,
especially tag registration, phone screens, arrow endpoints and object counts.

When generated inputs or exports change, update the hashes in `provenance.json`
and the corresponding artifact reviews in `../../release-manifest.json` after
inspection. PDF timestamps may change the file hash on rebuild.
