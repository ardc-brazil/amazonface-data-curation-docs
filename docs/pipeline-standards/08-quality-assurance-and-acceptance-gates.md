# Quality Assurance and Acceptance Gates

## QA Objective

Define acceptance gates that determine if a dataset can progress from preservation to community-facing publication.

QA is both technical and scientific. A file can be technically readable but scientifically unpublishable if context, ownership, units, calibration, anomalies, or access conditions are unresolved.

Acceptance gates provide a common standard for deciding whether a dataset can move forward. They prevent premature publication and make review expectations clear to data mentors, curators, and repository operators. A gate should not be passed by assumption; it should be passed because there is evidence that the requirement has been satisfied.

## Core QC Principles

For quality-controlled products (especially b1):

The `b1` level is where AmazonFACE quality evidence becomes part of the data product. The goal is not to delete every suspicious value, but to preserve measurements while adding transparent flags and summaries. This allows users to choose how to filter or interpret data while still understanding the original measurement record.

- preserve original values whenever feasible,
- attach QC flags,
- apply range, delta/spike, and missing/invalid checks.
- distinguish automatic flags from mentor-reviewed decisions,
- document thresholds, configuration, and software version,
- store summary reports with the release package.

## Acceptance Gate Sequence

The gate sequence reflects the order in which risk should be reduced. Technical integrity comes first because corrupted or incomplete files cannot support reliable processing. Metadata and QC come next because users need both context and quality evidence. Governance and publication gates ensure that scientific approval, access rules, license, citation, DataMap metadata, and DOI status are all stable before release.

1. Technical integrity gate (files, structure, naming).
2. Metadata gate (required fields and traceability).
3. QC gate (checks executed and evidence stored).
4. Governance gate (mentor and project sign-off).
5. Publication gate (license, citation, repository readiness).
6. DOI gate (stable metadata and release snapshot confirmed).
7. Maintenance gate (update frequency, issue channel, and next review date defined).

## Minimum Deliverables Per Dataset

The minimum deliverables form the release evidence package. They should be stored with the dataset and referenced from DataMap when applicable. If a dataset is restricted, these deliverables are still required; the difference is that file access may be controlled while metadata and governance evidence remain available to authorized reviewers.

- standardized dataset package,
- metadata record,
- QC evidence/logs,
- release note/changelog,
- publication registration information.
- README following the AmazonFACE editorial pattern,
- DataCite JSON payload when publication or DOI generation is expected,
- processing script or workflow definition,
- access and license statement,
- responsible contacts.

## Gate Criteria

Gate criteria make acceptance decisions consistent across datasets. They also help teams diagnose why a dataset is blocked. For example, a package may be technically complete but still fail the publication gate because the creator order, license, or embargo status is unresolved.

| Gate | Pass criteria | Typical failure |
| --- | --- | --- |
| Mapping | dataset boundary, area, owner, and lifecycle known | unclear ownership or mixed instruments |
| Ingestion | files readable, expected inventory received, landing path recorded | incomplete upload, corrupted files, undeclared formats |
| Level 00 | raw package organized, README complete, script reproducible | primary data excluded without rationale |
| Metadata | title, creators, temporal/spatial coverage, methods, access, license, contacts complete | missing creator order, vague description, absent access terms |
| Processing | script produces declared outputs from declared inputs | undocumented manual edits |
| QC | checks executed and documented; flags interpretable | unexplained outliers or missing threshold logic |
| Mentor review | scientific context and known anomalies confirmed | unresolved gap or calibration question |
| DataMap | repository metadata validates and files match package | broken file organization or incomplete DataCite fields |
| DOI | version and landing page stable | expected metadata changes after DOI assignment |

## QC Tests by Data Family

QC tests must reflect the structure and scientific use of the data. Continuous sensors require temporal and calibration checks, manual tabular series require structural and identifier checks, and qualitative or multimedia records require access and interpretation controls. The curation team should document the selected tests and explain why they are appropriate for the dataset.

| Data family | Minimum QA checks |
| --- | --- |
| Continuous sensors | missing records, timestamp continuity, range, delta/spike, calibration period, sensor ID |
| Manual tabular series | row/column consistency, date parsing, duplicate records, controlled missing values, sample IDs |
| Images | count, file openability, dimensions, duplicated images, date/context folder consistency |
| Qualitative data | access restrictions, anonymization state, form version, controlled codebook |
| Model outputs | input references, run configuration, dimensional consistency, parameter completeness |

## Source Basis

Direct synthesis from product-level/QC principles and deliverables in `report02.pdf`, reinforced by QA and release criteria in `report01.pdf`, DataMap/DOI flow from `Dec_2025_Data_Report.pdf`, and Level 00 deliverables from `May_2026_Data_Report.pdf`.
