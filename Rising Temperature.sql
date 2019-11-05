select 
    w2.Id Id 
from 
    Weather w1, Weather w2
where 
    datediff(w2.RecordDate,w1.RecordDate) = 1
    and w2.Temperature > w1.Temperature