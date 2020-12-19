USE employees;

INSERT INTO department
  (name)
VALUES
  ('Sales'),
  ('Accounting'),
  ('Human Resources'),
  ('Managerment'),
  ('Admin');


INSERT INTO role
  (title, salary, department_id)
VALUES
  ('Sales Lead', 70000, 1),
  ('Salesperson', 50000, 1),
  ('Accounting Lead', 80000, 2),
  ('Accountant', 60000, 2),
  ('HR Manager', 90000, 3),
  ('HR Associate', 60000, 3),
  ('Regional Manager', 120000, 4),
  ('Assistant (to the) Manager', 70000, 4),
  ('Wharehouse Foreman', 60000, 5),
  ('Secretary', 40000, 5),
  ('Receptionist', 40000, 5),
  ('Supplier Relations Assoc', 50000, 5),
  ('Customer Relations', 45000, 5),
  ('Quality Control', 40000, 5);

INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Michael', 'Scott', 7, NULL),
  ('Dwight', 'Schrute', 8, 1),
  ('Jim', 'Halpert', 1, NULL),
  ('Stanley', 'Hudson', 2, 3),
  ('Phyllis', 'Lapin', 2, 3),
  ('Angela', 'Martin', 3, NULL),
  ('Oscar', 'Gutierrez', 4, 6),
  ('Kevin', 'Malone', 4, 6),
  ('Toby', 'Flenderson', 5, NULL),
  ('Pam', 'Beasley', 10, 1),
  ('Creed', 'Bratton', 14, 1),
  ('Meredith', 'Palmer', 12, 1),
  ('Andy', 'Bernard', 2, 3),
  ('Kelly', 'Kapoor', 13, 1),
  ('Erin', 'Hannon', 11, 1),
  ('Darryl', 'Philibin', 9, 1)