# Release, Versioning, and Change Control

## Release Objective

Publish datasets with reproducible versions, clear ownership, and machine/human-readable documentation.

Release management applies to both Data Lake packages and DataMap repository records. A release is a stable snapshot with known files, known metadata, known access policy, and documented provenance.

Versioning is necessary because AmazonFACE datasets will evolve. Active datasets receive new files, legacy datasets may be corrected after review, and metadata may be improved as repository requirements change. Without a clear version policy, users cannot know whether two analyses used the same data product or whether a DOI refers to the exact files they downloaded.

## Versioning Policy

The versioning policy distinguishes structural changes from smaller corrections. The exact numbering scheme may be implemented in repository metadata, folder names, or changelog records, but the meaning must remain consistent. Users should be able to understand whether a release is compatible with previous analyses or whether it represents a substantially different product.

- MAJOR: structural or compatibility-impacting changes.
- MINOR: non-breaking enrichment/corrections.
- PATCH: localized fixes and documentation corrections.

For Level 00 packages, a new version is required when the raw package membership changes, inclusion/exclusion rules change, a previously omitted primary file is added, or the package structure changes. Documentation-only fixes may be PATCH updates if they do not change the scientific content or access policy.

## Release Readiness Criteria

Release readiness is the moment when the dataset stops being a working package and becomes a stable product. This requires agreement between technical curation, scientific review, and repository publication. If any of the criteria below are still changing, the dataset should remain in a draft or publication-ready state rather than being released.

- Required metadata completed and validated.
- QC behavior executed and documented.
- Licensing and citation defined.
- Repository/publication record prepared.
- WebDAV/Data Lake package path stable.
- README and DataCite JSON synchronized.
- DataMap access model confirmed.
- DOI status defined as assigned, pending, not applicable, or deferred.
- Mentor/PI approval recorded.

## Change-Control Workflow

Change control protects published data from silent modification. Every change should begin with an impact assessment: what changed, why it changed, which files or metadata are affected, whether users need to be notified, and whether a new DOI or version relationship is required.

1. Propose change and impact.
2. Review by curation + mentor.
3. Approve and execute release actions.
4. Record changelog and keep prior versions accessible.
5. Update DataMap metadata and DOI/citation records when affected.
6. Notify relevant users or groups when a published release is superseded.

## Publication Targets

Use trusted repositories with persistent identification and long-term preservation support, aligned with project policy.

For AmazonFACE, USP DataMap is the official publication target. Zenodo or other repositories may be used for complementary preservation of documentation, software, or external-facing artifacts when approved by the project.

When multiple repositories are involved, the documentation must clearly state which record is authoritative for the dataset. Supporting repositories should not create conflicting citations, versions, or access statements.

## Changelog Requirements

The changelog is the human-readable history of the dataset. It should be detailed enough for users to evaluate whether a change affects their analysis. A generic entry such as "updated data" is not acceptable for a curated research product because it does not explain the impact of the update.

Every release must record:

- version,
- date,
- author or curator,
- affected dataset and product level,
- summary of changes,
- reason for change,
- files added/removed/modified,
- metadata changes,
- QC changes,
- DataMap URL and DOI status when applicable.

## DOI Change Rules

DOI decisions require care because persistent identifiers are used in publications, reports, and external systems. A DOI should not point to a moving target unless the repository policy explicitly defines version relationships. When content changes materially, the DataMap record and citation guidance must make the relationship between versions clear.

- A DOI identifies a stable release or repository record according to DataMap policy.
- Do not reuse a DOI to represent incompatible dataset content.
- If a release is superseded, preserve the old landing page or record the relationship in repository metadata.
- Citation guidance must always point users to the correct version.

## Source Basis

Versioning/release criteria from `report01.pdf`, publication/onboarding transition controls from `report02.pdf`, and DOI/DataMap workflow from `Dec_2025_Data_Report.pdf`.
