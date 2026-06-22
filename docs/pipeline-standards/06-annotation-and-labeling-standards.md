# Annotation and Labeling Standards

## Scope Note

AmazonFACE reports emphasize dataset curation/QC more than manual annotation protocols. This chapter adapts those principles into a labeling governance baseline.

Annotation is any human or algorithmic enrichment that adds semantic meaning beyond the raw file: species names, root categories, image labels, interview codes, form classifications, QC comments, plot conditions, event markers, maintenance notes, or model-run tags. Annotation must be governed because it can change scientific interpretation.

In AmazonFACE, annotation can be as important as numeric processing. For image datasets, labels may determine which biological structures are counted. For field spreadsheets, corrected species names or plot labels may change downstream analyses. For interviews and forms, thematic codes may define how qualitative material can be reused. For this reason, labels must be versioned and traceable rather than treated as informal edits.

## Labeling Governance Principles

The following principles ensure that labels can be trusted and reviewed. The raw observation must remain available, the label schema must be documented, and any change to interpretation must have an identifiable author and date. This approach allows future users to understand whether a value is an original observation, a corrected value, a QC flag, or an interpreted category.

- Use controlled vocabulary tied to dataset/entity definitions.
- Keep provenance of label revisions and responsible reviewer.
- Prevent silent overwrite of previous semantic decisions.
- Separate raw observations from labels, flags, derived categories, and interpretation notes.
- Store the label schema with version, author, date, and intended use.
- Record whether labels were produced manually, semi-automatically, or automatically.

## Review Model

Annotation review should be proportional to scientific risk. A simple operational tag may only need curation review, while species names, root classes, interview codes, or anomaly decisions may require mentor approval. When disagreements occur, the final decision should be recorded in the label schema or changelog, not resolved silently in the data file.

1. Primary labeling/classification.
2. Secondary review for inconsistencies or scientific ambiguity.
3. Resolution by mentor/curation decision when conflict persists.
4. Schema version update when labels or categories change.
5. Propagation of approved labels into `b1` or `c1` products only after review.

## Minimum Label QA

Minimum QA for labels checks whether the labels are internally consistent, usable, and connected to the original acquisition units. The curation team should verify that every label can be joined back to a file, row, timestamp, image, respondent, sample, or model run without relying on manual interpretation.

- Range/plausibility checks where labels are numeric or ordinal.
- Missing/invalid marker policy.
- Change log for label schema or interpretation updates.
- Inter-annotator or reviewer agreement where repeated manual classification is used.
- Crosswalk between original terms and controlled vocabulary.
- Preservation of original labels when corrected labels are added.

## Format-Specific Annotation Rules

Different datasets require different annotation evidence. Image labels need image identifiers and category dictionaries. Qualitative codes need access and anonymization controls. Sensor event labels need time intervals and reason codes. Model-run labels need configuration references. These requirements should be defined before labels are integrated into `b1` or `c1` products.

| Dataset type | Annotation examples | Required controls |
| --- | --- | --- |
| Images | root class, canopy openness, phenological stage, quality class | label file linked to image ID, annotation software/version, reviewer, category dictionary |
| Interviews/forms | thematic codes, respondent group, location class | anonymization status, consent/access restriction, codebook version |
| Tabular field data | species names, plot treatments, sample condition, event notes | taxonomy reference, controlled missing markers, corrected-value policy |
| Sensor time series | maintenance windows, suspect intervals, QC comments | time interval, reason code, source of decision, link to instrument log |
| Model outputs | scenario name, parameter set, run class | model version, configuration hash, input dataset references |

## Label Storage Pattern

Labels should be stored as sidecar files or additional variables rather than overwriting raw content:

Sidecar storage keeps annotation decisions transparent. The raw data remain unchanged in Level 00, while labels can evolve through reviewed versions. When labels are accepted into a higher-level product, the processing script should state exactly which label version was used.

```text
data/[dataset]/00/                 # raw preserved files
data/[dataset]/annotations/[version]/labels.csv
data/[dataset]/annotations/[version]/codebook.md
data/[dataset]/b1/                 # QC/labels integrated after acceptance
```

The sidecar label file must include stable identifiers that can be joined back to the original acquisition unit.

## Source Basis

Derived from QC, metadata, and governance controls in `report01.pdf` and `report02.pdf`, with image and Level 00 organization cases from `May_2026_Data_Report.pdf`.
