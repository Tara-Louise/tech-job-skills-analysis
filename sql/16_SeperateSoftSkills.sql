CREATE OR REPLACE TABLE `techjobskills.Tech_Skills.TopSoftSkills50` AS
WITH exploded AS (
  SELECT
    -- 1) normalize delimiters: turn ",", ";", ",  ", ";   " into a single ";"
    SPLIT(REGEXP_REPLACE(SoftSkills, r'\s*;\s*|\s*,\s*', ';'), ';') AS tokens
  FROM `techjobskills.Tech_Skills.Softskills`
), tokens AS (
  SELECT
    -- 2) explode to one row per skill token
    LOWER(TRIM(token)) AS soft_skill
  FROM exploded, UNNEST(tokens) AS token
)
SELECT
  -- 3) optional light normalization (keep or expand as you like)
  REPLACE(soft_skill, '–', '-') AS soft_skill,  -- en dash → hyphen
  COUNT(*) AS mentions
FROM tokens
WHERE soft_skill NOT IN ('', 'none', 'n/a')
GROUP BY soft_skill
ORDER BY mentions DESC
LIMIT 50;
