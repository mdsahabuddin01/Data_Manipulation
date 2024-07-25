How do we manipulate, transform, and make the most sense of out data? several key functions necessary to wrangle, filter, and categorize information in a relational database,
answering complex questions. learning the robust use of CASE statements, subqueries, and window functions—all while discovering some interesting facts about soccer using the European Soccer Database.

  Chapter 1: 
Basic CASE statements: Learn the fundamentals of using CASE WHEN statements to create new columns based on conditions.
CASE statements comparing column values: Compare values within a row using CASE statements.
CASE statements comparing two column values part 2: Dive deeper into complex comparisons between columns.
In CASE things get more complex: Explore advanced CASE statements for intricate scenarios.
Filtering CASE statement: Use CASE statements to filter data based on specific conditions.
CASE WHEN with aggregate functions: Combine CASE statements with aggregate functions for powerful calculations.
COUNT using CASE WHEN: Count occurrences based on different conditions using CASE statements.
COUNT and CASE WHEN with multiple conditions: Handle multiple conditions for counting using CASE statements.
Calculating percent with CASE and AVG: Calculate percentages based on different categories using CASE and AVG.
  
  Chapter 2: Short and Simple Subqueries
Filtering using scalar subqueries: Use subqueries to filter data based on a single value.
Filtering using a subquery with a list: Filter data based on a list of values returned by a subquery.
Filtering with more complex subquery conditions: Apply complex conditions within subqueries for filtering.
Subqueries in FROM: Use subqueries to create virtual tables within the FROM clause.
Joining Subqueries in FROM: Combine subqueries with joins for complex data retrieval.
Subqueries in SELECT: Use subqueries within the SELECT clause to calculate values.
Add a subquery to the SELECT clause: Create new columns using subqueries in the SELECT clause.
Subqueries in Select for Calculations: Perform calculations using subqueries within the SELECT clause.
ALL the subqueries EVERYWHERE: Review and consolidate your understanding of subqueries in different parts of the query.
  
  Chapter 3: Correlated Queries, Nested Queries, and Common Table Expressions
Basic Correlated Subqueries: Understand how correlated subqueries reference the outer query.
Correlated subquery with multiple conditions: Apply multiple conditions within correlated subqueries.
Nested simple subqueries: Create nested subqueries for complex data retrieval.
Nest a subquery in FROM: Use nested subqueries within the FROM clause.
Common Table Expressions: Learn about CTEs and their benefits.
Clean up with CTEs: Use CTEs to improve query readability and performance.
Organizing with CTEs: Structure complex queries using multiple CTEs.
CTEs with nested subqueries: Combine CTEs and nested subqueries for advanced scenarios.
Deciding on techniques to use: Choose the appropriate technique (subquery, correlated subquery, or CTE) for different situations.
Get team names with a subquery: Apply subqueries to retrieve team names.
Get team names with correlated subqueries: Use correlated subqueries to retrieve team names.
Get team names with CTEs: Employ CTEs to retrieve team names.
Which technique to use? Compare and contrast different techniques for retrieving team names.
  
  Chapter 4: Window Functions
The match is OVER: Introduction to window functions.
What's OVER here? Understand the OVER clause in window functions.
Flip OVER your results: Explore different windowing functions.
OVER with a PARTITION: Use PARTITION BY to divide data into groups.
PARTITION BY a column: Apply PARTITION BY to a single column.
PARTITION BY multiple columns: Use multiple columns for partitioning.
Sliding windows: Understand sliding window functions for time-series data.
Slide to the left: Use leading window functions.
Slide to the right: Use trailing window functions.
Bringing it all together: Combine window functions with other techniques for complex calculations.
Setting up the home team CTE: Create a CTE for home team data.
Setting up the away team CTE: Create a CTE for away team data.
Putting the CTEs together: Combine CTEs for analysis.
Add a window function: Apply a window function to the combined data.
