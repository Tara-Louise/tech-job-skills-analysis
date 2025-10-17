CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.JobLevel` AS
SELECT
  JobID,
  Title,
  ExperienceLevel,
  CASE
    -- Entry / early career
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel),
         r'(fresher|freshers|entry[-\s]?level|intern|trainee|graduate)') THEN 'Entry-Level'

    -- Junior
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel), r'\bjunior\b') THEN 'Junior'

    -- Mid-level (incl. “Experienced”, “Mid-level”, “Mid-Senior”)
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel),
         r'(mid[-\s]?level|mid\s*[-]?\s*senior|associate)') THEN 'Mid-Level'
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel), r'\bexperienced\b') THEN 'Mid-Level'

    -- Senior
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel),
         r'(senior[-\s]?level|\bsenior\b)') THEN 'Senior'

    -- Lead / Principal / Head
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel),
         r'(lead|principal|head)') THEN 'Lead/Principal'

    -- Manager / Architect / Director
    WHEN REGEXP_CONTAINS(LOWER(ExperienceLevel),
         r'(manager|architect|director)') THEN 'Manager/Architect'

    ELSE 'Unspecified'
  END AS Level
FROM `techjobskills.Tech_Skills.jobs_ready`;
