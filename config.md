# Deck Config

## Setup

- Language: EN
- Venue: PKU/internal
- Objective: conference-style geoscience academic report
- Density: normal
- Domain: geoscience

## Metadata

- Title: General Geoscience Academic Report
- Subtitle: Spec-driven Touying setup with PKU-aware identity
- Author: Researcher Name
- Institution: Peking University
- Date: 2026-04-26

## Sections

1. Background
2. Study Area & Data
3. Method
4. Results
5. Discussion
6. Conclusions

## Assets

- Lab logo: `figures/lab-logo/Natural_Hazards_Remote_Sensing_Lab_logo_nhrs_lab_transparent.png`
- Study area map: `figures/background.png`
- Method figure: `figures/background.png`
- Result figure: `figures/background.png`

The lab logo is a PKU CUES affiliated identity asset. The figure paths are placeholder assets for the scaffold. Replace them with real maps, field photos, remote-sensing products, model diagrams, and result figures for actual talks.

## Notes For AI

- Use `lib/geo-presentation.typ` as the public import.
- Prefer semantic components like `geo-study-area-page` and `geo-result-page`.
- Keep PKU branding restrained.
- Preserve compile checks.
- Do not create separate full templates for every language/venue/objective combination.
