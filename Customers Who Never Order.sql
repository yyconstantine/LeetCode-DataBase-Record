select
    t.name as Customers
from
    (
        select
            c.name
        from
            Customers c
        where c.Id not in
            (select CustomerId from Orders)
    ) as t