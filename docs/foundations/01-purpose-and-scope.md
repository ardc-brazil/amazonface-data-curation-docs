# Purpose and Scope

## Purpose

This book defines the institutional data-curation standard for AmazonFACE datasets, from raw collection to publishable and citable products. It consolidates the curation/provenance report, governance/onboarding plan, current dataset status inventory, December 2025 data-management guidance, and May 2026 Level 00 delivery report into one operational reference.

The main objective is to make AmazonFACE data trustworthy, discoverable, reusable, and auditable. The documentation explains how heterogeneous files produced by different scientific groups are transformed into governed data assets without losing provenance or scientific context.

AmazonFACE data curation must reconcile two requirements that are sometimes in tension. On one side, raw files must remain close to the way they were produced in the field, laboratory, instrument, form, interview, or model environment. On the other side, users need standardized products, clear metadata, quality evidence, and stable repository records. This book defines the bridge between those two requirements by separating raw preservation from later processing levels and by requiring explicit documentation at every transition.

## Scope

The scope is the full data-curation lifecycle. It begins before any file is moved, because a dataset cannot be curated correctly until the responsible people, scientific boundary, access restrictions, and expected data product levels are known. It continues through ingestion, raw preservation, quality control, publication, DOI registration, and long-term maintenance. The workflow is intentionally broader than a file-processing pipeline because AmazonFACE data governance also depends on communication, prioritization, training, approval, and institutional repository practices.

1. Dataset definition and registration.
2. Dataset mapping across scientific areas and data owners.
3. Contact with responsible researchers, confirmation of access constraints, and prioritization.
4. Training for initial data loading and correct use of transfer tools.
5. Ingestion into controlled storage, including WebDAV/Data Lake folders.
6. Integrity checks, raw preservation, and Level 00 packaging.
7. Processing into `a1`, `b1`, and `c1` products when applicable.
8. Metadata creation using FAIR, DataCite, CF, ISO, and ARM-inspired conventions.
9. Publication in USP DataMap, repository validation, and DOI generation.
10. Release governance, versioning, maintenance, and operational monitoring.

## Intended Audience

Different audiences will use this documentation at different moments. Data mentors and stewards use it to understand what context must accompany a dataset. Curators use it to execute reproducible processing and validation. Repository operators use it to prepare DataMap records and DOI-ready metadata. Project coordination uses it to prioritize work, track risks, and approve releases.

- Data mentors (scientific owners of each dataset).
- Curation engineers and data curators.
- Project management and governance reviewers.
- Publication and repository operators.
- Field and laboratory teams responsible for original acquisition.
- External users who need to evaluate dataset provenance and fitness for reuse.

## Book Logic (Linear Flow)

This book is intentionally linear because the curation process itself is staged. A dataset should not move directly from a personal folder to a public repository. It first needs a mapped identity, a responsible owner, a defined acquisition unit, a preserved raw package, a processing history, and a publication decision. The chapters follow that order so that each decision has the context required by the next one.

1. Program foundations: purpose, governance, compliance, dataset taxonomy, scientific areas, product levels, and format classes.
2. Portfolio mapping and onboarding: dataset inventory, responsible-person contact, prioritization, steward training, transfer preparation, and ingestion.
3. Curation pipeline and data products: end-to-end workflow, Level 00 preservation, cleaning, normalization, annotation, QC, and acceptance gates.
4. Storage, publication, and release: WebDAV/Data Lake organization, DataMap publication, DOI readiness, versioning, and change control.
5. Operations and continuous improvement: portfolio observability, incident response, exceptions, and long-term maintenance.

## Guiding Assumptions

The assumptions below define how this documentation should be interpreted. They are especially important for AmazonFACE because the project includes long time series, campaign datasets, image collections, field spreadsheets, sensor outputs, and data that may be restricted or embargoed. A single rigid file rule is not enough; the governance model must support different formats while preserving a common evidence trail.

- AmazonFACE contains many datasets, not a single homogeneous database.
- Data may be tabular, image-based, video-based, interview-based, form-based, binary, semi-structured, or instrument-native.
- The publishable unit is the dataset entity or datastream, not an arbitrary folder.
- Level 00 preservation is mandatory before transformation.
- Higher product levels must be additive: they must document how they were produced from prior levels.
- DataMap is the official publication target for AmazonFACE datasets at USP.
- WebDAV/Data Lake storage is the controlled operational location for staging, archive, processing, and publication-ready packages.

## Source Basis

- `report01.pdf`: provenance, FAIR, metadata, publication and roles.
- `report02.pdf`: governance model, onboarding workflow, levels, automation.
- `report03.pdf`: current inventory/status of mapped datasets.
- `Dec_2025_Data_Report.pdf`: DataMap publication workflow, ingestion, QC, metadata, transformation, publication, maintenance.
- `May_2026_Data_Report.pdf`: Level 00 package structure, standardized READMEs, DataCite payloads, reproducible scripts, and nine curated datasets.
