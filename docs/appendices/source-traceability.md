# Source Traceability Matrix

## Purpose

Map book chapters to the extracted source reports used in synthesis.

Traceability is important because this documentation combines existing reports, extracted reference material, and additional operational synthesis. The matrix below shows which source informed each chapter and helps future editors understand where to look when a protocol needs to be revised.

## Source Reports

- `report01.pdf`: Data Curation and Provenance Report.
- `report02.pdf`: Data Governance, Onboarding, and Curation Plan.
- `report03.pdf`: Data Management Status Report.
- `Dec_2025_Data_Report.pdf`: Section 8 data management and curation workflow, DataMap publication flow, DOI registration, and maintenance.
- `May_2026_Data_Report.pdf`: Section 8 data management, governance, curation team, Level 00 standard, curated dataset statistics, README/DataCite/script conventions.

## Chapter Mapping

| Chapter | Main Source | Secondary Source |
|--------|-------------|------------------|
| **Part I - Program Foundations** |  |  |
| Purpose and Scope | report02 | report01, report03, Dec 2025, May 2026 |
| Governance and Compliance | report02 | report01, Dec 2025, May 2026 |
| Dataset Context and Taxonomy | report02, May 2026 | report03, report01 |
| **Part II - Portfolio Mapping and Onboarding** |  |  |
| Portfolio Mapping and Prioritization | report03 | report02, May 2026 |
| Responsible Contact and Steward Training | report02 | Dec 2025, May 2026 |
| Ingestion and Validation | report02, Dec 2025 | report01, May 2026 |
| **Part III - Curation Pipeline and Data Products** |  |  |
| End-to-End Curation Workflow | report02 | report01, Dec 2025, May 2026 |
| Cleaning and Normalization | report01, May 2026 | report02 |
| Annotation and Labeling | report01 | report02, May 2026 |
| QA and Acceptance Gates | report02 | report01, Dec 2025, May 2026 |
| **Part IV - Storage, Publication, and Release** |  |  |
| WebDAV and Data Lake Storage | report01, report02 | May 2026 |
| DataMap Publication and DOI | Dec 2025 | report01, May 2026 |
| Release/Versioning/Change Control | report01 | report02, Dec 2025 |
| **Part V - Operations and Continuous Improvement** |  |  |
| Observability and Metrics | report02, May 2026 | report03 |
| Incident and Exception Handling | report02 | report01, Dec 2025, May 2026 |

## Extracted Artifacts

Structured extraction outputs are available at:

- `source/processed/docling/report01.{md,txt,json}`
- `source/processed/docling/report02.{md,txt,json}`
- `source/processed/docling/report03.{md,txt,json}`
- `source/processed/docling/dec_2025_data_report.{md,txt}`
- `source/processed/docling/may_2026_data_report.{md,txt}`
- `source/processed/docling/index.json`

## Current Synthesis Notes

- The six scientific areas are a governance taxonomy for this documentation and should be refined if AmazonFACE coordination adopts different official area names.
- The Level 00 package standard is derived from the May 2026 report and should be treated as the current baseline for raw-data delivery.
- DataMap publication and DOI flow are derived from the December 2025 report and should be updated if repository policy changes.
- WebDAV/Data Lake folder names are logical defaults unless the operational server path is explicitly different.
