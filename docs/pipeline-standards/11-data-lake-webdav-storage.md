# WebDAV and Data Lake Storage Protocol

## Protocol Objective

Define how AmazonFACE data are stored, staged, processed, and prepared for publication in the controlled WebDAV/Data Lake environment.

Storage is part of curation because folder structure determines how future curators and users understand provenance. The WebDAV/Data Lake environment should not behave as an unstructured shared drive. It must separate temporary uploads from accepted archives, raw files from processed products, and internal working material from publication-ready packages.

## Storage Principles

The principles below protect both scientific integrity and operational reliability. Raw files must remain preserved, but they also need enough organization to be discoverable and usable. Processed products must be generated from authoritative inputs rather than from local copies. Publication packages must represent stable releases rather than temporary working folders.

- Separate landing, quarantine, archive, standard products, derived products, and publication packages.
- Preserve Level 00 raw data before transformation.
- Keep storage paths stable and documented in the dataset README.
- Avoid manual edits in authoritative archive folders.
- Record logical size, physical storage considerations, and hard-link usage where relevant.
- Maintain enough structure for both human navigation and automated processing.

## Logical Folder Model

The folder model is a logical reference architecture. The actual WebDAV server may implement different physical paths, but each dataset should still have equivalent locations for landing, quarantine, raw archive, standard products, derived products, publication packages, logs, and metadata. If local names differ, the README or mapping sheet must explain the correspondence.

```text
/landing_zone/[group_or_steward]/[dataset]/
/quarantine/[dataset]/[date]/
/archive/raw/[dataset]/00/
/archive/standard/[dataset]/a1/
/archive/standard/[dataset]/b1/
/archive/derived/[dataset]/c1/
/publish/[dataset]/[version]/
/logs/[dataset]/
/metadata/[dataset]/
```

If the operational WebDAV server uses different names, the dataset documentation must include the actual path and the logical role.

## Level 00 Package Structure

The May 2026 delivery standard uses:

This structure gives every raw package the same basic shape. The `data/[dataset]/00` folder contains the preserved raw acquisition material, while the README, DataCite payload, and processing script explain how the package was created and how it should be cited or reused. The structure is simple enough for repository submission and explicit enough for reproducibility.

```text
data/[dataset]/00/
README.md
process_level00.py
datacite.json
```

Inside `data/[dataset]/00`, files may be partitioned by date, month, plot, stratum, tube, trap, campaign, or other scientifically meaningful acquisition context.

## Naming Pattern

For Level 00 materialized files, preserve the original filename while making project context explicit:

The naming pattern should add context without destroying the original filename. The `.raw.` marker is especially important because it communicates that the scientific content has not been processed into a higher-level product. If the original filename already carries useful instrument or field context, it should remain visible after the standardized prefix.

```text
[project].[dataset].[context].00.[YYYYMMDD].raw.[original_filename].[ext]
```

The `.raw.` marker indicates that the scientific content is the original acquisition material. If a single workbook or file is already the original acquisition unit, additional partitioning is not required.

## Storage Handling by Format

Different file types create different storage risks. Tabular files are usually small but may contain hidden spreadsheet complexity. Images and videos can dominate storage volume. Binary instrument files can become unusable without reader documentation. Qualitative materials may require restricted access even when metadata can be published. The storage rule should therefore be selected by data type rather than applied mechanically to every dataset.

| Data type | Storage rule |
| --- | --- |
| Tabular files | keep original files in `00`; normalized CSV/NetCDF outputs go to `a1` or higher |
| Cumulative spreadsheets | materialize temporal snapshots when required to preserve history |
| Images | organize by date and acquisition context; use hard links only when documented |
| Video/audio | store original container files; keep transcripts or derived assets separate |
| Forms/interviews | restrict access when required and store anonymized derivatives separately |
| Binary instrument data | preserve native files and store reader/conversion documentation |
| Model products | store run configuration, inputs, outputs, logs, and software version together |

## Promotion Rules

Promotion is the controlled movement from one storage role to another. A file should not be promoted from landing to archive simply because it exists on the server. It should be promoted because validation has shown that it belongs to the dataset, is technically readable, and does not violate access or scope rules. The same principle applies when archive products are promoted into publication packages.

- Files move from landing to archive only after validation.
- Files move to quarantine when corruption, wrong scope, access risk, or format ambiguity is detected.
- Processed products are generated from archived inputs, not from ad hoc local copies.
- Publication packages are built from accepted archive/standard/derived products.
- Published packages must not be silently overwritten.

## Backup and Integrity

Backup and integrity checks ensure that curated data remain available beyond the immediate project cycle. Large and heterogeneous datasets are vulnerable to silent corruption, accidental deletion, incomplete transfers, and duplicated storage. The curation team should record enough evidence to detect and recover from these problems.

Minimum operational controls:

- file count and logical size record,
- checksum or equivalent transfer-integrity evidence when feasible,
- periodic archive verification,
- preservation of historical release packages,
- documented recovery procedure for missing or corrupted files.

## Source Basis

Synthesized from storage and provenance guidance in `report01.pdf`, pipeline storage steps in `report02.pdf`, and large-image/Level 00 package decisions in `May_2026_Data_Report.pdf`.
