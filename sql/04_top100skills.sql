SELECT clmn0_, clmn1_ FROM (
SELECT t0.Title AS clmn0_, t0.postings AS clmn1_ FROM `techjobskills.Tech_Skills.JobTitle_Top10` AS t0
) GROUP BY clmn0_, clmn1_ LIMIT 100; 
