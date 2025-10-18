CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.jobs_with_split_skills` AS
SELECT
  *,
  -- Extract all soft skills from the Skills column
  ARRAY_TO_STRING(
    ARRAY(
      SELECT skill
      FROM UNNEST(SPLIT(LOWER(Skills), ',')) AS skill
      WHERE REGEXP_CONTAINS(skill, r'leadership|team|collab|communication|interpersonal|management|problem|adapt|creativity|flexib|analytical|decision|mentor|coach|motiv|organ|attention|time')
    ),
    ', '
  ) AS SoftSkills,
  
  -- Extract only the technical skills (the rest)
  ARRAY_TO_STRING(
    ARRAY(
      SELECT skill
      FROM UNNEST(SPLIT(LOWER(Skills), ',')) AS skill
      WHERE NOT REGEXP_CONTAINS(skill, r'leadership|team|collab|communication|interpersonal|management|problem|adapt|creativity|flexib|analytical|decision|mentor|coach|motiv|organ|attention|time')
    ),
    ', '
  ) AS TechSkills

FROM `techjobskills.Tech_Skills.jobs_final`;
