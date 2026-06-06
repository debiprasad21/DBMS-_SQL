-- find the highest rated movie among all movies whose no of votes are > the dataset avg
SELECT * FROM MOVIES 
WHERE score = (SELECT MAX(score) FROM movies 
				WHERE votes> (SELECT AVG(votes) 
							FROM movies ))