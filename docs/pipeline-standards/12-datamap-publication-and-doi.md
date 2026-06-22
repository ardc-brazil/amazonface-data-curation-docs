# DataMap Publication and DOI Protocol

## Protocol Objective

Define the controlled process for publishing AmazonFACE datasets in the USP DataMap repository and generating persistent identifiers when applicable.

DataMap publication is the point at which an internal curation package becomes an institutional research asset. The repository record must therefore represent the dataset accurately, including its scientific scope, responsible people, access rules, version, file contents, documentation, and citation information. DOI generation should be treated as a commitment to a stable release, not as a routine metadata field.

## Publication Principle

Publication is a curation gate. A dataset must not be published simply because files exist. It must have complete metadata, documented provenance, access rules, versioning, and approval from responsible scientific and repository roles.

This principle applies equally to public and restricted datasets. A restricted dataset can still have a well-curated metadata record and a controlled access mechanism. Conversely, a public dataset should not be released if its metadata, authorship, quality evidence, or access terms are still unstable.

## DataMap Workflow

The DataMap workflow connects curation outputs to repository requirements. It should begin only after the publication package has passed the relevant acceptance gates. If repository validation identifies missing metadata or inconsistent files, the dataset should return to the publication-ready state rather than being patched informally inside the repository.

1. Prepare the publication package from accepted curation outputs.
2. Complete repository metadata using the approved README and DataCite payload.
3. Validate title, creators, contributors, affiliations, abstract, keywords, temporal coverage, spatial coverage, license, access status, and funding.
4. Upload or link files according to repository policy.
5. Submit the DataMap record for internal repository validation.
6. Request or confirm DOI registration when the release is stable and DOI-eligible.
7. Send the landing page and metadata summary to the data mentor or PI for validation.
8. Publish publicly, publish as restricted, or keep metadata-only according to access policy.
9. Record the DataMap URL, DOI, version, publication date, and changelog entry.

## Required Publication Package

The publication package should allow a repository reviewer, data mentor, and future user to understand what is being released. It must include not only files, but also the documentation and machine-readable metadata needed for discovery, citation, and reuse. For higher-level products, it must also include quality evidence and processing references.

- curated data files,
- README in English,
- DataCite JSON metadata payload,
- processing script or workflow reference,
- QC evidence when publishing `b1` or `c1`,
- changelog,
- license/access statement,
- contact information,
- citation recommendation,
- known limitations and usage caveats.

## DOI Readiness Checklist

Do not request DOI generation until the release is stable. A DOI should point to a dataset that can be cited with confidence. If metadata fields, file membership, creator order, access model, or version are still expected to change, the DOI request should wait.

- title is final,
- creator/contributor order is confirmed,
- license or access condition is final,
- version is final,
- temporal and spatial coverage are final,
- repository landing page metadata is complete,
- files or access mechanism are stable,
- mentor/PI has approved the release,
- changelog records the release.

## Access Models in DataMap

Access models should balance openness with legal, ethical, and collaboration constraints. The publication record must make the access condition clear to users. A metadata-only or restricted record is preferable to leaving a dataset invisible when the project cannot yet release the files.

| Access model | Use when |
| --- | --- |
| Public files and metadata | dataset is cleared for open release |
| Public metadata, restricted files | dataset is discoverable but requires permission |
| Embargoed files | dataset will become available after a defined date or project milestone |
| Metadata-only | files cannot be shared yet, but the dataset should be discoverable |
| Internal draft | metadata or package is still being validated |

## Citation Pattern

Each published dataset must include a recommended citation:

The citation should be included in the README, DataMap metadata, and any related documentation. If a dataset has multiple versions, the citation must identify the version being used. If the DOI is pending, users should be given a temporary citation using the DataMap URL and instructed to update the citation when the DOI is assigned.

```text
Creator(s). Year. Dataset title. AmazonFACE / University of Sao Paulo DataMap. Version. DOI.
```

If the DOI is pending, use the DataMap URL and mark DOI status as `pending`; update the citation after DOI assignment.

## Post-Publication Maintenance

Publication does not end the curation lifecycle. Active datasets will receive new data, legacy datasets may receive corrections, and repository metadata may need updates as standards evolve. Maintenance ensures that published datasets remain interpretable, discoverable, and scientifically reliable over time.

- Review metadata periodically.
- Preserve historical versions whenever feasible.
- Record corrections and reprocessing events with clear rationale.
- Notify users through the repository record when a release is superseded.
- Keep contact information current.

## Source Basis

Synthesized from DataMap and DOI workflow in `Dec_2025_Data_Report.pdf`, publication guidance in `report01.pdf`, and DataCite/README practices in `May_2026_Data_Report.pdf`.
