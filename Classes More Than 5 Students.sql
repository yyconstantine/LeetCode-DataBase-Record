select
    t.class as class
from
    (
        select
            c.class,
            count(c.class) as CNT
        from
            ( select distinct student,class from courses ) as c
        group by class
        having CNT >= 5
    ) as t