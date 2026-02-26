# Dataset Context and Taxonomy

## Dataset as Datastream Entity

The primary publication unit is the dataset entity (datastream). A datastream must represent a coherent instrument/product boundary and must not mix unrelated instruments in the same published dataset.

## Lifecycle States

- Legacy/Inactive: historical and static datasets.
- Active: continuously updated datasets with scheduled ingestion/versioning.
- Campaign: bounded acquisition windows requiring one-time or periodic publication.

## Data Product Levels

AmazonFACE curation levels:

- Level 00: raw/native files preserved for provenance.
- Level a1: calibrated/engineering-unit standardized files.
- Level b1: quality-controlled products with QC flags.
- Level c1: value-added products from fusion/derived processing.

## Inventory Context (as of Feb 2026)

The mapped master inventory contains 16 datasets with mixed access modes (public/restricted) and mixed lifecycle profiles (legacy/continuous/campaign). Publication maturity differs by dataset, requiring staged onboarding.

## Naming and Structural Principles

- Use standardized naming pattern for publishable datastreams.
- Keep provenance links from raw -> standardized -> published outputs.
- Use stable metadata fields and controlled vocabulary.

## Source Basis

Primarily synthesized from `report02.pdf` (definitions, levels, lifecycle) and `report03.pdf` (inventory status), with naming/compliance reinforcement from `report01.pdf`.
