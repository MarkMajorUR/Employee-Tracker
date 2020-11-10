DROP DATABASE IF EXISTS Employee_Tracker;
CREATE DATABASE Employee_Tracker;
USE Employee_Tracker;

CREATE TABLE department(
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE role(
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(45) NOT NULL,
  salary DECIMAL NOT NULL,
  department_id INT NOT NULL,
  constraint fk_department_id foreign key (department_id) references department(id),
  PRIMARY KEY(id)
);

CREATE TABLE employee(
  id INT AUTO_INCREMENT NOT NULL,
  name VARCHAR(45) NOT NULL,
  ability VARCHAR(45) NOT NULL,
  role_id INT NOT NULL,
  constraint fk_role_id FOREIGN KEY (role_id) REFERENCES role(id),
  manager_id integer,
  constraint fk_manager_id FOREIGN KEY (manager_id) REFERENCES employee(id),
  Primary key(id)
);

SELECT*
FROM employee;
SELECT *
FROM role;
SELECT *
FROM department;

INSERT INTO department (name)
VALUES ("Marines");
INSERT INTO department (name)
VALUES ("Army");
INSERT INTO department (name)
VALUES ("Navy");
INSERT INTO department (name)
VALUES ("Airforce");
INSERT INTO department (name)
VALUES ("Spaceforce");

SELECT *
FROM department;

INSERT INTO role (title, salary, department_id)
VALUES ("Private", 35000, 1);
INSERT INTO role (title, salary, department_id)
VALUES ("Seargent", 45000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Master Seargent", 43000, 2);
INSERT INTO role (title, salary, department_id)
VALUES ("Captain", 50000, 3);
INSERT INTO role (title, salary, department_id)
VALUES ("General", 50000, 4);
INSERT INTO role (title, salary, department_id)
VALUES("Commander and Chief", 65000, 5);

SELECT *
FROM role;

INSERT INTO employee (name, ability, role_id)
VALUES ("Mich", "Destroys all possible futures", 1);
INSERT INTO employee (name, ability, role_id)
VALUES ("Nancy", "Visits Salons during pandemic", 2);
INSERT INTO employee (name, ability, role_id)
VALUES ("Obama", "Changes 3 things", 3);
INSERT INTO employee (name, ability, role_id)
VALUES ("Stormy", "Scandal master", 4);
INSERT INTO employee (name, ability, role_id)
VALUES ("Conway", "Alternative facts", 5);
INSERT INTO employee (name, ability, role_id)
VALUES ("Trump", "Owner of Trump steaks", 6);

SELECT *
FROM employee;