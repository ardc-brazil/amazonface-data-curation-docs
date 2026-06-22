# Dataset Context and Taxonomy

## Dataset as Datastream Entity

The primary publication unit is the dataset entity (datastream). A datastream must represent a coherent instrument/product boundary and must not mix unrelated instruments in the same published dataset.

In practice, this means that a dataset is not defined only by where files happen to be stored. It is defined by a scientific and operational boundary: a measurement process, instrument class, campaign, sampling design, model run, or derived product that users can understand and cite independently. Treating each dataset as a datastream helps prevent ambiguous publication packages in which unrelated files, methods, or access rules are combined into a single record.

A dataset entity must answer five questions before it enters the pipeline:

- What scientific question or observation process does it represent?
- Which group, responsible researcher, or data mentor owns the scientific interpretation?
- Which acquisition unit defines the raw file boundary: instrument, campaign, plot, tube, trap, form, interview, image collection, or model run?
- Which access policy applies: public, restricted, embargoed, internal, or sensitive?
- Which product level is being delivered first and which levels are expected later?

## Six Scientific Areas

AmazonFACE datasets are managed across six primary areas. These areas support prioritization, reviewer assignment, metadata keywords, repository categories, and cross-dataset discovery.

The areas are governance categories rather than rigid scientific silos. A dataset may be relevant to more than one area, but it should have one primary area for operational ownership. For example, sap flow data may support carbon and water analyses, but the curation focus may be assigned to water if the primary measurement concerns plant water transport. This distinction helps the curation team choose the correct mentor, metadata vocabulary, and quality-control expectations.

| Area | Typical datasets | Curation focus |
| --- | --- | --- |
| Modeling | model inputs, outputs, scenarios, parameter sets, simulation logs | reproducible configuration, software environment, model version, parameter provenance |
| Socio-environmental | interviews, forms, field protocols, contextual records, management observations | consent/access control, anonymization when required, transcription provenance, controlled vocabulary |
| Biodiversity | forest inventory, leaf demography, litterfall, LAI, phenology, liana data, root images | taxonomy harmonization, sampling-unit traceability, image organization, plot/date consistency |
| Water | hydraulic data, sap flow, soil moisture, water table, hydrological campaigns | temporal continuity, sensor calibration, depth/position metadata, unit harmonization |
| Nutrients | litter stock, belowground data, soil and leaf chemistry, nutrient cycling measurements | laboratory method metadata, batch/control records, detection limits, sample identifiers |
| Carbon | micrometeorology, CO2 concentration, soil respiration, photosynthesis, trunk respiration, flux products | high-frequency validation, calibration history, QC flags, aggregation rules |

## Lifecycle States

Lifecycle state determines how the dataset should be curated and maintained. A legacy dataset normally needs a definitive reconstruction of provenance and a stable release package. An active dataset requires recurring ingestion, monitoring, and versioning. A campaign dataset may need embargo handling and careful documentation of sampling conditions. Multimedia and cumulative datasets require additional storage and provenance decisions because the raw acquisition unit is not always a simple file.

- Legacy/Inactive: historical and static datasets that require one-time curation, final documentation, and preserved release history.
- Active: continuously updated datasets with scheduled ingestion, recurrent validation, and periodic release cycles.
- Campaign: bounded acquisition windows requiring one-time or periodic publication, often with embargo/access rules.
- Cumulative: datasets stored as evolving spreadsheets or databases where monthly or event-level snapshots must be materialized for traceability.
- Multimedia: image, video, or audio-heavy datasets where logical size, physical storage, hard links, thumbnails, and derived annotations must be documented.

## Data Product Levels

AmazonFACE curation levels:

The product-level model follows the ARM-inspired principle that raw preservation, calibration, quality control, and value-added derivation should remain distinct. This separation protects provenance and helps users choose the appropriate product for their analysis. A Level 00 package is not a lower-quality version of a dataset; it is the authoritative raw evidence layer from which higher levels can be reproduced.

- Level 00: raw/native files preserved for provenance. This level may reorganize files and add documentation, but it must not alter the scientific content of the original acquisition unit.
- Level a1: calibrated or engineering-unit standardized files. This level applies format conversion, units, calibration coefficients, and structural normalization.
- Level b1: quality-controlled products with QC flags. This level preserves measured values whenever feasible and adds machine-readable QC evidence.
- Level c1: value-added products from fusion, modeling, aggregation, derived indices, or advanced scientific algorithms.

## Format Classes

AmazonFACE datasets appear in several technical forms, and each form has different failure modes. A spreadsheet may hide formulas, merged cells, or multiple sheets. A binary instrument file may require a specific reader. An image collection may have large logical size and duplicate storage risks. Interviews and forms may include access or anonymization constraints. The curation process therefore applies common governance principles while adapting validation checks to the format class.

| Format class | Examples | Required curation controls |
| --- | --- | --- |
| Tabular | CSV, XLSX, TSV, field spreadsheets, cumulative workbooks | encoding, delimiter, sheet inventory, column dictionary, units, missing-value policy |
| Instrument binary/native | datalogger files, proprietary exports, sensor downloads | reader software, vendor/model metadata, checksum, raw preservation, conversion script |
| Images | phenocam, LAI images, root morphology, minirhizotron images | folder hierarchy by date/context, original EXIF when present, logical and physical size, hard-link policy |
| Video/audio | field videos, interviews, observational recordings | consent/access policy, codec/container metadata, transcript linkage, storage volume |
| Interviews/forms | questionnaires, notes, qualitative records | respondent protection, anonymization status, versioned form template, controlled terms |
| Model products | NetCDF, binary arrays, parameter files, logs | model version, run configuration, spatial/temporal grid, input provenance |
| Documentation | README, DataCite JSON, changelog, processing scripts | English text, template compliance, responsible contact, DOI/citation fields |

## Inventory Context (as of Feb 2026)

The mapped master inventory contains 16 datasets with mixed access modes (public/restricted) and mixed lifecycle profiles (legacy/continuous/campaign). Publication maturity differs by dataset, requiring staged onboarding.

This inventory should be understood as a living governance object. It is not only a list of datasets; it is the control point from which the project identifies owners, tracks readiness, defines priorities, and detects gaps. Whenever a dataset changes status, receives a new publication record, or gains a new product level, the inventory must be updated.

## Level 00 Context (as of May 2026)

The May 2026 Level 00 report documents nine curated packages: Litterfall, Root Morphology, Soil Respiration, Sap Flow, Photosynthesis, Litter Stock, Fine Root Images, Leaf Area Index, and Leaf Demography. The curation delivered 4,681 materialized files with 77.17 GB of logical size, including large image collections and heterogeneous tabular/instrument records.

This establishes the first standardized raw layer for major AmazonFACE datasets and must be treated as the baseline for subsequent `a1`, `b1`, and `c1` processing.

The Level 00 work also demonstrates that raw preservation may require careful organization rather than simple copying. Some datasets were naturally represented by a single workbook, while others required date-based, plot-based, tube-based, trap-based, campaign-based, or stratum-based organization. These decisions must remain documented because they define how future processing scripts will locate and interpret raw acquisition units.

## Naming and Structural Principles

Naming and folder structure are part of provenance. A good name tells the user which project, dataset, context, level, date, and original file are being represented. A poor name forces future users to rely on undocumented local knowledge. For this reason, AmazonFACE naming rules prioritize clarity, stability, and reproducibility over short filenames.

- Use standardized naming pattern for publishable datastreams.
- Keep provenance links from raw -> standardized -> published outputs.
- Use stable metadata fields and controlled vocabulary.
- Use `data/[dataset]/00` as the Level 00 package root when preparing deliverables.
- Insert `.raw.` before the original filename in Level 00 materialized files when renaming is required.
- Preserve original acquisition units when they are already the correct raw unit, such as a single campaign workbook.
- Use hard links for large image collections only when the storage environment supports them and the README explains logical versus physical size.

## Source Basis

Primarily synthesized from `report02.pdf` (definitions, levels, lifecycle), `report03.pdf` (inventory status), and `May_2026_Data_Report.pdf` (Level 00 delivered package structure), with naming/compliance reinforcement from `report01.pdf` and `Dec_2025_Data_Report.pdf`.
