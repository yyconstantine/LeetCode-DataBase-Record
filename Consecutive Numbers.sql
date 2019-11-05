select distinct num as ConsecutiveNums from 
(select @prev := 0, @count := 0) as t,
(select
    num,
    case
        when @prev = num then @count := @count + 1
        when (@prev := num) is not null then @count := 1
    end as CNT
from Logs) as tmp
where CNT >= 3