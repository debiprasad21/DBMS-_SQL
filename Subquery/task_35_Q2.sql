-- Display the names of athletes who won a medal in the sport of basketball in the 2016 Olympics and  whose weight is less than the average weight of all athletes who won a medal in the 2016 Olympics.
SELECT name FROM athlete_events WHERE medal is not NULL AND sport='basketball' AND year='2016' AND weight< (
SELECT AVG(weight) from athlete_events WHERE year=2016 AND  medal is not null)