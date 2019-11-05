select
    d.Name as Department,
    e1.Name as Employee,
    e1.Salary
from
    Employee e1,
    Department d
where
    3 > (
        select
            count(distinct e2.Salary)
        from
            Employee e2
        where
            e2.Salary > e1.Salary
        and
            e1.DepartmentId = e2.DepartmentId
    )
and
    e1.DepartmentId = d.Id