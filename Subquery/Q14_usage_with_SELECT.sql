-- find the % of votes for each movie compared to the total no of votes

SELECT name,votes/(SELECT SUM(votes) FROM movies)*100 FROM movies ;
