# Ingestion and Validation

## Ingestion Goal

Securely transfer source files into governance infrastructure and validate technical readiness before curation.

Ingestion is the first technical control point. Its purpose is not to clean or reinterpret the dataset, but to preserve the original acquisition material, prove that the transfer is complete, and prevent ambiguous files from entering downstream processing.

Because AmazonFACE data are produced in field, laboratory, sensor, modeling, and qualitative research contexts, ingestion must be conservative. The curation team should assume that filenames, folders, timestamps, and auxiliary files may contain provenance information. Any decision to exclude, rename, split, or reorganize material must therefore happen after the received inventory is frozen and the rationale is documented.

## Onboarding Phases (Ingestion-Focused)

The ingestion-focused onboarding phases define the minimum path from dataset identification to a controlled raw package. They are intentionally staged so that files are not uploaded before the project has enough metadata to interpret them, and raw files are not promoted to archive before the curation team has confirmed that the transfer is complete and technically valid.

- Phase 1: dataset identification + submit minimum contextual metadata.
- Phase 2: physical transfer into landing zone/quarantine/archive workflow.
- Phase 3: joint handshake to approve boundaries, naming, and gaps.
- Phase 4: Level 00 package generation and validation.
- Phase 5: Data Lake archive promotion and publication-package preparation.

## Pre-Ingestion Requirements

Before a dataset is uploaded, the curation team must have enough information to recognize whether the upload is complete and whether it belongs to the expected dataset boundary. These requirements also reduce unnecessary back-and-forth with the responsible group after transfer.

- dataset name or working title,
- responsible data mentor and operational data steward,
- scientific area and lifecycle state,
- expected data type and file formats,
- expected temporal coverage,
- expected folder/file count when known,
- access status and embargo restrictions,
- target first product level, usually `00`,
- agreed WebDAV/Data Lake destination.

## Transfer Protocol

The transfer protocol protects raw provenance. Data stewards should not attempt to make the dataset "clean" before uploading it, because that can remove evidence needed for curation. The correct behavior is to upload the original material, describe what it contains, and let the curation workflow create controlled packages and derived products.

1. The data steward receives training on the approved transfer tool, such as RaiDrive or another WebDAV-compatible client.
2. The curation team creates or confirms the dataset landing folder.
3. The steward uploads raw files without manual renaming, editing, deduplication, or cleanup unless explicitly instructed.
4. The steward notifies the curation team when the upload is complete and provides the expected scope: periods, plots, instruments, campaigns, and known missing material.
5. The curation team freezes the received inventory for validation.

For large image and video collections, the steward must avoid copy operations that alter timestamps or duplicate files unnecessarily. If hard links are later used inside the curated package, the README must distinguish logical size from physical disk consumption.

## Validation Layers

Validation combines technical checks and contextual checks. Technical validation answers whether files can be read and whether they match the declared format. Contextual validation answers whether the files match the expected acquisition period, instrument, campaign, plot, tube, trap, stratum, or model run. Both are necessary before the dataset can be accepted into the curation pipeline.

- Integrity checks: file readability, corruption detection, completeness.
- Structural checks: expected organization and format compatibility.
- Naming checks: standard pattern compliance.
- Metadata checks: minimum required fields and ownership information.
- Temporal checks: start/end coverage, timestamp continuity, and declared sampling frequency.
- Context checks: plot, ring, tube, trap, stratum, sensor, campaign, or model-run identifiers.
- Access checks: public/restricted/embargoed status and sensitivity review.

## Validation by Format

The validation strategy must adapt to the data format. A NetCDF file can be checked for dimensions and attributes, while an interview transcript requires access and anonymization review. The goal is not to force every dataset into the same technical mold, but to ensure that each dataset receives the checks needed for its format and scientific use.

| Format | Required checks |
| --- | --- |
| CSV/TSV | encoding, delimiter, row count, header structure, date columns, missing-value markers |
| XLSX | sheet inventory, visible/hidden sheets, formulas versus values, merged cells, metadata sheets |
| NetCDF/HDF5 | openability, dimensions, variables, global attributes, units, CF conventions where applicable |
| Instrument binary/native | reader availability, instrument model, file signature, acquisition timestamp, conversion path |
| Images | file count, dimensions, EXIF/date metadata, naming context, duplicate detection, folder hierarchy |
| Video/audio | codec/container readability, duration, file size, access sensitivity, transcript linkage if present |
| Interviews/forms | consent/access status, anonymization need, form version, respondent identifiers handling |

## Outcomes

Every ingestion event must end with a clear decision. Ambiguous states create operational risk because teams may assume that data are ready when they are still missing metadata, incomplete, or restricted. The outcome should be recorded in the curation log together with the reason and the owner of the next action.

- Accepted for curation pipeline.
- Returned for correction with reason and owner.
- Deferred pending mentor/governance clarification.
- Quarantined pending corruption, malware, format, or access investigation.
- Accepted as restricted metadata-only publication candidate.

## Evidence to Record

Every ingestion event must produce a short evidence record. This record is the first formal proof that the dataset entered the controlled environment and that the curation team assessed its technical readiness. It should be brief, but complete enough to support later audits or troubleshooting.

- upload date and responsible steward,
- landing path,
- validation date and validator,
- file count and logical size,
- checksum method when used,
- failures or exclusions,
- next state in the pipeline.

## Source Basis

Directly synthesized from onboarding and automated pipeline steps in `report02.pdf`, supported by storage/provenance sections of `report01.pdf`, ingestion guidance from `Dec_2025_Data_Report.pdf`, and Level 00 package decisions from `May_2026_Data_Report.pdf`.
