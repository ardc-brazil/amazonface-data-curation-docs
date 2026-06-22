# Observability and Metrics

## Operational Objective

Track curation throughput, quality, and publication readiness for both active and legacy dataset tracks.

Observability must show whether the AmazonFACE portfolio is moving from mapped data to curated, published, and maintained data products. Metrics should support project coordination, not only technical debugging.

The curation process involves many handoffs: from scientific groups to data stewards, from stewards to the curation team, from curation to repository operators, and from repository review to public or restricted release. Observability gives the project a way to see where datasets are blocked, which areas are underrepresented, and which operational risks require attention.

## Minimum Operational Signals

Operational signals should be collected consistently enough to support decisions, but they do not need to become a heavy reporting burden. The most important requirement is that each dataset has a visible state and a responsible next action. A dataset with no known owner, no upload status, or no DOI status should be treated as an operational risk.

- ingestion trigger execution status,
- integrity validation outcomes,
- naming/metadata standardization events,
- QC gate pass/fail history,
- publication-state transitions.
- responsible-contact status,
- training completion status,
- WebDAV/Data Lake upload status,
- Level 00 package completion,
- DataMap submission status,
- DOI status,
- mentor/PI approval status,
- restricted/embargoed release status.

## Practical Metrics

Metrics should be interpreted together. For example, a high number of mapped datasets is not sufficient if few have completed Level 00 packages. A high number of published records is not sufficient if DOI status, access conditions, or maintenance ownership are unclear. The metrics below are intended to expose both progress and hidden debt.

- backlog by lifecycle state (legacy, active, campaign),
- backlog by scientific area (modeling, socio-environmental, biodiversity, water, nutrients, carbon),
- pass/fail ratio by gate,
- time-to-curation and time-to-publication,
- unresolved exception count,
- number of published datasets by level/access mode.
- number of datasets with complete responsible contacts,
- number of datasets with complete DataCite metadata,
- number of datasets with DOI assigned, pending, or not applicable,
- total logical size by data type, especially large image/video collections,
- number of datasets requiring mentor action.

## Current Program Context

As of February 2026, AmazonFACE has a mapped 16-dataset portfolio with mixed publication maturity and access modes, requiring monitored prioritization.

As of the May 2026 Level 00 report, nine datasets had standardized Level 00 packages, totaling 4,681 materialized files and 77.17 GB of logical size. This should be tracked as the baseline for higher-level processing.

The operational implication is that AmazonFACE now has both a mapped portfolio and a partially curated Level 00 foundation. Observability should therefore shift from simple discovery toward maturity tracking: which mapped datasets still lack raw preservation, which Level 00 datasets are ready for higher-level processing, and which packages are ready for DataMap publication and DOI review.

## Recommended Dashboard Views

Dashboards should be designed for decisions. A curator may need to know which upload failed today, while project coordination may need to know which scientific area has the largest publication backlog. The views below organize the same underlying state data for different audiences.

| View | Purpose |
| --- | --- |
| Portfolio by area | show coverage and backlog across the six scientific areas |
| Pipeline state board | show mapped, contacted, landed, curated, QA accepted, publication-ready, published |
| Dataset risk list | identify missing owners, fragile storage, large files, restricted access, and unclear DOI status |
| Publication tracker | monitor DataMap records, access model, DOI state, and release version |
| Active data operations | monitor scheduled ingestion, latest upload, validation status, and incidents |

## Alert Conditions

Alert conditions define when passive monitoring is not enough. If an alert condition is met, the responsible owner should be assigned and the issue should be tracked until closure. Alerts should not be limited to technical failures; unresolved ownership, missing metadata, and unstable DOI readiness are also operational failures.

- High-priority dataset without responsible contact.
- Upload completed but no validation evidence.
- Level 00 package without README or processing script.
- DataMap submission pending mentor approval for more than the agreed service window.
- DOI requested before metadata stabilization.
- Active dataset ingestion missed expected update window.
- Quarantine folder contains unresolved files.

## Source Basis

Monitoring logic from automated pipeline plan in `report02.pdf`, status baseline from `report03.pdf`, and Level 00 workload statistics from `May_2026_Data_Report.pdf`.
