/*What's the average number of matches per season where a team scored 5 or more goals? How does this differ by country?

Let's use a nested, correlated subquery to perform this operation. In the real world, you will probably find that nesting multiple subqueries is a task you don't have to perform often. In some cases, however, you may find yourself struggling to properly group by the column you want, or to calculate information requiring multiple mathematical transformations (i.e., an AVG of a COUNT).

Nesting subqueries and performing your transformations one step at a time, adding it to a subquery, and then performing the next set of transformations is often the easiest way to yield accurate information about your data. Let's get to it!

Instructions 1/3
35 XP
Generate a list of matches where at least one team scored 5 or more goals.

Turn the query from the previous step into a subquery in the FROM statement.
COUNT the match ids generated in the previous step, and group the query by country_id and season.

Finally, declare the same query from step 2 as a subquery in FROM with the alias outer_s.
Left join it to the country table using the outer query's country_id column.
Calculate an AVG of high scoring matches per country in the main query.*/


-- Select matches where a team scored 5+ goals
SELECT
	country_id,
    season,
	id
FROM match
where home_goal >= 5 or away_goal>=5;

-- Count match ids
SELECT
    country_id,
    season,
    count(id) AS matches
-- Set up and alias the subquery
FROM (
	SELECT
    	country_id,
    	season,
    	id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5) 
    as subquery
-- Group by country_id and season
GROUP BY country_id, season;

SELECT
	c.name AS country,

    -- Calculate the average matches per season
	avg(outer_s.matches) AS avg_seasonal_high_scores
FROM country AS c
-- Left join outer_s to country
Left join (
  SELECT country_id, season,
         COUNT(id) AS matches
  FROM (
    SELECT country_id, season, id
	FROM match
	WHERE home_goal >= 5 OR away_goal >= 5) AS inner_s
  -- Close parentheses and alias the subquery
  GROUP BY country_id, season) as outer_s
ON c.id = outer_s.country_id
GROUP BY country;
