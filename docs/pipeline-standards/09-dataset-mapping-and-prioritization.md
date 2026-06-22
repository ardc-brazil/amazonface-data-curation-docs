# Portfolio Mapping and Prioritization Protocol

## Protocol Objective

Map every AmazonFACE dataset into a governed portfolio before technical curation begins. Mapping prevents duplicated effort, clarifies ownership, identifies access restrictions, and creates a defensible basis for prioritization.

Dataset mapping is the first governance act in the curation lifecycle. It turns scattered knowledge about files, people, instruments, campaigns, and folders into a portfolio record that the project can manage. Without this step, curation work tends to be reactive: the team receives files without knowing whether they are complete, who can approve them, or whether they are intended for public release. A mapped dataset has a defined identity before the technical pipeline begins.

## Mapping Inputs

The curation team must collect enough information to understand what the dataset represents and how it should be handled. The fields below are not only administrative metadata; they define the basic governance context required for ingestion, storage, processing, repository publication, and DOI decisions.

- working dataset name,
- scientific area,
- responsible data mentor,
- operational data steward,
- producing group or laboratory,
- data type and format class,
- acquisition unit,
- temporal coverage,
- spatial or experimental context,
- lifecycle state,
- current storage location,
- expected target level,
- current publication status,
- access status,
- known gaps, anomalies, or embargo constraints.

## Scientific Area Assignment

Assign one primary area and optional secondary areas:

Area assignment should be discussed with the responsible group when there is ambiguity. The area determines which scientific vocabulary, reviewer, and quality expectations are most relevant. It also helps AmazonFACE coordination understand whether the curated portfolio is balanced across modeling, socio-environmental data, biodiversity, water, nutrients, and carbon.

| Primary area | Examples |
| --- | --- |
| Modeling | model inputs, simulation outputs, scenario files |
| Socio-environmental | interviews, forms, contextual social/environmental records |
| Biodiversity | forest census, litterfall, LAI, phenology, roots, lianas |
| Water | hydraulic data, sap flow, soil moisture, hydrological campaigns |
| Nutrients | litter stock, soil/leaf chemistry, belowground nutrient records |
| Carbon | micrometeorology, CO2, soil respiration, photosynthesis, fluxes |

When a dataset crosses areas, choose the area that owns the primary scientific interpretation and record the secondary area in metadata keywords.

## Mapping Workflow

Mapping should be performed before file transfer whenever possible. If files are already available in the server, mapping still needs to happen before the dataset is treated as curated. The workflow below creates the minimum information needed to decide whether the dataset is ready for contact, training, ingestion, or publication.

1. Create or update the dataset row in the portfolio inventory.
2. Assign the primary scientific area and lifecycle state.
3. Identify the data mentor and steward.
4. Record current file locations and known repository records.
5. Classify format and expected product levels.
6. Record access status and embargo constraints.
7. Identify dependencies, such as calibration files, scripts, forms, codebooks, or instrument logs.
8. Mark the dataset readiness level for prioritization.

## Priority Criteria

Prioritization must be transparent because the AmazonFACE portfolio contains more datasets than can usually be curated at the same time. A dataset may be scientifically important but not ready for transfer, or technically simple but blocked by access restrictions. The criteria below should be used together, and the rationale should be recorded so that future scheduling decisions can be explained.

| Criterion | High-priority signal |
| --- | --- |
| Scientific importance | dataset is central to AmazonFACE core analyses or publication commitments |
| Data risk | raw files are fragile, scattered, undocumented, or stored only with individuals |
| Readiness | mentor/steward available and files ready for transfer |
| Public value | dataset is likely to be released publicly or cited soon |
| Operational dependency | dataset is required as input for other products |
| Complexity | large, heterogeneous, or multimedia dataset requiring early design decisions |
| Compliance | DOI, funder, repository, or reporting deadline approaching |

## Prioritization Output

Every priority decision must produce a short but explicit record. The record should explain not only the priority class, but also what should happen next. This prevents high-priority datasets from remaining in a vague "important but blocked" state.

- priority class,
- rationale,
- target product level,
- first action,
- responsible curation owner,
- expected completion window,
- blocking dependencies.

## Baseline Portfolio

The February 2026 status report lists 16 mapped datasets, including meteorological data, litterfall, forest inventory, tower demography, soil respiration, LAI, photosynthesis, hydraulic data, liana data, sap flow, phenocam, leaf area litterfall, functional traits, belowground data, rhizotron data, and 2016 photosynthesis data.

The May 2026 report documents Level 00 curation for nine datasets and should be used as the baseline for subsequent `a1`, `b1`, and `c1` prioritization.

This means that the portfolio should no longer be treated as entirely unmapped. The next operational question is which datasets already have a stable Level 00 foundation and which still require mapping, contact, upload, or raw package construction. Higher-level processing should build on this baseline rather than restarting from informal file collections.

## Acceptance Criteria

The mapping protocol is complete when the dataset can be placed in a known pipeline state and assigned to a responsible next action. The goal is not to collect perfect metadata immediately, but to remove ambiguity about ownership, scope, access, and priority.

- Every active curation task links to a mapped dataset record.
- Every mapped dataset has a mentor or a documented ownership gap.
- Every high-priority dataset has a defined next action.
- Restricted datasets are not blocked from metadata mapping; access constraints are recorded instead.

## Source Basis

Synthesized from `report03.pdf`, `report02.pdf`, and the Level 00 delivery details in `May_2026_Data_Report.pdf`.
