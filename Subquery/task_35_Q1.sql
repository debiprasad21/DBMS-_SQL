-- display names of athelete who won a gold medal in 2008 olympics and height is greater than avg height of all the athelete in 2008 olympics.


SELECT * FROM athlete_events Where year=2008 and height>(SELECT AVG(height) FROM athlete_events WHERE year=2008) AND medal='gold'