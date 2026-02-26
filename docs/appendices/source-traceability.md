# Source Traceability Matrix

## Purpose

Map book chapters to the extracted source reports used in synthesis.

## Source Reports

- `report01.pdf`: Data Curation and Provenance Report.
- `report02.pdf`: Data Governance, Onboarding, and Curation Plan.
- `report03.pdf`: Data Management Status Report.

## Chapter Mapping

| Chapter | Main Source | Secondary Source |
|--------|-------------|------------------|
| Purpose and Scope | report02 | report01, report03 |
| Dataset Context and Taxonomy | report02 | report03, report01 |
| Governance and Compliance | report02 | report01 |
| Pipeline Overview | report02 | report01 |
| Ingestion and Validation | report02 | report01 |
| Annotation and Labeling | report01 | report02 |
| Cleaning and Normalization | report01 | report02 |
| QA and Acceptance Gates | report02 | report01 |
| Observability and Metrics | report02 | report03 |
| Release/Versioning/Change Control | report01 | report02 |
| Incident and Exception Handling | report02 | report01 |

## Extracted Artifacts

Structured extraction outputs are available at:

- `source/processed/docling/report01.{md,txt,json}`
- `source/processed/docling/report02.{md,txt,json}`
- `source/processed/docling/report03.{md,txt,json}`
- `source/processed/docling/index.json`
