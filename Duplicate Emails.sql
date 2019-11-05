select 
    t.email as Email
from
    (
        select
            Email,
            count(Email) as CNT
        from
            Person
        group by Email
        having CNT > 1
    ) t