Movie Data SQL Analysis

Overview:

This project demonstrates fundamental SQL operations on a small movie dataset containing titles, genres, release years, and ratings. The focus is on data retrieval, transformation, conditional classification, and grouped aggregation using SQL.

Dataset Structure:

Single table: movies
Title (TEXT): Movie name
Genre (TEXT): Movie category
Year (INTEGER): Release year
Rating (REAL): User rating score

SQL Operations Implemented:

1. Data Creation and Insertion
The dataset is defined using CREATE TABLE and populated using multiple INSERT INTO statements.
This establishes a structured dataset for querying and analysis.
2. Filtering, Formatting, Sorting, and Pagination
SQL
SELECT Rating, UPPER(title) AS Title_upper, UPPER(genre) AS Genre_upper
FROM movies
WHERE title LIKE '%a%'
ORDER BY Rating DESC
LIMIT 9 OFFSET 2;
What this query does:
Filters movies where the title contains the letter “a”
Converts title and genre into uppercase for standardized output formatting
Sorts results by rating in descending order
Applies pagination using LIMIT and OFFSET
Interpretation:
Returns a subset of 9 records starting from the 3rd entry in the filtered and sorted result set
3. Full Data Inspection
SQL
SELECT * FROM movies;
Used to view the complete dataset for validation and exploration.
4. Conditional Classification
SQL
SELECT *,
CASE
WHEN Rating >= 7 THEN 'good'
ELSE 'bad'
END AS Rating_category
FROM movies;
Purpose:
Creates a derived categorical field from numeric ratings
Splits movies into:
“good” (≥ 7)
“bad” (< 7)
This demonstrates basic feature engineering using SQL.
5. Aggregation and Group-Level Filtering
SQL
SELECT Genre, Year, AVG(rating) AS Avg_rating
FROM movies
GROUP BY Genre, Year
HAVING AVG(rating) > 7;
Purpose:
Groups data by genre and year
Computes average rating per group
Filters only groups with average rating above 7.

Skills Demonstrated:

Table creation and data insertion
Filtering using WHERE and LIKE
Sorting and pagination (ORDER BY, LIMIT, OFFSET)
String transformation (UPPER)
Conditional logic (CASE)
Aggregation (AVG)
Grouping and filtering aggregated results (GROUP BY, HAVING)

Observations:

Pattern filtering reduces the dataset to a specific subset based on title structure.
Conditional classification simplifies numeric ratings into interpretable categories.
Grouped aggregation shows variation in average ratings across genre-year combinations within this dataset.
Pagination enables controlled viewing of sorted results.

Limitations:

Dataset is small and manually created, limiting statistical significance.
Analysis is descriptive and not predictive.
Insights are constrained to available fields and records.
No relational joins or external datasets are used.

Summary:

My project applies core SQL techniques to a structured movie dataset to demonstrate filtering, transformation, and aggregation workflows. It reflects foundational practices used in exploratory data analysis and reporting pipelines.