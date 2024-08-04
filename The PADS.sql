select 
    concat(Name, "(", LEFT(Occupation,1), ")") 
from Occupations 
order by name;

select 
    CONCAT("There are a total of ", Count(Occupation), " ", LOWER(occupation), "s.") 
from Occupations
Group by Occupation 
order by  Count(Occupation) asc, Occupation asc;