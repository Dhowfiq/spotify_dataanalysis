This project involves an end-to-end data analysis of a Spotify dataset using SQL, focusing on solving 15+ business problems categorized into easy, medium, and advanced levels. The dataset, sourced from Kaggle, contains over 20,000 track records with attributes such as artist, track name, album, energy, liveness, views, likes, and more. The project demonstrates proficiency in SQL concepts including GROUP BY, HAVING, subqueries, window functions, and query optimization techniques.

Objectives
Analyze the Spotify dataset to derive actionable business insights.

Apply SQL to solve real-world business problems across varying complexity levels.

Optimize SQL queries for performance using indexing and EXPLAIN ANALYZE.

Publish the project on GitHub to showcase data analysis skills to potential recruiters.

Dataset
The dataset used in this project is sourced from Kaggle and is pre-cleaned, containing 20,594 records with no duplicates. Key columns include:

Artist: The creator of the song.

Track: The song name.

Album: The album name.

Album Type: Single or album.

Energy, Liveness, Loudness, etc.: Song attributes.

Views, Likes, Comments: Engagement metrics.

Licensed, Official Video, Stream: Additional song metadata.

Most Played On: Platform (Spotify or YouTube).

The dataset can be downloaded from the GitHub repository.

Tools Used
PostgreSQL (pgAdmin 4): For database management and query execution.

Excel: For initial data exploration and cleaning.

GitHub: For hosting the project and sharing results.

Project Workflow
Data Acquisition: Downloaded the clean Spotify dataset from Kaggle.

Data Exploration:

Used Excel to explore the dataset, verify no duplicates, and understand column significance.

Identified and resolved data import issues (e.g., fixing float values in likes, views, and comments columns, handling quotes in text fields).

Database Setup:

Created a PostgreSQL database named Spotify_DB.

Defined a table with appropriate data types (e.g., VARCHAR for text, BIGINT for large numbers, FLOAT for decimals, BOOLEAN for true/false).

Imported the dataset into pgAdmin 4, resolving issues like quote delimiters by changing single quotes to double quotes.

Exploratory Data Analysis (EDA):

Performed initial queries to understand the dataset, such as counting total records and distinct artists.

Business Problem Solving:

Easy Level: Solved 5 problems using basic SQL concepts like GROUP BY and HAVING (e.g., finding tracks with above-average liveness).

Medium Level: Solved 5 problems involving subqueries and joins.

Advanced Level: Solved 5 problems using advanced SQL techniques like window functions and Common Table Expressions (CTEs).

Example Advanced Query: Used a CTE to calculate the difference between the highest and lowest energy values for tracks in each album.

Query Optimization:

Analyzed query performance using EXPLAIN ANALYZE.

Created an index on the artist column, reducing query execution time from 7.8 ms to 1 ms (a 700% improvement).

Documented the impact of indexing on performance with screenshots of execution plans.

Project Publishing:

Created a GitHub repository to host the dataset, SQL queries, and README.

Formatted the README with bolded questions and code snippets using triple backticks (```sql) for clarity.

Included screenshots of query execution plans to demonstrate optimization efforts.
