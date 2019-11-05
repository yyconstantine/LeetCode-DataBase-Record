select 
    aa.name as Department, 
    bb.name as Employee, 
    bb.salary as Salary
  from (select 
            max(e.salary) as salary, 
            e.departmentId, 
            d.name
          from employee e
          inner join department d
            on e.departmentId = d.id
         group by departmentId) aa,employee bb
   where bb.departmentId = aa.departmentId
   and bb.salary = aa.salary