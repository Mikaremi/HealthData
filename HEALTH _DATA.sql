CREATE DATABASE HEALTH_DATA;

USE HEALTH_DATA;

SELECT *
FROM ocd_patient_dataset;

-- 1. count of F vs M that have OCD & -- Average Obsession Score by Gender
SELECT
Gender,
count(Patient_ID) AS patient_count,
avg(Y_BOCS_Score_Obsessions) as avg_obs_score

FROM ocd_patient_dataset
GROUP BY Gender
ORDER BY patient_count;

-- 2. Count of Patients by Ethnicity and their respective Average Obsession Score
SELECT
Ethnicity,
count(Patient_ID) AS patient_count,
avg(Y_BOCS_Score_Obsessions) AS obs_score
FROM ocd_patient_dataset
GROUP BY Ethnicity
ORDER BY patient_count;

-- 3. What is the most common Obsession type (Count) & it's respoective Average Obsession Score 
SELECT
Obsession_Type,
count(Patient_ID) as patient_count,
avg(Y_BOCS_Score_Obsessions) as obs_score
FROM ocd_patient_dataset
GROUP BY Obsession_Type
ORDER BY patient_count;

-- 4. What is the most common Compulsion type (count) & its's respective Average Obsession Score  
SELECT
Compulsion_Type,
count(Patient_ID) as patient_count,
avg(Y_BOCS_Score_Obsessions) as obs_score
FROM ocd_patient_dataset
GROUP BY Compulsion_Type
ORDER BY patient_count;