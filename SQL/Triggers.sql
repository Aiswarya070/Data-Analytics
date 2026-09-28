use employee_data;

/*
Question 1: Automatically calculate Annual Salary
Scenario

Whenever a new employee is inserted, automatically calculate: Annual Salary = Monthly Salary × 12
*/
DELIMITER //
CREATE TRIGGER calculate_annual_salary
BEFORE INSERT
ON employees
FOR EACH ROW
BEGIN
SET NEW.`Annual_Salary` = NEW.`Monthly_Salary` * 12;
END //

DELIMITER ;

INSERT INTO employees
(
    `No`,
    `First_Name`,
    `Last_Name`,
    Gender,
    Department,
    Country,
    `Monthly_Salary`
)
VALUES
(
    101,
    'John',
    'David',
    'Male',
    'IT',
    'India',
    5000
);
SELECT * FROM employees;



/*
Question 2: Prevent negative salary
Scenario

An employee should not have a negative monthly salary.
*/

DELIMITER //

CREATE TRIGGER prevent_negative_salary
BEFORE INSERT
ON employees
FOR EACH ROW
BEGIN

    IF NEW.`Monthly_Salary` < 0 THEN

        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';

    END IF;

END //

DELIMITER ;

INSERT INTO employees
(
    `No`,
    `First_Name`,
    `Last_Name`,
    `Monthly_Salary`
)
VALUES
(
    102,
    'Tom',
    'Smith',
    5000
);







