# Feature 0002: Lab Identity And Template

## Purpose

Define a compact Natural Hazards Remote Sensing Lab identity and slide template for PKU/CUES geoscience talks.

## Source Of Truth

The canonical lab logo is the supplied transparent PNG:

```text
figures/lab-logo/Natural_Hazards_Remote_Sensing_Lab_logo_nhrs_lab_transparent.png
```

Do not use generated `nhrs-lab-*` SVG/PNG candidates. They have been removed.

Official CUES assets live under:

```text
figures/identity/CUES_circle_logo.png
figures/identity/CUES_long_rect_logo.png
figures/identity/CUES_long_rect_logo_transparent_cropped.png
```

## Required Identity Text

```text
Natural Hazards Remote Sensing Lab
NHRS Lab
PKU CUES
```

`PKU CUES` is mandatory in lab-facing slide templates because the affiliation matters.

## Logo Semantics

The canonical logo already combines:

- satellite remote sensing;
- radar/SAR signal arcs;
- mountain/terrain and slope forms;
- natural-hazard deformation cues;
- seismic-wave component for earthquake-related work;
- restrained PKU/CUES red identity.

## Template Contract

The lab slide template must compose the existing public API and avoid duplicate venue/language templates.

Public components:

```text
geo-lab-cover-page
geo-lab-page
geo-lab-agenda-page
geo-lab-focus-page
geo-lab-project-page
geo-lab-group-page
geo-lab-publication-page
geo-lab-summary-page
geo-lab-references-page
geo-lab-end-page
```

The lab template should be appropriate for:

- PKU/internal lab talks;
- group meetings;
- collaborator briefings;
- research summaries using SAR/InSAR, AI remote sensing, GIS, and field/geophysical context.

## Layout Contract

- The lab logo appears at the top right of lab-template pages.
- The rectangular CUES lockup appears at the same top y-position as the lab logo on cover/end pages.
- Middle pages use the rectangular CUES lockup at lower left and a bold gray `01/12`-style slide counter at lower right.
- Only `geo-lab-cover-page` and `geo-lab-end-page` use the photographic PKU background.
- Middle pages use a white, beamer-like academic layout with a compact header rule and no image background.
- The lab end page includes the NHRS QR code asset.

## Example Source Material

The example deck may use paraphrased material from the public lab website:

```text
https://gsprs-pku.github.io/
https://gsprs-pku.github.io/photos/
https://gsprs-pku.github.io/research/
https://gsprs-pku.github.io/publication/
```

The example should include source references instead of presenting crawled website material as unsourced original content.
