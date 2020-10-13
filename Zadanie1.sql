USE company;
SELECT e.*, CONCAT(m.first_name, ' ', m.last_name)  as direct_superior FROM employees e LEFT JOIN employees m ON e.reports_to = m.employee_id;