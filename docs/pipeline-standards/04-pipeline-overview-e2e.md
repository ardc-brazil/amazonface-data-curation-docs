# End-to-End Curation Workflow

## Workflow Objective

Move datasets from raw collection to institutionally published products with traceable provenance and repeatable quality behavior.

The end-to-end pipeline is designed to make every transition visible. A dataset should not simply appear in a repository after a sequence of informal exchanges. It should pass through a controlled path in which the project knows who owns the data, where the raw files were received, how the Level 00 package was produced, which processing rules were applied, what quality evidence exists, and which publication decision was made. This makes the dataset usable for scientific analysis and defensible during review or audit.

## Linear Pipeline

The pipeline is presented as a linear sequence, but in practice some steps may iterate. For example, a dataset may return from validation to the data steward if files are incomplete, or it may return from publication review to metadata enrichment if a DataMap field is missing. These iterations are expected, but they must be recorded so that the final release history remains understandable.

1. Portfolio mapping and dataset registration.
2. Responsible-person contact and scientific ownership confirmation.
3. Priority definition by scientific relevance, risk, readiness, and publication need.
4. Training and initial loading preparation for data stewards.
5. Physical ingestion to the WebDAV/Data Lake landing zone.
6. Technical validation, completeness checks, and Level 00 preservation.
7. Curation handshake between mentor, steward, and curation team.
8. Standardization to target product levels (`a1`, `b1`, `c1`) when applicable.
9. QC execution, metadata enrichment, README harmonization, and DataCite payload preparation.
10. Publication package preparation and DataMap submission.
11. Repository validation, DOI generation, PI/mentor approval, and final release.
12. Maintenance, versioning, monitoring, and issue response.

## Pipeline State Model

The state model is the operational language used to track progress. It allows project coordination and the curation team to distinguish between a dataset that is merely known to exist, a dataset that has been uploaded, a dataset that has a validated Level 00 package, and a dataset that is ready for publication. Without this state model, the portfolio can appear more mature than it actually is.

| State | Meaning | Exit criterion |
| --- | --- | --- |
| Mapped | dataset identified in the portfolio | responsible group and preliminary scope recorded |
| Contacted | data mentor/steward contacted | ownership, access status, and next action confirmed |
| Prioritized | dataset ranked for action | target level, deadline, and workstream assigned |
| Training completed | steward trained for upload and metadata | steward can use transfer process and templates |
| Landed | files uploaded to controlled storage | upload inventory and checksum or size evidence recorded |
| Level 00 curated | raw package organized and documented | README, statistics, script, and inclusion/exclusion rules complete |
| Processing | `a1`, `b1`, or `c1` generation underway | reproducible script and processing log available |
| QA accepted | quality gates completed | QC evidence and mentor review complete |
| Publication-ready | DataMap package prepared | metadata, license/access, citation, and DOI payload complete |
| Published | DataMap record released | URL, DOI status, version, and changelog recorded |
| Maintained | dataset under operational monitoring | update schedule and issue channel active |

## Lifecycle Split

Different lifecycle states require different workflows. A legacy dataset can often be curated as a stable historical package, while an active dataset needs repeated ingestion and versioning. Campaign and multimedia datasets usually require more coordination because access rules, storage volume, and interpretation details may not be resolved at the beginning.

- Legacy datasets: one-time curation and publication.
- Active datasets: continuous automated ingestion + periodic releases.
- Campaign datasets: bounded publication cycle with explicit embargo and ownership review.
- Multimedia datasets: Level 00 publication may be the primary deliverable until derived annotations or indices are approved.
- Cumulative datasets: historical snapshots must be materialized so that provenance does not depend only on the latest workbook or database export.

## Core Pipeline Guarantees

The guarantees below are the promises that the pipeline must keep regardless of dataset format. They are more important than any individual tool. If the project changes WebDAV clients, processing software, or repository interfaces, the guarantees should remain unchanged.

- Provenance is preserved across transitions.
- Dataset boundaries (instrument/datastream) are respected.
- Quality decisions are evidence-backed and auditable.
- Data owners are contacted before scientific interpretation is encoded into metadata.
- Every accepted package has a stable storage path, responsible contact, and release state.
- Publication in DataMap includes curated data, metadata, supporting documentation, and DOI status when applicable.

## Default Folder Flow

The operational folder flow in the Data Lake should separate temporary uploads, authoritative raw archive, processed products, and publication packages:

This separation prevents accidental modification of raw files and makes it clear which folder contains temporary uploads, which folder contains accepted preservation copies, and which folder contains products that are safe to publish. If a dataset needs to be reprocessed, the workflow should start from the authoritative archive rather than from a curator's local working copy.

```text
/landing_zone/[steward_or_group]/[dataset]/
/quarantine/[dataset]/
/archive/raw/[dataset]/00/
/archive/standard/[dataset]/a1/
/archive/standard/[dataset]/b1/
/archive/derived/[dataset]/c1/
/publish/[dataset]/[version]/
```

These names are logical defaults. If the WebDAV server uses different physical paths, the mapping must be recorded in the dataset mapping sheet and README.

## Source Basis

Mainly from onboarding/pipeline sections in `report02.pdf`, with provenance structure from `report01.pdf`, DataMap workflow from `Dec_2025_Data_Report.pdf`, and Level 00 packaging details from `May_2026_Data_Report.pdf`.
