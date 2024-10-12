# Database Queries

## Instructions on how to execute the SQL Queries
1. Ensure SQLite is installed in your laptop. If it's a Mac
simply run the following command in the terminal to initialize:
```
sqlite3
```
It should open up the SQLite prompt, otherwise go to this link to download SQLite (Ensure Compatibility)
<a href="https://www.sqlite.org/download.html">SQLite Download</a>

2. The SQLite queries can either be executed in the terminal SQLite command line, or you can install a software called DB Browser which useful for doing DDL or DML tasks.
<a href="https://sqlitebrowser.org/dl/">Download DB Browser</a>

3. The dataset we will be using for these tasks, is the MediaDB Database, which is available in this repository, just download the file named ``` MediaDB```

4. Now, we need to navigate into the database there are two options
-   Option 1: Navigate to the directory where the MediaDB database is present, and initialize from the command-line:
```
sqlite3 MediaDB.db
```
- Option 2: Open the database, by using DB Browser. Click on Open Database and choose the MediaDB database folder. It will show all the tables and data present in it. (This makes it easier to view the tables -- Personal Preference)

5. Executing Queries: 
- Option 1: Executing from command line: Make sure the SQLite command-line prompt is initialized in the Media database folder, then you can simple copy paste the code from Query.sql files onto the command-line and execute them.
- Option 2: In DB Browser, navigate to the EXECUTE SQL component, then copy paste the queries, then click on run. This should execute the queries and show you the proper output! (Preferred***).
- Option 3: Open and execute the sql file along with MediaDB database, make sure to navigate to the folder where the MediaDB.db file is present, use the following SQLite command:
```
sqlite3 MediaDB.db < query1.sql
```
Similarly, you can execute the code for the other queries.





## Queries

- Query 1: What are the last names and emails of all customer who made purchased in the store?
- Query 2: What are the names of each album and the artist who created it?
- Query 3: What are the total number of unique customers for each state, ordered alphabetically by state?
- Query 4: Which states have more than 10 unique customers?
- Query 5: What are the names of the artists who made an album containing the substring "symphony" in the album title?
- Query 6: What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?
- Query 7: How many artists published at least 10 MPEG tracks?
- Query 8: What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.
- Query 9: Create an SQL query that retrieves the percentage of tracks belonging to each genre within a playlist. For each playlist, display the total number of tracks from a specific genre and calculate the percentage of the playlist's total tracks that belong to that genre. The result should be ordered by playlist and by the percentage of tracks in descending order, showing the most dominant genres first for each playlist. (Creative Addition ***)
<br>
The query should help in understanding how the tracks in each playlist are distributed across different genres.


