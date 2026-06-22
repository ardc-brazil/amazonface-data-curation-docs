# Incident Response and Exception Handling

## Objective

Provide a controlled response when ingestion, QC, metadata completeness, or publication steps fail.

Incidents must be handled as governance records, not informal messages. Every unresolved issue must have an owner, impact statement, next action, and closure condition.

In a heterogeneous research program, exceptions are inevitable. Files may arrive incomplete, metadata may be missing, a sensor may have failed, a restricted file may be mixed with public material, or a DOI request may reveal unstable publication metadata. The important requirement is that these issues are visible and controlled rather than hidden inside personal communication or undocumented folder changes.

## Typical Incident Classes

Incident classes help the team recognize problems consistently. Some incidents are purely technical, such as a corrupted file. Others are scientific or governance issues, such as unclear ownership, unresolved access restrictions, or missing calibration context. Both types can block publication and must be treated with the same discipline.

- ingestion transfer/integrity failures,
- naming or structural non-compliance,
- QC anomalies above acceptable thresholds,
- unresolved ownership/metadata conflicts,
- publication blocking issues (license, citation, repository constraints).
- WebDAV/Data Lake permission or upload failures,
- files in the wrong dataset boundary,
- accidental modification or deletion of raw files,
- sensitive files uploaded to an unrestricted location,
- DataMap validation errors,
- DOI metadata inconsistencies,
- large image/video storage duplication or broken hard links,
- incomplete cumulative-file materialization.

## Response Workflow

The response workflow should be followed even for small incidents, with the level of documentation adjusted to severity. The goal is to prevent the same problem from reappearing and to ensure that the dataset does not continue through the pipeline with unresolved risk.

1. Detect and register incident.
2. Assign owner (curation, mentor, or coordination).
3. Contain impact and prevent propagation.
4. Correct root cause and re-run failed gate(s).
5. Close with evidence and changelog note when needed.
6. Update publication metadata or notify users if a published dataset was affected.

## Exception Handling

If immediate compliance is not possible, create a time-bounded exception with explicit approver, scope, risk statement, and closure condition.

Exceptions are acceptable only when the dataset risk is understood and documented. They must not become permanent undocumented deviations.

For example, a dataset may be published as metadata-only while file access remains restricted, or a Level 00 package may be accepted before `b1` processing is ready. These are valid exceptions when they are deliberate and documented. They are not valid if they are simply the result of missing follow-up.

## Incident Severity

Severity determines response urgency and review level. A critical incident may require immediate containment and repository action, while a low-severity issue may be resolved through a documentation correction. Severity should be assigned based on impact to data integrity, access risk, publication reliability, and scientific interpretation.

| Severity | Definition | Example |
| --- | --- | --- |
| Critical | published or unrestricted data may be scientifically wrong, corrupted, or improperly exposed | restricted interview files made public |
| High | dataset cannot progress through a required gate | missing owner for high-priority dataset |
| Medium | curation can continue but with documented limitation | incomplete metadata for noncritical optional field |
| Low | minor documentation or operational issue | typo in README contact section |

## Required Incident Record

The incident record should be short but complete. It must allow someone outside the original conversation to understand what happened, which dataset was affected, who owns the next action, and what evidence proves closure.

- incident identifier,
- dataset and product level,
- detected date,
- detector,
- severity,
- description,
- affected files or metadata fields,
- immediate containment,
- owner,
- required mentor or repository decision,
- closure evidence,
- changelog or release impact.

## Common Exception Types

The exception types below are common in AmazonFACE curation because datasets vary in format, maturity, and access status. Each exception must have a review date or closure condition so that temporary deviations do not become permanent gaps in the governance record.

- Metadata-only publication while files remain restricted.
- Level 00 publication before higher-level QC is available.
- Temporary use of CSV when NetCDF conversion is planned but not ready.
- Delayed DOI generation while repository metadata are being finalized.
- Hard-link use for image datasets with documented storage caveats.

## Source Basis

Operationalized from governance and staged gate model in `report02.pdf`, release/QA controls in `report01.pdf`, DataMap workflow in `Dec_2025_Data_Report.pdf`, and Level 00 technical decisions in `May_2026_Data_Report.pdf`.
