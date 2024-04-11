select tipus, preu, 
count(*)
from campions
group by tipus, preu;