SELECT lastName, firstName, cellphone, DATE_FORMAT(shift_date,'%Y-%m-%d') AS 'date', dept AS 'department', DATE_FORMAT(start,'%h%p') AS 'start time', CONVERT(DATE_FORMAT(length,'%H'),UNSIGNED) AS 'shift length' FROM employees, schedules, shifts 
        WHERE schedules.emp_id=employees.empid AND schedules.shift_num=shifts.id 
        ORDER BY lastName ASC, firstName ASC, shift_date ASC, start ASC LIMIT 20;
