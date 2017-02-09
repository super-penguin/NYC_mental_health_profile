## Big Data in Healthcare

### Exploring mental health of NYC with SPARCS inpatient discharge data from 2009-2014

##### Mental Health related DRG code
1. The DRG code are divided into different groups:
    - Mental Diseases and Disorders (Neural Degenerative Diseases are not included)

        |  DRG code |  APR DRG Description                                          |
        | --------- | ------------------------------------------------------------- |
        |  740      |  Mental Illness Diagnosis w O.R. Procedure                    |
        |  750      |  Schizophrenia                                                |
        |  751      |  Major Depressive Disorders & Other/Unspecified Psychoses     |
        |  752      |  Disorders of Personality & Impulse Control                   |
        |  753      |  Bipolar Disorders                                            |
        |  754      |  Depression Except Major Depressive Disorder                  |
        |  755      |  Adjustment Disorders & Neuroses Except Depressive Diagnoses  |
        |  756      |  Acute Anxiety & Delirium States                              |
        |  758      |  Childhood Behavioral Disorders                               |
        |  759      |  Eating Disorders                                             |
        |  760      |  Other Mental Health Disorders                                |


    - Maternal Depression

        | DRG code | APR DRG Description                                         |
        | -------- | ----------------------------------------------------------- |
        | 561      | Postpartum & Post Abortion Diagnoses w/o Procedure          |
        | 766      | Other Antepartum Diagnoses                                  |


    - Drug or Alcohol Abuse

        | DRG code | APR DRG Description                                              |
        | -------- | ---------------------------------------------------------------- |
        | 770      | Drug & Alcohol Abuse or Dependence, Left Against Medical Advice  |
        | 772      | Alcohol & Drug Dependence w Rehab or Rehab/Detox Therapy         |
        | 773      | Opioid Abuse & Dependence                                        |
        | 774      | Cocaine Abuse & Dependence                                       |
        | 775      | Alcohol Abuse & Dependence                                       |
        | 776      | Other Drug Abuse & Dependence                                    |



##### Exploration

Please see the detail in "NYC_mental_health_profile.html".

The dataset uploaded here "df14.mental.csv" is preprocessed already. It includes only the mental illnesses data from New York City and 16 variables that are used in this project.

The raw dataset could be downloaded from https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/rmwa-zns4/data.

The data used in "NYC_mental_health_profile.Rmd" is the rawdata without processing. 
