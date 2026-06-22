# Technical and Operational FAQ

This FAQ answers recurring operational questions that arise during AmazonFACE data mapping, ingestion, curation, storage, and publication. It should be used as a quick reference, while the full protocols remain the authoritative source for implementation details.

## Which report defines onboarding phases?
`report02.pdf` defines the identification, transfer, handshake, and publication phases.

## Which report is the main source for FAIR and metadata standards?
`report01.pdf`.

## Which report reflects current dataset portfolio status?
`report03.pdf` (16 mapped datasets as of February 2026).

## Can different instruments be published in one dataset entity?
No. Datastream boundaries should not mix instrument classes.

## What is the minimum quality expectation for community-facing datasets?
At minimum, standardized products with explicit QC behavior and evidence, following project level model.

## What is the first deliverable for most datasets?
Level 00. It preserves the original acquisition material, organizes the package, documents scope and structure, and provides a reproducible basis for later `a1`, `b1`, and `c1` products.

## Can a restricted dataset still be mapped and published?
Yes. Restricted datasets should still be mapped and documented. DataMap can support records where metadata are discoverable but files are restricted, embargoed, or access-controlled according to project policy.

## Should raw files be renamed before upload?
No. Stewards should upload raw files as received. Renaming or materialization happens during Level 00 curation and must be reproducible.

## Where are files stored before publication?
Files are staged and curated in the WebDAV/Data Lake environment. Logical roles include landing zone, quarantine, raw archive, standard products, derived products, and publication-ready packages.

## What is the role of `process_level00.py`?
It documents and reproduces the Level 00 package construction. It should define inclusion and exclusion rules, directory creation, file materialization or naming, and basic statistics.

## When is DOI generation appropriate?
DOI generation is appropriate only after the release metadata, files, version, access policy, citation, and DataMap landing page are stable and approved.

## How should large image collections be handled?
Organize images by acquisition context such as date, tube, trap, campaign, plot, or stratum. Hard links may be used to avoid unnecessary physical duplication, but the README must explain logical size and storage behavior.

## What happens when a cumulative spreadsheet is the source?
If the spreadsheet represents evolving measurements, the curation team may materialize monthly or event-based snapshots so historical states remain reproducible. If the spreadsheet is the original acquisition unit for a single campaign, it may remain intact.

## Who approves scientific interpretation?
The data mentor approves scientific scope, method descriptions, known anomalies, access rules, and QC behavior. The curation team approves technical reproducibility and repository readiness.
