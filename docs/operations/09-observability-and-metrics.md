# Observability and Metrics

## Operational Objective

Track curation throughput, quality, and publication readiness for both active and legacy dataset tracks.

## Minimum Operational Signals

- ingestion trigger execution status,
- integrity validation outcomes,
- naming/metadata standardization events,
- QC gate pass/fail history,
- publication-state transitions.

## Practical Metrics

- backlog by lifecycle state (legacy, active, campaign),
- pass/fail ratio by gate,
- time-to-curation and time-to-publication,
- unresolved exception count,
- number of published datasets by level/access mode.

## Current Program Context

As of February 2026, AmazonFACE has a mapped 16-dataset portfolio with mixed publication maturity and access modes, requiring monitored prioritization.

## Source Basis

Monitoring logic from automated pipeline plan in `report02.pdf`, status baseline from `report03.pdf`.
