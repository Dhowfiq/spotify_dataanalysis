# 🎵 Spotify Data Analysis with SQL  

![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)  
![Excel](https://img.shields.io/badge/Excel-217346?style=for-the-badge&logo=microsoft-excel&logoColor=white)  
![GitHub](https://img.shields.io/badge/GitHub-181717?style=for-the-badge&logo=github&logoColor=white)  

## 📌 Project Overview  
This project is an **end-to-end SQL-based data analysis of Spotify tracks**.  
I explored **20,000+ songs** from a Kaggle dataset and solved **15+ business problems** ranging from beginner to advanced.  

Key SQL techniques:  
✅ `GROUP BY`, `HAVING`  
✅ Subqueries & Joins  
✅ Window Functions & CTEs  
✅ Query Optimization (`EXPLAIN ANALYZE`, Indexing)  

👉 The goal: **Showcase SQL skills and extract actionable business insights** from real-world music data.  

---

## 🎯 Objectives  
- Derive **business insights** from Spotify data.  
- Apply SQL to **solve problems at multiple difficulty levels**.  
- Use **query optimization** to improve performance.  
- Publish results on GitHub as a **portfolio project**.  

---

## 📂 Dataset  
- 📊 **20,594 records** (clean, no duplicates)  
- Source: [Kaggle – Spotify Dataset](#)  
- Key Columns:  
  - 🎤 **Artist** | 🎶 **Track** | 💿 **Album** | 🔊 **Energy, Liveness, Loudness**  
  - 📺 **Views, Likes, Comments** (engagement)  
  - ✅ **Licensed, Official Video, Stream**  
  - 🎧 **Most Played On** (Spotify/YouTube)  

---

## 🛠 Tools Used  
- **PostgreSQL (pgAdmin 4)** → SQL queries & optimization  
- **Excel** → Initial data exploration  
- **GitHub** → Project hosting & documentation  

---

## 🔄 Workflow  

### 1️⃣ Data Acquisition  
- Downloaded from Kaggle → Pre-cleaned dataset  

### 2️⃣ Data Exploration  
- Explored in Excel (checked duplicates, column types)  
- Fixed import issues: float values, quotes in text fields  

### 3️⃣ Database Setup  
- Created `Spotify_DB` in PostgreSQL  
- Defined schema with proper data types  
- Imported dataset into pgAdmin  

### 4️⃣ Exploratory Data Analysis  
- Ran queries to count total records, unique artists, etc.  

### 5️⃣ Business Problem Solving  
- **Easy (5 queries):** `GROUP BY`, `HAVING`  
- **Medium (5 queries):** Subqueries, Joins  
- **Advanced (5 queries):** Window Functions, CTEs
  ## 🏆 Outcomes  

- 📌 Solved **15+ real-world business problems** using SQL (easy, medium, and advanced).  
- 📌 Showcased expertise in **SQL concepts**: `GROUP BY`, `HAVING`, subqueries, joins, window functions, CTEs, and query optimization.  
- 📌 Delivered **actionable business insights**, such as:  
  - Identifying top-performing artists and tracks by views & likes.  
  - Comparing engagement across platforms (Spotify vs YouTube).  
  - Ranking albums by their energy and liveness ranges.  
- 📌 Improved database query performance by **700%** (7.8 ms → 1 ms) using indexing.  
- 📌 Built a structured workflow that mirrors **real data analytics pipelines**: data acquisition → cleaning → SQL analysis → optimization → reporting.  
- 📌 Published the project on GitHub as a **portfolio-ready case study** for recruiters.  


💡 Example Advanced Query:  
```sql
WITH energy_range AS (
  SELECT album, 
         MAX(energy) - MIN(energy) AS energy_diff
  FROM spotify
  GROUP BY album
)
SELECT * FROM energy_range
ORDER BY energy_diff DESC;
