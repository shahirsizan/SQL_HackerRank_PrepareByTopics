select distinct CITY
from STATION
where CITY regexp "[aeiou]$"