# AmazonFACE Data Curation Digital Book

This digital book is the central reference for AmazonFACE data governance, curation, processing, storage, publication, and long-term maintenance. It is written as an operational and conceptual guide for a multidisciplinary research program in which data are produced by different scientific groups, stored in different formats, and used for different analytical purposes. The documentation therefore treats data curation as a continuous institutional process rather than as a final cleanup activity performed immediately before publication.

## Purpose

The purpose of this book is to make the AmazonFACE data lifecycle explicit and reproducible. Every dataset should be traceable from the moment it is identified in the project portfolio to the moment it is stored in the Data Lake, prepared for DataMap, assigned a DOI when applicable, and maintained through future versions. This requires shared rules for scientific ownership, raw-data preservation, metadata, quality control, access policy, and publication approval.

- Standardize curation procedures across all AmazonFACE scientific groups.
- Define governance controls for ownership, access, prioritization, quality evidence, and release approval.
- Explain the end-to-end pipeline from dataset mapping to WebDAV/Data Lake storage, DataMap publication, and DOI registration.
- Provide auditable operational guidance for day-to-day execution, initial data loading, and recurring updates.

## Scope

This book covers the complete route by which heterogeneous AmazonFACE files become governed research data products. The scope includes technical processing, but it also includes the governance decisions that make the processing scientifically defensible: who is responsible for the data, what the dataset represents, which restrictions apply, what product level is being delivered, which quality checks were executed, and how users should cite the final release.

- The theoretical basis for FAIR, provenance-driven, ARM-inspired data governance.
- The AmazonFACE dataset portfolio across six scientific areas: modeling, socio-environmental data, biodiversity, water, nutrients, and carbon.
- Data product levels `00`, `a1`, `b1`, and `c1`, following ARM-style separation of raw, standardized, quality-controlled, and value-added products.
- Operational protocols for dataset mapping, responsible-person contact, priority definition, training, initial loading, processing, storage, repository publication, DOI generation, versioning, and incident handling.
- Handling rules for heterogeneous formats, including tabular files, images, videos, interviews, forms, binary instrument files, scripts, logs, and metadata payloads.

## Target Audience

The book is intended for people who produce, curate, approve, publish, or reuse AmazonFACE datasets. Some readers will use it as a governance reference, while others will use it as a practical protocol for uploading, validating, processing, or publishing files. For that reason, each chapter combines conceptual explanation with operational requirements.

- AmazonFACE data mentors and scientific dataset owners.
- Data curators, data engineers, and repository operators.
- Field, laboratory, and modeling teams responsible for producing data.
- Project coordination, governance reviewers, and publication approvers.
- External researchers who need to understand curated AmazonFACE data products.

## How to Use This Book

Readers should use the book sequentially when designing or auditing the curation process for a dataset. The documentation is organized around the real lifecycle of AmazonFACE data. It starts with the institutional foundations, then moves to portfolio mapping and onboarding, then to curation and product generation, then to storage and publication, and finally to continuous operations.

1. Start with **Part I - Program Foundations** to understand the purpose, governance model, compliance baseline, dataset taxonomy, scientific areas, product levels, and format classes.
2. Use **Part II - Portfolio Mapping and Onboarding** when a dataset is being identified, prioritized, assigned to responsible people, prepared for steward training, or uploaded for the first time.
3. Use **Part III - Curation Pipeline and Data Products** when transforming accepted raw material into curated Level 00 packages and higher-level `a1`, `b1`, or `c1` products.
4. Use **Part IV - Storage, Publication, and Release** when managing the WebDAV/Data Lake structure, preparing DataMap records, assigning DOI metadata, and controlling release versions.
5. Use **Part V - Operations and Continuous Improvement** to monitor portfolio progress, detect incidents, handle exceptions, and maintain datasets after publication.
6. Consult **Appendices** for glossary, checklists, FAQ, and source traceability.

## Current Program Context

AmazonFACE integrates datasets produced by multiple groups, instruments, campaigns, and operational conditions. Existing reports document a mapped portfolio of 16 datasets as of February 2026 and a Level 00 curation effort covering nine datasets by May 2026. The documentation therefore treats curation as both a governance process and an engineering pipeline: every dataset must have a known owner, explicit scientific scope, preserved raw provenance, documented processing logic, quality evidence, controlled storage location, repository metadata, and release status.

## Documentation Principles

AmazonFACE documentation must be usable by internal teams and external researchers. It must therefore be written in English, avoid hidden assumptions, and preserve enough detail for a future curator to understand how a dataset was produced. The documentation should not simply list files; it should explain the scientific context, acquisition method, processing decisions, quality controls, access conditions, and publication status.

- All documentation content must be written in English.
- Raw data must be preserved before any transformation.
- Dataset boundaries must be explicit and must not mix unrelated instruments or product families.
- Processing must be reproducible through scripts, logs, metadata records, and changelogs.
- Publication is not a final administrative step; it is a controlled curation gate that includes metadata, access conditions, license, citation, and DOI status.

## Story Traceability

- Story 1.1: Storyboard definition
- Story 1.2: MkDocs bootstrap and initial navigation
- Story 1.3: Core chapter content expansion
- Story 1.4: Template upgrade and visual polish
- Story 1.5: Docling extraction and source-based synthesis
