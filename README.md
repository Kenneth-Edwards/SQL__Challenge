# SQL Challenge - Employee Database: A Mystery in Two Parts

1.	Created postgresql database named "Employee_SQL_Challenge_db"
2.	Performed Data Modeling and Created ERD via https://app.quickdatabasediagrams.com/#/d/4xnOeo 
3.	Exported ERD schema and PDF 
4.	Performed Data Engineering: Modified ERD schema with field lengths and not null constraints
5.	Used schema to create tables and constraints (Foreign Keys)
6.	Imported CSV data into tables 
7.	Performed data analysis by creating queries to answer required questions. The scripts and screen shots of my output are in the word.doc "SQL Challenge _ Data Analysis Scripts and Output"
8.	Researched and found psycopg2 (PostgreSQL database adapter) which allowed me to connect to my database with Python and Pandas in order to attempt the BONUS questions.
9.	Created config.py file to protect my postgresql password and entered it in the gitignore file
10.	Created scripts to extract data from each table in my database
11.	Created a Pandas dataframe for each table
12.	Create merged dataframe using titles and salaries tables and used group by function to sort on salary bins
13.	Used pd.cut function to get 8 bins to use in a HISTOGRAM chart
14.	Used Matplotlib to create a Histogram Chart showing the frequency of salaries in the 8 groupings determined by the binning determined by pd.cut function.
15.	Used the dataframe of combined TITLE and SALARY tables, did a group by TITLE on it and then performed a .mean () aggregate function to get the average salary by title.
16.	Created a histogram chart of the salaries by title for reference only
17.	Using both Matplotlib and Pandas .plot function to create a BAR Chart showing show the Average Salary by Job Title.
18.	Checked the employee number 499942 and found it to be the lowest paid salary in the database
19.	Ended by closing both the cursor and connection.

