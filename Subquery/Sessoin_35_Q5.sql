
SELECT * FROM MOVIES 
WHERE score = (SELECT MAX(score) FROM movies 
				WHERE votes> (SELECT AVG(votes) 
							FROM movies ))