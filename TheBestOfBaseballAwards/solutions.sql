-- Heaviest Hitters

SELECT 
	AVG(people.weight), 
	teams.name, 
	batting.yearid 
FROM people 
INNER JOIN batting 
	ON people.playerid = batting.playerid
INNER JOIN teams
	ON batting.team_id = teams.id
GROUP BY 
	teams.name,
	batting.yearid
ORDER BY
	AVG(people.weight) 
	DESC;

-- Shortest Sluggers

SELECT 
	AVG(people.height), 
	teams.name, 
	batting.yearid 
FROM people 
INNER JOIN batting 
	ON people.playerid = batting.playerid
INNER JOIN teams 
	ON batting.team_id = teams.id
GROUP BY 
	teams.name, 
	batting.yearid
ORDER BY 
	AVG(people.height) 
	ASC;

-- Biggest Spenders

SELECT 
	SUM(salary), 
	teams.name, 
	salaries.yearid 
FROM salaries
LEFT JOIN teams 
	ON teams.teamid = salaries.teamid 
	AND teams.yearid = salaries.yearid
GROUP BY 
	teams.name, 
	salaries.yearid
ORDER BY
	SUM(salary) 
	DESC;

-- Most Bang For Their Buck

SELECT 
	ROUND(SUM(salary)/teams.w),
	teams.w,
	teams.name,
	salaries.yearid 
FROM salaries
LEFT JOIN teams 
	ON teams.teamid = salaries.teamid 
	AND teams.yearid = salaries.yearid
WHERE teams.yearid = 2010
GROUP BY 
	teams.name, 
	salaries.yearid, 
	teams.w
ORDER BY 
	SUM(salary)/teams.w 
	ASC;

-- Priciest Starters

SELECT 
	people.namefirst,
	people.namelast, 
	salaries.salary/pitching.g as cost_per_game, 
	salaries.yearid, 
	pitching.g
FROM salaries 
INNER JOIN pitching 
	ON salaries.playerid = pitching.playerid 
	AND salaries.yearid = pitching.yearid 
	AND salaries.teamid = pitching.teamid 
INNER JOIN people 
	ON salaries.playerid = people.playerid
WHERE pitching.g > 10
ORDER BY 
	salaries.salary/pitching.g 
	DESC;