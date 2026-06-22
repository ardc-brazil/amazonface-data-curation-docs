# Responsible Contact and Steward Training Protocol

## Protocol Objective

Create a repeatable protocol for contacting responsible researchers or groups, confirming scientific context, and training stewards for the initial data load into the WebDAV/Data Lake environment.

Contact and training are part of data governance, not auxiliary communication tasks. The curation team cannot reliably interpret a dataset if the responsible group has not confirmed its scope, acquisition context, access restrictions, and known limitations. Likewise, a technically correct storage infrastructure will still fail if stewards do not know how to upload raw files without altering provenance.

## Contact Sequence

The contact sequence should be respectful of scientific ownership while making operational expectations explicit. The curation team should avoid asking for vague "all available data" uploads. Instead, the team should present the mapped dataset record, confirm whether it is correct, and request the specific information needed to begin controlled ingestion.

1. Identify the data mentor and operational data steward.
2. Send the dataset mapping summary for confirmation.
3. Request missing context: temporal coverage, acquisition method, expected file inventory, known gaps, access restrictions, and related documentation.
4. Schedule a diagnostic meeting when the dataset is complex, sensitive, or high priority.
5. Confirm the transfer method and landing folder.
6. Train the steward before the first upload.
7. Record decisions in the dataset mapping sheet and curation log.

## Minimum Contact Message

The initial message should be concise, but it must contain enough context for the responsible group to understand the request. It should make clear that the objective is not to evaluate scientific performance, but to preserve and organize the dataset according to the AmazonFACE governance standard.

- dataset working title,
- reason for contact,
- requested confirmation of ownership,
- list of required metadata fields,
- proposed target level, usually `00`,
- upload method and expected timeline,
- access or embargo question,
- curation team contact channel.

## Diagnostic Meeting Agenda

Use a diagnostic meeting for datasets with heterogeneous formats, unclear ownership, large volume, cumulative files, multimedia content, or sensitive records.

The diagnostic meeting is the main opportunity to capture knowledge that is not visible in the files. This may include maintenance periods, field constraints, instrument replacements, sampling changes, spreadsheet conventions, restricted material, or author expectations. The meeting should result in documented decisions rather than informal notes.

Required agenda:

- dataset purpose and scientific interpretation,
- acquisition unit and raw-data boundary,
- responsible people and author/contributor expectations,
- temporal and spatial coverage,
- field/lab methods and instrument information,
- known gaps, maintenance periods, or anomalies,
- access restrictions and embargo dates,
- Level 00 structure,
- expected higher-level products,
- publication and DOI expectations.

## Training Scope

Training must be practical and short. The steward should be able to complete the first upload without improvising. The purpose is to reduce operational friction while protecting raw-data integrity. A steward who understands the transfer process is less likely to rename files, reorganize folders, omit context files, or upload sensitive material to the wrong location.

| Training item | Required outcome |
| --- | --- |
| WebDAV/RaiDrive connection | steward can connect to the correct server/folder |
| Landing-zone rules | steward knows not to rename, clean, or reorganize raw files before upload |
| Upload completion | steward knows how to signal completion and provide expected inventory |
| Metadata template | steward can fill required context fields |
| Access policy | steward can identify restricted, embargoed, or sensitive files |
| Large-file handling | steward understands image/video transfer and avoids unnecessary duplication |
| Incident reporting | steward knows how to report failed uploads or wrong files |

## Initial Loading Rules

The initial load establishes the raw evidence base for the dataset. The safest rule is to preserve first and curate later. If the steward believes a file is duplicated, irrelevant, or incorrect, that information should be communicated to the curation team instead of being resolved through undocumented deletion or editing before upload.

- Upload raw files as received from instruments, field teams, laboratories, models, forms, or collaborators.
- Do not edit scientific values before Level 00 preservation.
- Do not delete auxiliary context files until the curation team determines whether they are primary data, metadata, or out-of-scope material.
- Keep folder names meaningful when they encode field context.
- Send expected coverage and known missing periods immediately after upload.
- Use a separate upload batch for each dataset entity when possible.

## Steward Handoff Checklist

The handoff checklist marks the transition from the producing group to the curation team. It should be completed after upload and before validation. If any item is missing, the curation team can still inspect the files, but the dataset should not be considered ready for acceptance until the missing context is resolved or recorded as an exception.

- Transfer tool configured.
- Landing path confirmed.
- Expected file count or folder count provided.
- Temporal coverage provided.
- Access status provided.
- Known anomalies listed.
- Related scripts, forms, calibration files, or codebooks identified.
- Completion notification sent to curation team.

## Source Basis

Synthesized from onboarding requirements in `report02.pdf`, ingestion guidance in `Dec_2025_Data_Report.pdf`, and Level 00 reproducibility practices in `May_2026_Data_Report.pdf`.
