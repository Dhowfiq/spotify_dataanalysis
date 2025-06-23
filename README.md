Spotify Data Analysis Using SQL
Analyze real Spotify music data using advanced SQL techniques.
This project guides you through end-to-end data exploration, business problem-solving, and query optimization—perfect for building your analytics portfolio.

📌 Project Overview
Goal: Analyze Spotify track data to answer business questions and demonstrate SQL skills.

Tech Stack: PostgreSQL (recommended), PgAdmin 4, SQL

Dataset: 20,000+ tracks with attributes like artist, track, album, genre, energy, loudness, views, likes, comments, and more.

🚀 Getting Started
1. Download Dataset & Resources
Dataset & SQL Scripts


2. Database Setup
Install PostgreSQL and PgAdmin 4 (see installation guide)

Create a new database (e.g., spotify_db)

Use provided SQL script to create the table structure

3. Import Data
Use PgAdmin’s import feature to load the cleaned CSV dataset into your table

If you face import errors (e.g., data type mismatches), adjust column types (e.g., use FLOAT for likes/views/comments)

📝 Dataset Columns
artist — Song creator

track — Song title

album — Album name

album_type — Single/Album

energy, loudness, speech, acoustic, instrumental, liveness, balance, tempo — Audio features

duration — Song length

views, likes, comments — Engagement metrics

license — Boolean

official_video — Boolean

stream — Platform info

most_played_on — Spotify/YouTube

📊 Analysis Tasks
Exploratory Data Analysis (EDA):

Understand columns and data distribution

Business Problem Solving:

15+ business questions (easy, medium, advanced)

Example: Top artists by views, most popular genres, track engagement trends, etc.

Query Optimization:

Learn to write efficient queries using EXPLAIN and ANALYZE

Practice window functions, subqueries, and aggregations
