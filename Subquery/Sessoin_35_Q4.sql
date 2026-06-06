-- find the highest rated movie of 2000
SELECT * FROM movies where year=2000 AND score =(
SELECT MAX(score) from movies where year=2000)
