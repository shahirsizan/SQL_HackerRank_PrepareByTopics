SELECT DISTINCT CITY
FROM STATION
WHERE CITY REGEXP "^[aeiou].*[aeiou]$";
-- '.' -> any character
-- '*' -> any number of times
-- so '.*' -> any character any number of times