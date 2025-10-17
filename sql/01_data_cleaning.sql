-- ===========================================
-- 01_data_cleaning.sql
-- Purpose: Clean raw job dataset and prepare for analysis
-- ===========================================

-- Remove header row (BigQuery Sandbox doesn’t allow DELETE)
CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.jobs_cleaned` AS
SELECT *
FROM `techjobskills.Tech_Skills.jobs_raw`
WHERE JobID != 'JobID';   -- Exclude header accidentally imported

-- Standardize the YearsOfExperience column to format like "0-1"
CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.jobs_ready` AS
SELECT
  *,
  REGEXP_REPLACE(YearsOfExperience, r'\s*years?', '') AS YearsClean
FROM `techjobskills.Tech_Skills.jobs_cleaned`;

-- Merge Skills and Keywords columns into one combined string
CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.jobs_final` AS
SELECT
  *,
  CONCAT(IFNULL(Skills, ''), '; ', IFNULL(Keywords, '')) AS SkillsCombined
FROM `techjobskills.Tech_Skills.jobs_ready`;

