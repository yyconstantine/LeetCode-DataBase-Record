select
    (case
        when mod(id, 2) != 0 and CNT != id then id +1
        when mod(id, 2) != 0 and CNT = id then id
        else id - 1
    end) as id,
    student
from
    seat,
    (select
        count(*) as CNT
    from
        seat) as SEAT_CNT
order by id asc