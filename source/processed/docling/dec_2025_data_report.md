# Dec_2025_Data_Report

## Page 1

 Section 8 - Data Management and Curation 
 Data Curation 
 The  data  curation  workflow  adopted  within  the  AmazonFACE  project  is 
 designed  to  ensure  dataset  quality,  internal  consistency,  reproducibility,  and  ethical 
 compliance  across  the  full  data  lifecycle.  Because  AmazonFACE  integrates 
 heterogeneous  observational  streams  produced  by  multiple  instruments,  sampling 
 frequencies,  and  operational  conditions,  curation  is  treated  as  a  systematic  process 
 that  converts  raw  measurements  into  analysis-ready  data  products  that  can  be 
 reliably  interpreted  and  reused.  This  workflow  follows  established  best  practices  in 
 research  data  management  and  is  aligned  with  the  FAIR  principles  (Findable, 
 Accessible,  Interoperable,  and  Reusable),  so  that  datasets  are  discoverable, 
 accessible  under  appropriate  conditions,  and  structured  according  to  community 
 conventions that support long-term reuse. 
 The  AmazonFACE  curation  model  is  organized  as  a  sequence  of 
 interdependent  stages:  ingestion,  quality  control,  metadata  creation,  transformation 
 and  standardization,  distribution  and  publication,  and  maintenance  and  long-term 
 preservation (see Figure 1). 
 Ingestion  is  responsible  for  receiving  raw  data  into  a  controlled  environment 
 and  performing  initial  validation.  Quality  control  combines  automated  and 
 expert-driven  checks  to  assess  data  integrity  and  scientific  plausibility.  Metadata 
 creation  establishes  the  contextual  documentation  needed  to  interpret  the 
 observations,  including  instrumentation,  variable  definitions,  and  processing  history. 
 Transformation  then  converts  curated  content  into  standardized  formats  that 
 maximize  interoperability.  Distribution  publishes  the  curated  products  in  a  trusted 
 repository  with  persistent  identifiers  when  applicable.  Finally,  maintenance  ensures 
 that  datasets  remain  traceable  and  scientifically  valuable  over  time  through  version 
 control, correction tracking, and preservation of historical releases. 


## Page 2

 Figure  1:  Overview  of  the  AmazonFACE  data  publication  workflow  in  DataMap, 
 illustrating  the  sequential  steps  from  dataset  transfer  and  completion  of  a 
 standardized  metadata  form,  through  curation  and  quality  review,  DOI  registration 
 within  the  repository,  principal  investigator  (PI)  validation,  and  final  public  release 
 of the curated dataset. 
 Data ingestion 
 Data  ingestion  begins  at  the  field  or  sensor  level,  where  raw  files  are 
 produced  by  data  loggers  and  acquisition  systems  and  subsequently  transferred  to  a 
 secure  staging  environment  using  dedicated  file-transfer  tools.  In  AmazonFACE,  this 
 transfer  is  carried  out  using  data-team-approved  tools,  such  as  RaiDrive,  which 
 provides  a  secure  channel  while  offering  an  intuitive,  user-friendly  interface  that 
 reduces operational friction for field and laboratory teams. 
 To  strengthen  accountability  and  traceability,  each  dataset  is  assigned  a 
 designated  data  steward  responsible  for  coordinating  and  executing  the  transfer 
 process,  ensuring  that  uploads  follow  the  agreed  procedures  and  timelines.  At  this 
 stage,  the  primary  objective  is  to  establish  end-to-end  traceability  and  prevent 


## Page 3

 undetected  corruption,  loss,  or  ambiguity  from  propagating  into  downstream 
 processing. 
 Once  received,  incoming  files  are  verified  for  completeness  and  consistency 
 by  checking  expected  file  counts,  file  sizes,  and  basic  structural  integrity.  Timestamp 
 sequences  are  then  validated  to  ensure  temporal  continuity  and  correct  alignment 
 with  the  declared  sampling  frequency,  and  sensor  identifiers  are  confirmed  so  that 
 each  file  is  unambiguously  linked  to  the  correct  instrument,  deployment  context,  and 
 site. 
 When  necessary,  raw  formats  are  normalized  toward  project-preferred, 
 non-proprietary  representations  (with  CSV  and  NetCDF  prioritized)  to  reduce 
 dependency  on  vendor-specific  tooling.  Initial  metadata  are  assigned  using  internal 
 templates  to  capture  essential  acquisition  context  early,  including  instrument 
 identifiers,  measurement  type,  location  descriptors,  and  operational  notes  that  may 
 later explain anomalies or discontinuities. 
 Quality control 
 Quality  control  (QC)  is  implemented  as  a  critical  gate  between  ingestion  and 
 product  generation.  QC  procedures  are  designed  to  detect  both  technical  issues 
 (such  as  missing  records,  corrupted  values,  sensor  dropouts,  or  encoding  problems) 
 and  scientific  issues  (such  as  implausible  magnitudes,  discontinuities  inconsistent 
 with  expected  dynamics,  or  sensor  drift).  Automated  routines  are  used  to  flag 
 outliers,  identify  missing  or  malformed  values,  and  summarize  distributional 
 properties  over  time.  Manual  review  is  applied  when  automated  flags  indicate 
 potential  issues  that  require  domain  interpretation,  particularly  for  periods  associated 
 with  instrument  maintenance,  extreme  environmental  conditions,  or  known 
 operational disturbances. 
 Where  redundant  or  co-located  sensors  exist,  cross-checking  is  used  to 
 identify  inconsistencies  and  to  diagnose  whether  anomalies  are  instrument-specific 
 or  represent  genuine  environmental  variability.  Calibration  factors  and  corrections 
 are  applied  according  to  instrument  specifications  and  project-defined  procedures, 
 with the correction logic and parameters documented to preserve interpretability. 
 After  QC,  datasets  are  processed  into  standardized  representations  following  the 


## Page 4

 AmazonFACE  Data  Product  Guidelines,  ensuring  consistent  variable  naming, 
 harmonized  units  and  conventions,  explicit  versioning  rules  to  support  reproducibility, 
 and  the  use  of  controlled  vocabularies  that  reduce  ambiguity  across  teams  and 
 across time. 
 Metadata description 
 AmazonFACE  datasets  follow  FAIR-aligned  metadata  practices  that  integrate 
 descriptive,  scientific,  and  provenance  documentation.  Descriptive  metadata  support 
 discovery  and  citation  by  clearly  identifying  the  dataset  scope,  spatial  and  temporal 
 coverage,  data  ownership,  and  usage  constraints.  Scientific  metadata  provide  the 
 methodological  context  required  for  interpretation,  including  instrument  descriptions, 
 measurement  principles,  calibration  procedures,  uncertainty  considerations,  and  any 
 known limitations of the observing system. 
 Provenance  metadata  capture  processing  lineage,  documenting  the  sequence 
 of  transformations  applied  to  the  raw  data,  the  quality  control  procedures  executed, 
 and  the  software  and  configuration  context  used  to  generate  the  final  product.  Where 
 applicable,  persistent  identifiers  such  as  DOIs  are  associated  with  specific  dataset 
 versions  to  ensure  unambiguous  citation  and  to  enable  reproducible  reference  to 
 exact  releases.  To  ensure  consistency  across  the  project,  standardized  metadata 
 templates  defined  in  the  reference  guideline  documents  are  used  across  teams, 
 minimizing  divergence  in  terminology  and  structure  while  improving  interoperability 
 with external systems. 
 Data Transformation and Standardization 
 Following  QC  and  metadata  description,  data  transformation  and 
 standardization  ensure  that  datasets  are  delivered  in  forms  that  are  interoperable 
 and  sustainable  for  long-term  use.  At  this  stage,  curated  measurements  are 
 converted  into  community-accepted  formats,  with  NetCDF  compliant  with  CF 
 conventions  serving  as  a  primary  target  for  gridded  or  time-series  products  when 
 appropriate. 
 Spatial  and  temporal  reference  systems  are  explicitly  encoded,  including 
 coordinate  variables,  time  standards,  and  sampling  semantics,  so  that  datasets  can 


## Page 5

 be  integrated  into  downstream  analysis  pipelines  without  ad  hoc  interpretation. 
 Structural  validation  is  performed  against  format  schemas  and  internal  specifications, 
 including  checks  for  required  variables  and  attributes,  consistent  dimensions,  and 
 compliance  with  naming  and  unit  conventions.  The  output  of  this  stage  is  a  final, 
 analysis-ready  data  product  that  supports  both  routine  scientific  use  and  automated 
 processing workflows. 
 The Datamap Repository: Publication and Access 
 Data  distribution  and  publication  occur  through  the  Datamap  repository 
 (available  at  https://datamap.pcs.usp.br  ),  which  functions  as  the  official  platform  for 
 disseminating  AmazonFACE  data  products.  Figure  2  shows  a  dataset  search 
 interface  in  DataMap.  Publication  is  treated  as  an  extension  of  curation  rather  than  a 
 final  administrative  step,  ensuring  that  repository  deposits  include  the  curated  data, 
 complete  metadata,  and  links  to  supporting  documentation.  When  applicable, 
 persistent  identifiers  such  as  DOIs  are  assigned  to  enable  stable  citation  and 
 tracking of dataset usage. 
 Figure  2  :  DataMap  dataset  discovery  page  showing  the  AmazonFACE  search 
 interface,  including  keyword-based  search,  filtering  options  (e.g.,  date  range  and 
 category), and the resulting list of published AmazonFACE datasets. 


## Page 6

 FAIR  principles  are  operationalized  through  clear  dataset  descriptions, 
 standardized  metadata  fields,  interoperable  file  formats,  and  explicit  licensing  and 
 access  policies.  Given  the  potential  sensitivity  of  certain  observations  or  contextual 
 information,  access  conditions  and  usage  terms  are  defined  to  balance  scientific 
 openness with ethical and legal obligations. 
 Versioning, Maintenance, and Data Integrity 
 After  publication,  AmazonFACE  datasets  enter  an  active  maintenance  and 
 long-term  preservation  phase  to  protect  their  integrity  and  scientific  value  over  time. 
 Versioning  and  release  management  procedures  ensure  that  updates  are 
 documented,  that  changes  are  traceable,  and  that  users  can  reliably  reference  stable 
 dataset snapshots. 
 Corrections  and  reprocessing  events  are  recorded  with  clear  rationales,  and 
 historical  versions  are  preserved  whenever  feasible  to  maintain  full  lineage  and 
 enable  retrospective  analysis.  Metadata  quality  is  periodically  reviewed  to  ensure 
 continued  compliance  with  repository  requirements  and  evolving  community 
 standards. 
 Long-term  storage  practices  follow  established  digital  preservation  principles, 
 including  redundancy,  integrity  verification,  and  governance  processes  that  support 
 continuity  beyond  individual  project  cycles.  Through  this  continuous  management, 
 AmazonFACE datasets remain interpretable and reusable. 
 To  ensure  that  these  practices  are  consistently  applied  across  teams  and  remain 
 transparent  over  time,  AmazonFACE  has  developed  a  documentation  resource  that 
 describes  the  entire  curation  workflow  in  detail,  including  step-by-step  procedures  for 
 generating  and  validating  official  data  products.  This  document  consolidates  the 
 project’s  conventions,  quality  control  criteria,  metadata  requirements,  transformation 
 rules,  repository  submission  steps,  and  versioning  policies,  serving  as  the 
 authoritative  reference  for  producing  AmazonFACE  data  products.  It  is  actively 
 maintained  and  periodically  updated  to  reflect  evolving  standards,  lessons  learned 
 from operations, and improvements to tooling and governance.