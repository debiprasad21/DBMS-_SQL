-- Display the names of all athletes who have won a medal in the sport of swimming in both the 2008 and 2016 Olympics.

SELECT Name,Year from athlete_events WHERE sport='swimming' AND  year in (2008,2016) AND  medal is not null AND Name IN(
SELECT Name FROM athlete_events WHERE year =2008 AND sport ='swimming' AND medal is not null) AND Name in ( 

SELECT Name FROM athlete_events  WHERE year =2016 AND sport ='swimming' AND medal is not null)

