# Glossary

This glossary defines terms as they are used in the AmazonFACE data-curation documentation. Some terms have broader meanings in research data management, but the definitions below focus on the operational meaning required for AmazonFACE governance, curation, storage, and publication.

- **Dataset Entity (Datastream):** Primary publishable unit with a coherent instrument/product boundary.
- **Data Lake:** Controlled storage environment used for landing, archive, processing, derived products, publication packages, logs, and metadata.
- **DataMap:** USP repository platform used as the official publication target for AmazonFACE datasets.
- **Data Mentor:** Scientific authority responsible for interpretation, methods, anomalies, access rules, and approval.
- **Data Steward:** Operational contact responsible for coordinating data transfer and providing acquisition context.
- **DataCite:** Metadata schema commonly used for DOI registration and repository publication.
- **Legacy Dataset:** Historical/static dataset without continuous updates.
- **Active Dataset:** Continuously updated dataset with recurring ingestion/versioning.
- **Campaign Dataset:** Dataset collected during a bounded field, laboratory, or instrument campaign.
- **Cumulative Dataset:** Dataset maintained as an evolving file or table where historical states must be materialized or versioned.
- **Multimedia Dataset:** Dataset dominated by images, video, audio, or other high-volume media files.
- **Level 00:** Raw/native preserved data for provenance.
- **Level a1:** Standardized calibrated/engineering-unit product.
- **Level b1:** Quality-controlled product with QC flags.
- **Level c1:** Value-added derived product.
- **Curation Handshake:** Joint mentor-curation validation of scope, naming, and readiness.
- **Landing Zone:** Temporary controlled upload location used before validation and archive promotion.
- **Quarantine:** Isolated location for files with corruption, scope, access, or format issues.
- **QC Flag:** Machine-readable marker indicating quality-check outcomes.
- **Publication Gate:** Final release checkpoint including metadata, license, citation, and repository readiness.
- **DOI:** Digital Object Identifier assigned to a stable repository record or release when applicable.
- **Hard Link:** Filesystem link that allows large files to appear in a curated package without duplicating physical data blocks.
- **Logical Size:** Sum of file sizes visible in a package, which may exceed physical disk usage when hard links are used.
- **Acquisition Unit:** The smallest raw unit that should be preserved, such as a file, workbook, image, tube/date folder, trap/date folder, instrument export, form, or model run.
- **Embargo:** Time-bounded restriction that delays public access to files or data.
- **Metadata-Only Publication:** Repository record that describes a dataset while file access remains restricted or deferred.
