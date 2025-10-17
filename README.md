# Tech Job Skills Analysis (2025–2026)
Analysis of 2025–2026 tech job skills using BigQuery (Top 20 Skills, Top 10 Job Titles, Soft Skills)

This project explores the most in-demand **technical** and **soft** skills in tech jobs using data from public job listings (Gov.UK / Kaggle) and **Google BigQuery**.

## Goals
- Top 20 Technical Skills mentioned in 
- Top 20 Soft Skills mentioned
- Top 10 Job Titles mentioned
- Skill mentions within each title
- Convert to percent of ads for that title (per-title share)
- job titles by category (Data, AI, Cloud, etc.).
- career level (Entry, Junior, Senior, etc.).

## Steps
1. Data Cleaning (01_data_cleaning.sql)
2. Skill Splitting (02_skill_split.sql)
3. Soft Skill Separation (03_softskill_split.sql)
4. Aggregations (Top 20 skills, Top 10 titles)
5. Visualisation in Looker Studio

## Key Insights
- Python, SQL, and AWS remain dominant.
- Collaboration and leadership are top soft skills.
- Average experience required is ~2–4 years.

## Tools
- Google BigQuery
- Looker Studio
- Regex, SQL

## Project Evolution and Notes

During analysis, I adjusted my focus based on what the data revealed.  
Initially, the goal was to compare job posting counts by title, but after reviewing the dataset structure (20 listings per title), I shifted toward analysing **skill mentions** within roles and their frequency across the market.

After further investigation:
- I added categorical groupings (e.g., Cloud, Data, AI/ML, Security, Design) and seniority levels (Entry, Junior, Senior, Lead, etc.) to better interpret job market trends.
- I counted how many job titles/adverts I was looking at = (218)- representing a broad cross-section of the technology job market in 2025–2026.
- I counted how many job adverts in total = 1067
- I then looked at types of roles  

Roles span across Software Engineering, Data, Cloud, AI/ML, Security, and Design, with titles ranging from entry-level trainees to senior architects and managers.

This variety allows analysis across both specialisation and career progression, highlighting which technical and soft skills are mentioned most frequently at each level.

