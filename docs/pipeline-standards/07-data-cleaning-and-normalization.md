# Data Cleaning and Normalization

## Objective

Standardize heterogeneous source data into reproducible publishable products while preserving raw provenance.

Cleaning is never applied directly to the only copy of a raw file. The Level 00 package remains the immutable evidence layer. Cleaning and normalization produce new product levels with scripts, logs, metadata, and quality evidence.

This distinction is central to the AmazonFACE curation model. Many source files contain irregularities that are meaningful for provenance: original sheet names, instrument headers, field notes, cumulative rows, missing periods, or vendor-specific encodings. Cleaning should make the data easier to analyze, but it must not erase the evidence needed to understand how the cleaned product was created.

## Required Cleaning Actions

Cleaning actions should be explicit and reproducible. A curator should be able to rerun the processing script and obtain the same standardized product from the same Level 00 inputs. When manual decisions are necessary, they should be moved into configuration files, correction tables, or documented mentor decisions rather than applied directly in an undocumented spreadsheet.

- Resolve malformed or inconsistent field encodings.
- Harmonize units and value domains to target product-level rules.
- Flag missing/invalid values instead of destructive deletion.
- Preserve original values when corrected values are added.
- Document all excluded files, rows, sheets, variables, or supplementary materials.
- Convert proprietary or fragile representations to sustainable formats when needed.
- Materialize cumulative data into reproducible temporal snapshots when relying on the latest file would hide history.

## Normalization Targets

Normalization creates consistency across datasets so that AmazonFACE products can be discovered, compared, and reused. This includes technical normalization, such as file formats and variable names, and semantic normalization, such as common identifiers for plots, rings, traps, depths, strata, and measurement units. The goal is not to hide dataset-specific methods, but to express them in a consistent structure.

- File organization and naming conventions.
- Metadata structure aligned to standard fields.
- Machine-readable dataset descriptors for publication workflows.
- Consistent variable names, units, dimensions, and time zones.
- Consistent spatial identifiers: ring, plot, tower, tube, trap, stratum, depth, or coordinate.
- README sections using the common editorial pattern.
- DataCite JSON payloads for repository submission and DOI readiness.

## Provenance Rule

Level 00 raw data remains preserved; transformations into a1/b1/c1 are additive and documented.

Each higher level must maintain a clear relationship to its inputs. Users should be able to identify which raw files contributed to a standardized product, which calibration or transformation rules were applied, and which software version generated the result. This is especially important when derived products are used in publications or receive independent repository records.

## Level-Specific Processing

The table below describes the practical meaning of each product level. These levels should not be treated as purely technical labels; they communicate the maturity and intended use of the dataset. A Level 00 package supports provenance and future processing, while `b1` and `c1` products are more suitable for scientific reuse when their quality evidence is complete.

| Level | Processing allowed | Processing not allowed |
| --- | --- | --- |
| `00` | organize, inventory, document, preserve original acquisition units, add `.raw.` suffix when materializing files | edit scientific values, aggregate, correct units, remove primary data silently |
| `a1` | convert format, apply calibration, harmonize units, standardize variable names | hide raw-to-standard mapping or overwrite Level 00 |
| `b1` | add QC flags, plausibility checks, spike/delta checks, cross-sensor diagnostics, gap indicators | delete flagged values without traceability |
| `c1` | derive indices, aggregate, model, fuse datasets, calculate value-added products | publish derived products without input references and algorithm documentation |

## Recommended Processing Artifacts

Each dataset should include a reproducible script when any package structure is generated from source material. For Level 00 packages, the May 2026 standard uses:

These artifacts make curation repeatable. The README explains the package to humans, the DataCite payload supports repository publication and DOI readiness, and the processing script exposes the exact inclusion, exclusion, renaming, and organization rules used to construct the package.

```text
process_level00.py
README.md
datacite.json
data/[dataset]/00/
```

The script must define inclusion and exclusion criteria, create or validate the directory structure, preserve the naming convention, and calculate package statistics. For higher levels, use analogous scripts such as `process_a1.py`, `process_b1.py`, or workflow files that clearly expose inputs, outputs, and parameters.

## Cleaning Decisions Requiring Mentor Review

Some cleaning decisions change scientific interpretation and therefore require mentor review. The curation team can identify technical inconsistencies, but it should not independently decide whether an unexpected value is a real ecological signal, an instrument error, or a field-note convention unless the rule has already been approved.

- Changing units or applying calibration coefficients.
- Correcting species names, sample IDs, plot identifiers, or instrument identifiers.
- Excluding files that appear to contain primary measurements.
- Imputing missing values.
- Aggregating high-frequency data into daily/monthly products.
- Interpreting anomalous periods as instrument failures versus real environmental events.

## Source Basis

Synthesized from curation workflow, file-format standardization, metadata generation, and level model in `report01.pdf` and `report02.pdf`, with Level 00 reproducibility practices from `May_2026_Data_Report.pdf`.
