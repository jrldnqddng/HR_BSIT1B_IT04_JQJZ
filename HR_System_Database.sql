/* Open MySQL YOG and paste the SQL script to the SQL Query tab   
 to create the database along with its tables
 * Execute all queries in the SQL Query tab
 * Author @JQJZ|BSIT1B
*/

/* Create database called "hr_bsit1b_it04_jqjz" */
CREATE DATABASE IF NOT EXISTS hr_bsit1b_it04_jqjz;

/* Create table for user */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_user (
    id INT(12) NOT NULL,
    User_name VARCHAR(50),
    Last_name VARCHAR(50),
    First_name VARCHAR(50),
    Middle_name VARCHAR(50),
    Gender VARCHAR(50),
    Email_address VARCHAR(50),
    User_type_id INT(12),
    Password VARCHAR(50),
    PRIMARY KEY (id)
); 

/* Create table for user type*/
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_usertype (
    id INT(12) NOT NULL,
    name VARCHAR(50),
    description VARCHAR(50),
    PRIMARY KEY (id)
);

/* Create table for employees */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_employees (
    Employee_id INT(11) NOT NULL,
    Employee_password VARCHAR(50),
    Employee_email VARCHAR(50),
    Employee_name VARCHAR(50),
    Employee_address VARCHAR(50),
    Employee_mobile VARCHAR(50),
    PRIMARY KEY (Employee_id)
);

/* Create table for departments */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_departments (
    Department_id INT(11) NOT NULL,
    Department_title VARCHAR(50),
    PRIMARY KEY (Department_id)
);

/* Create table for trainings */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_trainings (
    Training_id INT(11) NOT NULL,
    Training_title VARCHAR(50),
    Training_description VARCHAR(50),
    PRIMARY KEY (Training_id)
);

/* Create table for vacations */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_vacations (
    Vacation_id INT(11) NOT NULL,
    Vacation_title VARCHAR(50),
    Vacation_from_date VARCHAR(50),
    Vacation_to_date VARCHAR(50),
    Employee_id INT(11),
    PRIMARY KEY (Vacation_id),
    CONSTRAINT FK_tbljqjz_vacations FOREIGN KEY (Employee_id)
    REFERENCES tbljqjz_employees (Employee_id)
);

/* Create table for salary */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_salary (
    id INT(11) NOT NULL,
    salary DOUBLE(50,2),
    bonus DOUBLE(11,2),
    loan DOUBLE(11,2),
    Last_update DATE,
    Employee_id INT(11),
    PRIMARY KEY (id),
    CONSTRAINT FK_tbljqjz_salary FOREIGN KEY (Employee_id)
    REFERENCES tbljqjz_employees (Employee_id)
);

/* Create table for attendance */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_attendance (
    id INT(11) NOT NULL,
    Att_type VARCHAR(50),
    Att_time_date DATE,
    Employee_id INT(11),
    PRIMARY KEY (id),
    CONSTRAINT FK_tbljqjz_attendance FOREIGN KEY (Employee_id)
    REFERENCES tbljqjz_employees (Employee_id)
);

/* Create table for evaluation */
CREATE TABLE hr_bsit1b_it04_jqjz.tbljqjz_evaluation (
    Eval_id INT(11) NOT NULL,
    User_id INT(11),
    Eval_value VARCHAR(11),
    PRIMARY KEY (Eval_id),
    CONSTRAINT FK_tbljqjz_evaluation FOREIGN KEY (User_id)
    REFERENCES tbljqjz_user (id)
);