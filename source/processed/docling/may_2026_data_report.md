# May_2026_Data_Report

## Page 1

 Section 8 – Data Management, Governance and Curation 
 Data  Curation  Team  :  Adriano  Almeida,  Amanda  Damasceno,  Márcio  Teixeira,  Jeaneth  Machicao,  Danielle 
 Monteiro. 
 Supervision  : David Lapola, Márcio Teixeira, Pedro  Luiz Pizzigatti Corrêa, Alan James Peixoto Calheiros. 
 8.1. Overview 
 Data  curation  in  the  AmazonFACE  program  aims  to  consolidate,  preserve,  and  organize 
 raw  datasets  provided  by  different  scientific  groups  working  in  the  Amazon.  This  report 
 describes  the  delivery  of  level  00  packages,  which  consist  of  original  data  organized 
 consistently  and  accompanied  by  complete  documentation.  Nine  scientific  datasets 
 were  processed,  with  the  creation  or  update  of  scripts  for  reproducible  processing,  the 
 revision  of  all  READMEs  according  to  a  common  editorial  pattern,  and  the  inclusion  of 
 metadata  payloads  in  DataCite  format  and  institutional  contacts.  Special  cases,  such  as 
 cumulative  files,  single  spreadsheets,  large  image  collections  using  hard  links,  and  the 
 exclusion of material outside the scope of level 00, were addressed carefully. 
 8.2. Curation Standard Applied 
 To  ensure  consistency  and  traceability,  each  level  00  package  follows  a  structure  and 
 naming  convention.  Raw  files  are  organized  in  'dataset/00'  subdirectories  and  may  be 
 partitioned  by  period  (date  or  month)  and,  depending  on  the  study,  by  plot,  stratum, 
 tube,  or  trap.  This  granular  organization  facilitates  future  access  and  handling  of  each 
 experimental  unit.  The  naming  convention  inserts  the  '.raw.'  suffix  before  the  original  file 
 name  and  uses  the  general  format.  Figure  1  shows  a  diagram  of  the  naming  pattern  of 
 the curated datasets. 
 60 


## Page 2

 Figure  1  -  Naming  pattern  used  in  the  curated  datasets.  The  diagram  highlights,  with 
 distinct  colors,  each  segment  of  a  level  00  file  name:  the  project  prefix  (mao),  the 
 dataset  identifier  (dataset),  the  experimental  context  (context),  the  processing  level 
 (00),  the  acquisition  date  (YYYYMMDD),  the  marker  for  raw  data  (raw),  and  the  original 
 file name with its extension. 
 The  main  goal  of  level  00  is  to  preserve  the  original  file  as  obtained  in  the  field  or 
 instrument.  There  is  no  processing  or  aggregation,  and  any  supplementary  material 
 unrelated  to  the  primary  data  is  removed.  Each  package  includes  a  standardized 
 README  containing  a  scientific  summary,  study  scope,  temporal  coverage,  organization 
 of  the  package,  naming  rules,  basic  statistics,  metadata  in  JSON  format  compatible  with 
 the  DataCite  standard,  and  reference  contacts.  This  model,  created  initially  for  the 
 Litterfall dataset, was harmonized for all other curated sets. 
 To  ensure  reproducibility,  each  dataset  repository  contains  a  'process_level00.py'  a 
 python  script  that  specifies  inclusion  and  exclusion  rules  and  can  be  used  to  audit  or  redo 
 the  data  preparation.  These  scripts  establish  directory  structures  and  provide  a  clear 
 procedure for future users or curators. 
 61 


## Page 3

 8.3. Curated Datasets 
 The  Litterfall  dataset  comprises  731  files  totaling  4.23  MB,  representing  litterfall  collections 
 by  plot  and  date.  These  files,  covering  the  period  from  August  13,  2015  to  March  24,  2026, 
 were  organized  into  directories  by  date,  with  each  plot's  original  spreadsheet  retaining 
 the '.raw.' suffix. This set constitutes the longest time series within the curation. 
 The  Root  Morphology  collection  includes  595  root  images  totaling  107.98  MB  obtained 
 between  February  2024  and  November  2025.  The  images  were  classified  by  campaign 
 and category and renamed according to the raw file convention. 
 Soil  Respiration  contains  854  files  amounting  to  53.01  MB  resulting  from  soil  respiration 
 measurements.  It  includes  field  notes  and  raw  instrument  downloads,  covering  data 
 collected  between  August  2023  and  March  2026.  Organizing  by  date  was  essential  for 
 traceability, since the dataset combines instrumental files and annotations. 
 Sap  Flow  originally  stored  data  in  cumulative  files.  For  level  00,  each  month  was 
 materialized  individually  from  the  internal  history  of  the  CSV,  resulting  in  525  files  totaling 
 108.73  MB  with  coverage  from  April  11,  2025  to  March  18,  2026.  This  approach  preserves 
 the  temporal  evolution  of  the  measurements  and  avoids  relying  solely  on  the  latest 
 version. 
 The  Photosynthesis  dataset  contains  361  files  (6.97  MB)  generated  by  the  LI ‑ 6800 
 instrument.  The  files  were  organized  by  stratum  (canopy  or  understory)  as  well  as  by  date 
 and  plot,  covering  April  15,  2025  to  March  17,  2026.  Supplementary  materials  were 
 excluded from level 00 to maintain only primary data. 
 Litter  Stock  consists  of  a  single  raw  spreadsheet  of  11.52  KB  representing  the  entire 
 sampling  campaign  conducted  on  October  28,  2025.  Because  it  was  already  the  original 
 acquisition unit, no further partitioning or renaming was necessary. 
 62 


## Page 4

 Fine  Root  Images  is  the  largest  dataset  by  volume,  with  1,158  images  totaling  73.62  GB. 
 Photographs  from  minirhizotrons  were  organized  by  tube  and  date,  covering  November  8, 
 2025  to  March  26,  2026.  Hard  links  were  used  to  prevent  unnecessary  duplication  in 
 storage, so the physical space occupied may be less than the total logical size. 
 Leaf  Area  Index  contains  408  images  (3.25  GB)  obtained  between  September  12,  2024 
 and  February  11,  2026.  The  organization  criterion  was  trap  by  date,  reflecting  the  field 
 sampling unit. As with the root images, hard links were used to optimize disk usage. 
 Leaf  Demography  comprises  48  files  (24.40  MB)  of  monthly  spreadsheets  recording  leaf 
 demography  from  July  2020  to  September  2024,  plus  a  textual  metadata  file.  The 
 spreadsheets  were  renamed  according  to  the  raw  file  convention  and  kept  as  the  basic 
 information unit, while supplementary materials were excluded. 
 8.4. Relevant Technical Decisions 
 During  curation,  some  specific  decisions  are  noteworthy.  Curation  of  the  Sap  Flow  dataset 
 required  extracting  monthly  files  from  a  cumulative  CSV,  preserving  the  complete  history 
 of  measurements  rather  than  only  the  latest  version.  For  Fine  Root  Images  and  Leaf  Area 
 Index,  hard  links  were  used  because  these  datasets  contain  large  volumes  of  images; 
 hard  links  point  to  the  same  data  blocks  on  the  disk,  reducing  physical  storage 
 consumption. 
 In  the  case  of  Litter  Stock,  the  campaign's  consolidated  spreadsheet  was  kept  intact 
 because  it  was  the  original  acquisition  unit,  avoiding  any  subdivision  or  additional 
 treatment.  For  sets  such  as  Leaf  Demography,  Photosynthesis,  and  Fine  Root  Images, 
 supplementary  materials,  auxiliary  scripts,  or  derived  reports  were  removed  from  level  00 
 to  ensure  that  only  the  raw  files  were  preserved.  Finally,  all  READMEs  were  harmonized  in 
 both  appearance  and  content,  including  headers,  summaries,  scope,  temporal 
 63 


## Page 5

 coverage,  naming  conventions,  statistics,  and  contacts,  ensuring  uniformity  across 
 packages. 
 8.5. Document Standardization 
 Each  README  begins  with  a  professional  header  presenting  the  title,  authors,  and 
 responsible  institution,  followed  by  an  English  abstract  to  serve  an  international  audience, 
 as  shown  in  Figures  2  and  3.  The  document  specifies  the  start  and  end  of  the 
 measurements  and  describes  in  detail  the  organization  of  the  package,  clarifying  the 
 folder structure and naming convention. 
 Figure 2 -  Metadata header for the Leaf Demography  dataset in DataMap. 
 64 


## Page 6

 Figure 3 -  Title and abstract of the Leaf Demography  dataset in DataMap. 
 It  also  spells  out  the  rules  for  naming  files  and  provides  basic  statistics  such  as  file  count 
 and  total  logical  size.  A  JSON  payload  conforming  to  the  DataCite  standard  is  included, 
 ready  for  use  in  repositories  that  accept  this  metadata  schema,  and  institutional  contacts 
 and communication channels are listed for questions or future collaborations. 
 To  reinforce  reproducibility,  a  'process_level00.py'  script  accompanies  each  dataset.  This 
 script  automates  the  curation  steps,  defines  inclusion  and  exclusion  criteria,  and 
 reproduces  the  directory  structure  applied.  Curated  data  are  stored  in 
 'data/[dataset]/00',  ensuring  that  the  directory  structure,  README,  and  delivered 
 package are fully aligned. 
 8.6. Consolidated Statistics 
 The  curation  covered  nine  datasets,  resulting  in  4,681  files  materialized  at  level  00,  totaling 
 77.17  GB  of  logical  size.  The  aggregated  coverage  period  spans  from  July  2020  to  March 
 26,  2026.  The  largest  set  in  terms  of  both  volume  and  number  of  image  files  is  Fine  Root 
 Images  (1,158  files,  73.62  GB),  while  the  largest  number  of  files  outside  the  image  context 
 65 


## Page 7

 was  found  in  Soil  Respiration,  with  854  files.  The  smallest  package  is  Litter  Stock,  composed 
 of  a  single  file  of  11.52  KB.  It  is  important  to  note  that  the  values  presented  correspond  to 
 the  logical  size  of  the  files;  because  some  images  were  materialized  with  hard  links,  the 
 additional physical space on disk may be less than the sum of the logical sizes. 
 8.7. Workload Distribution 
 The  curation  effort  was  not  uniform  across  datasets.  Fine  Root  Images  accounted  for 
 nearly  a  quarter  of  all  files,  reflecting  the  large  volume  of  minirhizotron  images.  Soil 
 Respiration  contributed  about  18  %  of  the  total,  gathering  instrument  measurements  and 
 field  notes,  and  Litterfall  added  approximately  16  %  as  the  longest  time  series.  Root 
 Morphology,  Sap  Flow,  Leaf  Area  Index,  and  Photosynthesis  followed,  according  to  their 
 structures  and  partitioning  strategies.  Leaf  Demography  had  a  small  number  of  files 
 because  it  consists  of  monthly  spreadsheets  and  a  metadata  file,  and  Litter  Stock 
 comprised only a consolidated workbook. 
 8.8. Final Result and Next Steps 
 As  a  result,  the  AmazonFACE  repository  now  presents  a  consistent  first  layer  (level  00)  of 
 curation  for  the  main  datasets.  The  raw  data  are  preserved  and  organized  transparently, 
 accompanied  by  detailed  documentation  and  reproducible  scripts.  The  curated 
 packages  are  stored  in  'data/*/00',  establishing  a  solid  foundation  for  the  next  processing 
 steps,  such  as  cleaning,  exploratory  analysis,  and  publication.  The  standardization 
 achieved  in  this  work  will  serve  as  a  model  for  future  curation  efforts  to  be  integrated  into 
 the AmazonFACE program. 
 66