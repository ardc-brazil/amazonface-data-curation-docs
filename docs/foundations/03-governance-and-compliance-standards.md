# Governance and Compliance Standards

## Governance Objective

Convert isolated or heterogeneous datasets into governed institutional assets with explicit ownership, quality evidence, and publishable metadata.

Governance must operate before, during, and after technical curation. The goal is not only to make files readable, but to ensure that every dataset has accountable ownership, documented interpretation, reproducible processing, controlled access, and a stable public or restricted repository record.

For AmazonFACE, governance is necessary because the datasets are produced by multiple teams and often require scientific interpretation that cannot be inferred from files alone. A timestamp gap may be an instrument failure, a maintenance period, or a real field condition. A spreadsheet column may represent a direct measurement, a derived value, or a temporary field notation. Governance connects the technical file-handling process to the scientific decisions that make curated products trustworthy.

## Core Roles

Roles must be explicit because accountability changes across the lifecycle. The person who understands the science may not be the person who uploads files, and the person who prepares the repository record may not be the person who approves the dataset interpretation. The model below separates these responsibilities so that each gate has the right reviewer.

- Data Mentor: scientific authority, validates dataset scope, naming, gaps, anomalies, access rules, methods, and final publication behavior.
- Data Steward: operational focal point assigned to coordinate transfers, confirm file completeness, and maintain communication between the producing group and the curation team.
- Curation Team: ingestion infrastructure, WebDAV/Data Lake organization, conversion, QC automation, metadata enrichment, publication packaging, and documentation maintenance.
- Repository Operator: DataMap publication, metadata validation, DOI request/registration support, repository record update.
- Project Management: prioritization, milestone tracking, sign-off coordination, and conflict resolution.
- Data User: internal or external consumer who must cite the correct version, respect access conditions, and report issues through defined channels.

## Mandatory Governance Controls

Mandatory controls are the minimum conditions required to prevent untraceable publication. They are not optional documentation preferences. If a dataset does not satisfy a control, it may still be stored, mapped, or described, but it should not be promoted to the next release gate until the issue is resolved or formally recorded as an exception.

- No publication without dataset-level metadata completeness check.
- No quality-controlled release without QC evidence and flags policy.
- No release without documented version/changelog and approval record.
- No Level 00 package without raw provenance, inclusion/exclusion rules, and reproducible packaging script when the package was transformed from a source folder.
- No DataMap record without responsible contacts, usage/access statement, license or restriction, and citation metadata.
- No DOI request before the dataset title, creators, dates, version, license/access conditions, and repository landing page metadata are stable.
- No overwrite of published data without change-control review and versioning decision.

## Standards Baseline

The standards baseline provides a common language for curation. FAIR principles define the overall objective, ARM-style levels and datastream practices define how products are separated, CF and ISO conventions support scientific and geographic interoperability, and DataCite supports repository publication and DOI metadata. Not every dataset will use every standard in the same way, but every dataset must explain which conventions apply.

- FAIR principles for findability/accessibility/interoperability/reusability.
- ARM-style datastream and file-organization practices.
- CF/ISO-aligned metadata conventions where applicable.
- DataCite metadata for DOI-ready publication records.
- ISO 8601 date/time representation for temporal coverage and timestamps.
- Controlled vocabularies for scientific area, product level, access status, data type, and lifecycle state.

## Compliance Artifacts

Required artifact set per dataset:

Compliance artifacts are the evidence that a dataset was curated under the project standard. They should travel with the dataset through internal review, DataMap publication, and future maintenance. When a later curator needs to understand why a file was excluded, why a product is restricted, or which script generated a package, these artifacts provide the answer.

- metadata record,
- processing/QC logs,
- release checklist,
- changelog,
- citation/license statement.
- responsible-contact record,
- data access and embargo decision,
- dataset mapping form,
- DataMap publication checklist,
- DOI registration payload or DOI status note.

## Governance Decision Points

Each decision point corresponds to a moment when technical work could otherwise proceed with an implicit assumption. The purpose of the table is to make those assumptions explicit and to identify who has the authority to approve them. This is especially important for restricted datasets, cumulative files, and data products that may receive a DOI.

| Decision point | Required decision | Approver |
| --- | --- | --- |
| Dataset mapping | dataset boundary, area, lifecycle, responsible group | project coordination and data mentor |
| Initial contact | steward, transfer method, expected files, access sensitivity | data mentor and curation team |
| Priority definition | processing order and target level | project management |
| Initial loading | WebDAV/Data Lake destination and upload procedure | curation team |
| Level 00 acceptance | raw preservation, package structure, README, script, statistics | curation team and data mentor |
| Higher-level processing | `a1`, `b1`, or `c1` target and QC rules | data mentor and curation team |
| Repository publication | DataMap metadata, access policy, license, version | repository operator and project coordination |
| DOI generation | stable release, citation metadata, DOI landing page | repository operator and data mentor |

## Access and Ethical Controls

Some AmazonFACE datasets may include sensitive location context, unpublished research, interviews, forms, or restricted collaboration data. These datasets must be curated even when files cannot be made public immediately. The publication record must clearly distinguish metadata visibility from file access:

Restricted access is not a reason to leave a dataset undocumented. In many cases, the best governance outcome is a public metadata record with restricted files, because it makes the dataset discoverable while respecting ethical, legal, or collaboration constraints. The access model must be documented before DataMap publication and reviewed again before DOI registration.

- Public metadata and public files.
- Public metadata with restricted files.
- Embargoed files with planned release date.
- Internal-only datasets pending governance decision.
- Sensitive qualitative records requiring anonymization or controlled access.

## Source Basis

Synthesized from governance workflow and roles in `report02.pdf`, standards/FAIR metadata guidance in `report01.pdf`, DataMap workflow in `Dec_2025_Data_Report.pdf`, and Level 00 delivery practices in `May_2026_Data_Report.pdf`.
