-- ===========================================
-- 03_softskill_split.sql
-- Purpose: Separate soft skills from technical skills using regex
-- ===========================================

CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.jobs_with_split_skills_v3` AS
WITH tokenized AS (
  SELECT
    JobID,
    TRIM(token) AS token
  FROM `techjobskills.Tech_Skills.jobs_final`,
  UNNEST(
    SPLIT(REGEXP_REPLACE(SkillsCombined, r'[;,]+', ';'), ';')
  ) AS token
  WHERE TRIM(token) <> ''
),

soft_tokens AS (
  SELECT
    JobID,
    ARRAY_AGG(DISTINCT token ORDER BY LOWER(token)) AS soft_arr
  FROM tokenized
  WHERE REGEXP_CONTAINS(
    LOWER(token),
    r'(leadership|teamwork|communication|collab|management|interpersonal|adaptab|creative|problem solving|flexib|analytical|mentor|coach|motiv|organis|time management|stakehold)'
  )
  GROUP BY JobID
),

tech_tokens AS (
  SELECT
    JobID,
    ARRAY_AGG(DISTINCT token ORDER BY LOWER(token)) AS tech_arr
  FROM tokenized
  WHERE NOT REGEXP_CONTAINS(
    LOWER(token),
    r'(leadership|teamwork|communication|collab|management|interpersonal|adaptab|creative|problem solving|flexib|analytical|mentor|coach|motiv|organis|time management|stakehold)'
  )
  GROUP BY JobID
)

SELECT
  f.JobID,
  ARRAY_TO_STRING(t.tech_arr, '; ') AS TechSkills_v3,
  ARRAY_TO_STRING(s.soft_arr, '; ') AS SoftSkills_v3
FROM `techjobskills.Tech_Skills.jobs_final` f
LEFT JOIN soft_tokens s USING (JobID)
LEFT JOIN tech_tokens t USING (JobID);
