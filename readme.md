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

Please see the detail in "NYC_mental_health_profile_new.html".

The goals of my project here are:

1. To gain insights of the mental health situation in NYC;

2. To discover potentially effective interventions and provide guidance for the distribution of fundings and services of NYC to finally improve new yorkers’ mental health.

The data I am using is from Health Data NY, Statewide Planning and Research Cooperative System (SPARCS)[3]. The raw data includes the NY hospitalization inpatient discharges for all diseases from 2009-2014.

This file has 3 sections.

    - Section 1: Explore the 2014 dataset and discovery interesting patterns.

    - Section 2: Explore the combined dataset from 2009-2014; Analyze the econimic burdens caused by mental diseases in NYC.

    - Section 3: Three Final plots.

All the raw data used in this project can be downloaded at:     https://health.data.ny.gov/Health/Hospital-Inpatient-Discharges-SPARCS-De-Identified/rmwa-zns4/data.
