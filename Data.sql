-- =============================================
-- DELETE Section - Corrected Order
-- =============================================

-- Omar's dependent tables first
DELETE FROM AttendanceCorrectionRequest;
DELETE FROM AttendanceLog;
DELETE FROM AttendanceSource;
DELETE FROM Employee_Exception;
DELETE FROM Attendance;
DELETE FROM Exception;
DELETE FROM Device;
DELETE FROM ShiftCycleAssignment;
DELETE FROM ShiftCycle;
DELETE FROM ShiftAssignment;
DELETE FROM ShiftSchedule;
DELETE FROM LeaveDocument;
DELETE FROM LeaveRequest;
DELETE FROM LeaveEntitlement;
DELETE FROM LeavePolicy;
DELETE FROM HolidayLeave;
DELETE FROM ProbationLeave;
DELETE FROM SickLeave;
DELETE FROM VacationLeave;
DELETE FROM Leave;

-- Ali's tables
DELETE FROM Mission;
DELETE FROM Reimbursement;
DELETE FROM Termination;
DELETE FROM Insurance;
DELETE FROM InternshipContract;
DELETE FROM ConsultantContract;
DELETE FROM PartTimeContract;
DELETE FROM FullTimeContract;

-- Tarek's tables
DELETE FROM PayrollPeriod;
DELETE FROM Payroll_Log;
DELETE FROM PayrollPolicy_ID;
DELETE FROM AllowanceDeduction;
DELETE FROM Payroll;
DELETE FROM DeductionPolicy;
DELETE FROM BonusPolicy;
DELETE FROM LatenessPolicy;
DELETE FROM OvertimePolicy;
DELETE FROM PayrollPolicy;

-- Ziad's tables
DELETE FROM ApprovalWorkflowStep;
DELETE FROM ApprovalWorkflow;
DELETE FROM ManagerNotes;
DELETE FROM EmployeeHierarchy;
DELETE FROM LineManager;
DELETE FROM PayrollSpecialist;
DELETE FROM SystemAdministrator;
DELETE FROM HRAdministrator;
DELETE FROM Employee_Role;
DELETE FROM RolePermission;
DELETE FROM Role;

-- Yousef's tables (Employee dependent tables)
DELETE FROM Employee_Notification;
DELETE FROM Notification;
DELETE FROM Employee_Verification;
DELETE FROM Verification;
DELETE FROM Employee_Skill;
DELETE FROM Skill;

-- CRITICAL: Reset department_head_id BEFORE deleting Employee
UPDATE Department SET department_head_id = NULL;

-- Now delete Employee (after all its dependent data is gone)
DELETE FROM Employee;

-- Now delete tables that Employee was referencing
DELETE FROM Contract;
DELETE FROM TaxForm;
DELETE FROM PayGrade;
DELETE FROM ContractSalaryType;
DELETE FROM MonthlySalaryType;
DELETE FROM HourlySalaryType;
DELETE FROM SalaryType;
DELETE FROM Currency;

-- Finally delete Department and Position
DELETE FROM Department;
DELETE FROM Position;

-- =============================================
-- Yousef's Part
-- =============================================

SET IDENTITY_INSERT Position ON;
INSERT INTO Position (position_id, position_title, responsibilities, status) VALUES
(1, 'CEO', 'Lead company strategy and overall operations', 'Active'),
(2, 'CTO', 'Oversee technology strategy and IT operations', 'Active'),
(3, 'CFO', 'Manage financial planning and risk management', 'Active'),
(4, 'HR Director', 'Manage HR department and employee relations', 'Active'),
(5, 'IT Manager', 'Supervise IT team and infrastructure', 'Active'),
(6, 'Finance Manager', 'Oversee accounting and financial reporting', 'Active'),
(7, 'Software Engineer', 'Develop and maintain software applications', 'Active'),
(8, 'HR Specialist', 'Handle recruitment and employee onboarding', 'Active'),
(9, 'Payroll Officer', 'Process payroll and manage compensation', 'Active'),
(10, 'System Administrator', 'Maintain and configure computer systems', 'Active'),
(11, 'Team Lead', 'Lead technical projects and mentor team members', 'Active'),
(12, 'Intern', 'Learn and assist with various tasks', 'Active'),
(13, 'Senior Software Engineer', 'Lead technical projects and mentor junior developers', 'Active'),
(14, 'Accountant', 'Manage financial records and transactions', 'Active');
SET IDENTITY_INSERT Position OFF;

SET IDENTITY_INSERT Department ON;
INSERT INTO Department (department_id, department_name, purpose, department_head_id) VALUES
(1, 'Executive', 'Executive leadership and strategy', NULL),
(2, 'Human Resources', 'Manage employee relations, recruitment, and HR policies', NULL),
(3, 'Information Technology', 'Manage company IT infrastructure and software development', NULL),
(4, 'Finance', 'Manage financial operations, accounting, and budgeting', NULL);
SET IDENTITY_INSERT Department OFF;

SET IDENTITY_INSERT Skill ON;
INSERT INTO Skill (skill_id, skill_name, description) VALUES
(1, 'Python Programming', 'Proficiency in Python programming language'),
(2, 'SQL Database Management', 'Database design and SQL query optimization'),
(3, 'Project Management', 'Planning and executing projects effectively'),
(4, 'Leadership', 'Leading and motivating teams'),
(5, 'Communication', 'Effective verbal and written communication'),
(6, 'HR Management', 'Human resources best practices'),
(7, 'Financial Analysis', 'Financial modeling and analysis'),
(8, 'Excel Advanced', 'Advanced Excel formulas and data analysis'),
(9, 'Cloud Computing', 'AWS, Azure, or GCP platform expertise'),
(10, 'DevOps', 'CI/CD pipelines and infrastructure automation'),
(11, 'JavaScript', 'Frontend and backend JavaScript development'),
(12, 'Git Version Control', 'Source code version management');
SET IDENTITY_INSERT Skill OFF;

SET IDENTITY_INSERT Verification ON;
INSERT INTO Verification (verification_id, verification_type, issuer, issue_date, expiry_period) VALUES
(1, 'Degree', 'Cairo University', '2015-06-15', NULL),
(2, 'Degree', 'American University in Cairo', '2016-06-20', NULL),
(3, 'Certificate', 'AWS', '2023-01-15', 1095),
(4, 'Certificate', 'SHRM-CP', '2022-05-20', 1095),
(5, 'Background Check', 'National Security Agency', '2023-06-01', 365);
SET IDENTITY_INSERT Verification OFF;

SET IDENTITY_INSERT Notification ON;
INSERT INTO Notification (notification_id, message_content, timestamp, urgency, read_status, notification_type) VALUES
(1, 'Welcome to the company! Please complete your profile information.', '2024-01-15 09:00:00', 'Medium', 0, 'Onboarding'),
(2, 'Your leave request has been approved.', '2024-02-10 14:30:00', 'Low', 1, 'Leave'),
(3, 'Urgent: System maintenance scheduled for tonight at 11 PM.', '2024-03-05 16:00:00', 'Urgent', 0, 'System'),
(4, 'Your payroll for March has been processed.', '2024-03-31 08:00:00', 'Medium', 1, 'Payroll'),
(5, 'Reminder: Complete your annual performance review by Friday.', '2024-04-20 10:00:00', 'High', 0, 'Performance');
SET IDENTITY_INSERT Notification OFF;

-- =============================================
-- Tarek's Part
-- =============================================

INSERT INTO Currency (CurrencyCode, CurrencyName, ExchangeRate, CreatedDate, LastUpdated) VALUES 
('USD', 'US Dollar', 1.0000, GETDATE(), GETDATE()),
('EUR', 'Euro', 0.9200, GETDATE(), GETDATE()),
('EGP', 'Egyptian Pound', 30.9000, GETDATE(), GETDATE());

SET IDENTITY_INSERT SalaryType ON;
INSERT INTO SalaryType (salary_type_id, type, payment_frequency, currency) VALUES 
(1, 'Monthly', 'Monthly', 'EGP'),
(2, 'Hourly', 'Weekly', 'EGP'),
(3, 'Contract', 'Milestone', 'USD');
SET IDENTITY_INSERT SalaryType OFF;

INSERT INTO HourlySalaryType (salary_type_id, hourly_rate, max_monthly_hours) VALUES 
(2, 50.00, 180);

INSERT INTO MonthlySalaryType (salary_type_id, tax_rule, contribution_scheme) VALUES 
(1, 'Progressive 10-25%', 'Social Insurance 11%');

INSERT INTO ContractSalaryType (salary_type_id, contract_value, installment_details) VALUES 
(3, 120000.00, 'Quarterly payments based on milestones');

SET IDENTITY_INSERT PayGrade ON;
INSERT INTO PayGrade (pay_grade_id, grade_name, min_salary, max_salary) VALUES 
(1, 'Entry Level', 3000.00, 6000.00),
(2, 'Junior', 6000.00, 10000.00),
(3, 'Mid Level', 10000.00, 18000.00),
(4, 'Senior', 18000.00, 30000.00),
(5, 'Executive', 30000.00, 60000.00);
SET IDENTITY_INSERT PayGrade OFF;

SET IDENTITY_INSERT TaxForm ON;
INSERT INTO TaxForm (tax_form_id, jurisdiction, validity_period, form_content) VALUES 
(1, 'Egypt', '2025', 'Egyptian tax form for residents - progressive tax rates 10-25%'),
(2, 'International', '2025', 'W-8BEN form for foreign contractors');
SET IDENTITY_INSERT TaxForm OFF;

SET IDENTITY_INSERT PayrollPolicy ON;
INSERT INTO PayrollPolicy (policy_id, effective_date, type, description) VALUES 
(1, '2025-01-01', 'Overtime', 'Standard overtime calculation with weekday and weekend multipliers'),
(2, '2025-01-01', 'Lateness', 'Grace period and deduction rules for late arrival'),
(3, '2025-01-01', 'Bonus', 'Annual and performance-based bonus policy'),
(4, '2025-01-01', 'Deduction', 'Standard deduction policy for absences and violations');
SET IDENTITY_INSERT PayrollPolicy OFF;

INSERT INTO OvertimePolicy (policy_id, weekday_rate_multiplier, weekend_rate_multiplier, max_hours_per_month) VALUES 
(1, 1.25, 1.50, 50);

INSERT INTO LatenessPolicy (policy_id, grace_period_mins, deduction_rate) VALUES 
(2, 10, 2.50);

INSERT INTO BonusPolicy (policy_id, bonus_type, eligibility_criteria) VALUES 
(3, 'Annual Performance', 'Completed 1 year with performance rating above 3.5/5');

INSERT INTO DeductionPolicy (policy_id, deduction_reason, calculation_mode) VALUES 
(4, 'Absence', 'Full day salary deduction');

-- =============================================
-- Ali's Part
-- =============================================

SET IDENTITY_INSERT Contract ON;
INSERT INTO Contract (contract_id, type, start_date, end_date, current_state) VALUES
(1, 'Full Time', '2024-01-01', '2025-01-01', 'Active'),
(2, 'Part Time', '2023-06-01', '2024-06-01', 'Expired'),
(3, 'Consultant', '2024-03-01', '2024-09-01', 'Active'),
(4, 'Internship', '2024-07-01', '2024-12-01', 'Active');
SET IDENTITY_INSERT Contract OFF;

INSERT INTO FullTimeContract (contract_id, leave_entitlement, insurance_eligibility, weekly_working_hours) VALUES 
(1, 21, 1, 40);

INSERT INTO PartTimeContract (contract_id, working_hours, hourly_rate) VALUES 
(2, 20, 120);

INSERT INTO ConsultantContract (contract_id, project_scope, fees, payment_schedule) VALUES 
(3, 'ERP System', 20000, 'Monthly');

INSERT INTO InternshipContract (contract_id, mentoring, evaluation, stipend_related) VALUES 
(4, 'HR Training', 'Monthly Review', 'Paid');

SET IDENTITY_INSERT Insurance ON;
INSERT INTO Insurance (insurance_id, type, contribution_rate, coverage) VALUES
(1, 'Social Insurance', 5.00, 'Medical & Pension'),
(2, 'Private Insurance', 3.00, 'Medical Only');
SET IDENTITY_INSERT Insurance OFF;

-- =============================================
-- Ziad's Part - Employee and Role Management
-- =============================================

SET IDENTITY_INSERT Employee ON;
INSERT INTO Employee (employee_id, first_name, last_name, full_name, national_id, date_of_birth, country_of_birth, 
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active, 
    profile_completion, department_id, position_id, manager_id, contract_id, salary_type_id, tax_form_id, pay_grade) VALUES
(1, 'John', 'Anderson', 'John Anderson', '12345678901234', '1975-03-15', 'USA',
    '+1-555-0001', 'john.anderson@company.com', '123 Executive St, New York, NY',
    'Mary Anderson', '+1-555-0002', 'Spouse',
    'Experienced CEO with 20 years in tech industry', 'Completed', 'Active', 'Active',
    '2015-01-01', 1, 100, 1, 1, NULL, 1, 1, 1, 5),
(2, 'Sarah', 'Johnson', 'Sarah Johnson', '12345678901235', '1980-06-20', 'USA',
    '+1-555-0010', 'sarah.johnson@company.com', '456 HR Blvd, New York, NY',
    'Mike Johnson', '+1-555-0011', 'Spouse',
    'HR Director with expertise in talent management', 'Completed', 'Active', 'Active',
    '2016-03-15', 1, 100, 2, 4, 1, 1, 1, 1, 4),
(3, 'Michael', 'Chen', 'Michael Chen', '12345678901236', '1982-09-10', 'Canada',
    '+1-555-0020', 'michael.chen@company.com', '789 Tech Ave, New York, NY',
    'Lisa Chen', '+1-555-0021', 'Spouse',
    'IT Manager specializing in infrastructure', 'Completed', 'Active', 'Active',
    '2017-05-01', 1, 100, 3, 5, 1, 1, 1, 1, 4),
(4, 'David', 'Miller', 'David Miller', '12345678901237', '1978-11-25', 'USA',
    '+1-555-0030', 'david.miller@company.com', '321 Finance Dr, New York, NY',
    'Emma Miller', '+1-555-0031', 'Spouse',
    'CFO with strong financial planning background', 'Completed', 'Active', 'Active',
    '2016-07-01', 1, 100, 4, 3, 1, 1, 1, 1, 5),
(5, 'Emily', 'Davis', 'Emily Davis', '12345678901238', '1990-04-12', 'USA',
    '+1-555-0040', 'emily.davis@company.com', '111 Park Lane, New York, NY',
    'Robert Davis', '+1-555-0041', 'Father',
    'HR Specialist focusing on recruitment', 'Completed', 'Active', 'Active',
    '2019-01-15', 1, 95, 2, 8, 2, 1, 1, 1, 3),
(6, 'James', 'Wilson', 'James Wilson', '12345678901239', '1988-08-30', 'UK',
    '+1-555-0050', 'james.wilson@company.com', '222 Queens St, New York, NY',
    'Anna Wilson', '+1-555-0051', 'Spouse',
    'HR Specialist handling employee relations', 'Completed', 'Active', 'Active',
    '2018-06-01', 1, 90, 2, 8, 2, 1, 1, 1, 3),
(7, 'Lisa', 'Brown', 'Lisa Brown', '12345678901240', '1985-02-18', 'USA',
    '+1-555-0060', 'lisa.brown@company.com', '333 Finance Plaza, New York, NY',
    'Tom Brown', '+1-555-0061', 'Spouse',
    'Payroll Officer with 8 years experience', 'Completed', 'Active', 'Active',
    '2017-09-01', 1, 100, 4, 9, 4, 1, 1, 1, 3),
(8, 'Robert', 'Taylor', 'Robert Taylor', '12345678901241', '1992-12-05', 'USA',
    '+1-555-0070', 'robert.taylor@company.com', '444 Money St, New York, NY',
    'Jennifer Taylor', '+1-555-0071', 'Mother',
    'Junior Payroll Officer', 'In Progress', 'Active', 'Active',
    '2020-03-15', 1, 85, 4, 9, 4, 1, 1, 1, 2),
(9, 'Kevin', 'Martinez', 'Kevin Martinez', '12345678901242', '1987-07-22', 'Mexico',
    '+1-555-0080', 'kevin.martinez@company.com', '555 Server Rd, New York, NY',
    'Maria Martinez', '+1-555-0081', 'Spouse',
    'Senior System Administrator', 'Completed', 'Active', 'Active',
    '2018-02-01', 1, 100, 3, 10, 3, 1, 1, 1, 4),
(10, 'Amanda', 'Garcia', 'Amanda Garcia', '12345678901243', '1993-05-14', 'Spain',
    '+1-555-0090', 'amanda.garcia@company.com', '666 Network Ave, New York, NY',
    'Carlos Garcia', '+1-555-0091', 'Father',
    'System Administrator', 'Completed', 'Active', 'Active',
    '2019-08-01', 1, 95, 3, 10, 3, 1, 1, 1, 3),
(11, 'Daniel', 'Lee', 'Daniel Lee', '12345678901244', '1991-03-08', 'South Korea',
    '+1-555-0100', 'daniel.lee@company.com', '777 Code St, New York, NY',
    'Susan Lee', '+1-555-0101', 'Mother',
    'Senior Software Engineer', 'Completed', 'Active', 'Active',
    '2018-11-01', 1, 100, 3, 13, 3, 1, 1, 1, 4),
(12, 'Jessica', 'White', 'Jessica White', '12345678901245', '1994-09-19', 'USA',
    '+1-555-0110', 'jessica.white@company.com', '888 Dev Blvd, New York, NY',
    'Paul White', '+1-555-0111', 'Father',
    'Software Engineer', 'Completed', 'Active', 'Active',
    '2020-01-15', 1, 90, 3, 7, 3, 1, 1, 1, 3),
(13, 'Christopher', 'Harris', 'Christopher Harris', '12345678901246', '1995-11-30', 'USA',
    '+1-555-0120', 'chris.harris@company.com', '999 Programming Ln, New York, NY',
    'Nancy Harris', '+1-555-0121', 'Mother',
    'Junior Developer', 'In Progress', 'Active', 'Active',
    '2021-06-01', 1, 75, 3, 7, 3, 1, 1, 1, 2),
(14, 'Patricia', 'Clark', 'Patricia Clark', '12345678901247', '1986-01-25', 'USA',
    '+1-555-0130', 'patricia.clark@company.com', '101 Leader Dr, New York, NY',
    'Mark Clark', '+1-555-0131', 'Spouse',
    'Team Lead for Backend Development', 'Completed', 'Active', 'Active',
    '2017-04-01', 1, 100, 3, 11, 3, 1, 1, 1, 4),
(15, 'Thomas', 'Lewis', 'Thomas Lewis', '12345678901248', '1989-06-17', 'USA',
    '+1-555-0140', 'thomas.lewis@company.com', '202 Management St, New York, NY',
    'Karen Lewis', '+1-555-0141', 'Spouse',
    'Team Lead for Frontend Development', 'Completed', 'Active', 'Active',
    '2018-08-15', 1, 100, 3, 11, 3, 1, 1, 1, 4),
(16, 'Michelle', 'Robinson', 'Michelle Robinson', '12345678901249', '1990-10-03', 'USA',
    '+1-555-0150', 'michelle.robinson@company.com', '303 Accounting Way, New York, NY',
    'Steven Robinson', '+1-555-0151', 'Spouse',
    'Senior Accountant', 'Completed', 'Active', 'Active',
    '2019-02-01', 1, 95, 4, 14, 4, 1, 1, 1, 3),
(17, 'Sophia', 'Walker', 'Sophia Walker', '12345678901250', '1999-04-20', 'USA',
    '+1-555-0160', 'sophia.walker@company.com', '404 Intern Ave, New York, NY',
    'Helen Walker', '+1-555-0161', 'Mother',
    'IT Intern learning software development', 'In Progress', 'Active', 'Active',
    '2023-09-01', 1, 60, 3, 12, 11, 4, 1, 1, 1),
(18, 'Andrew', 'Hall', 'Andrew Hall', '12345678901251', '2000-07-12', 'USA',
    '+1-555-0170', 'andrew.hall@company.com', '505 Student Rd, New York, NY',
    'Brian Hall', '+1-555-0171', 'Father',
    'HR Intern supporting recruitment', 'In Progress', 'Active', 'Active',
    '2023-09-01', 1, 55, 2, 12, 2, 4, 1, 1, 1),
(19, 'Richard', 'Young', 'Richard Young', '12345678901252', '1985-12-08', 'USA',
    '+1-555-0180', 'richard.young@company.com', '606 Former St, New York, NY',
    'Linda Young', '+1-555-0181', 'Spouse',
    'Former employee', 'Completed', 'Inactive', 'Terminated',
    '2019-01-01', 0, 100, 3, 7, 3, 2, 1, 1, 3);
SET IDENTITY_INSERT Employee OFF;

-- Update Department Heads
UPDATE Department SET department_head_id = 1 WHERE department_id = 1;
UPDATE Department SET department_head_id = 2 WHERE department_id = 2;
UPDATE Department SET department_head_id = 3 WHERE department_id = 3;
UPDATE Department SET department_head_id = 4 WHERE department_id = 4;

-- Employee Skills
INSERT INTO Employee_Skill (employee_id, skill_id, proficiency_level) VALUES
(1, 4, 'Expert'), (1, 3, 'Expert'), (1, 5, 'Expert'),
(2, 6, 'Expert'), (2, 5, 'Advanced'), (2, 4, 'Advanced'),
(3, 2, 'Expert'), (3, 9, 'Advanced'),
(4, 7, 'Expert'), (4, 8, 'Advanced'),
(5, 6, 'Advanced'), (5, 5, 'Advanced'),
(6, 6, 'Advanced'), (6, 5, 'Advanced'),
(7, 8, 'Expert'), (7, 7, 'Advanced'),
(8, 8, 'Advanced'), (8, 7, 'Intermediate'),
(9, 2, 'Advanced'), (9, 9, 'Advanced'),
(10, 2, 'Advanced'), (10, 10, 'Advanced'),
(11, 1, 'Expert'), (11, 2, 'Advanced'), (11, 12, 'Expert'),
(12, 11, 'Advanced'), (12, 1, 'Advanced'),
(13, 1, 'Beginner'), (13, 11, 'Beginner'),
(14, 1, 'Expert'), (14, 3, 'Advanced'), (14, 4, 'Advanced'),
(15, 11, 'Expert'), (15, 4, 'Advanced');

-- Employee Verifications
INSERT INTO Employee_Verification (employee_id, verification_id) VALUES
(1, 1), (1, 5), (2, 2), (2, 4), (3, 1), (3, 3),
(4, 1), (4, 5), (5, 2), (5, 4), (6, 1), (6, 4),
(7, 2), (7, 5), (8, 1), (9, 1), (9, 3), (10, 2), (10, 3);

-- Employee Notifications
INSERT INTO Employee_Notification (employee_id, notification_id, delivery_status, delivered_at) VALUES
(1, 3, 'Delivered', '2024-03-05 16:01:00'),
(2, 1, 'Delivered', '2024-01-15 09:01:00'),
(3, 3, 'Delivered', '2024-03-05 16:01:00'),
(4, 4, 'Delivered', '2024-03-31 08:01:00'),
(5, 1, 'Delivered', '2024-01-15 09:01:00'),
(6, 1, 'Delivered', '2024-01-15 09:01:00'),
(7, 4, 'Delivered', '2024-03-31 08:01:00'),
(8, 4, 'Delivered', '2024-03-31 08:01:00');

-- Roles
SET IDENTITY_INSERT Role ON;
INSERT INTO Role (role_id, role_name, purpose) VALUES
(1, 'System Administrator', 'Full system access and configuration'),
(2, 'HR Administrator', 'HR operations and employee management'),
(3, 'Payroll Officer', 'Payroll processing and salary management'),
(4, 'Line Manager', 'Team management and approval authority'),
(5, 'Employee', 'Standard employee access'),
(6, 'Executive', 'Executive level access and decision making');
SET IDENTITY_INSERT Role OFF;

-- Role Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(1, 'Manage Users', 'Create, Read, Update, Delete'),
(1, 'Manage Roles', 'Create, Read, Update, Delete'),
(1, 'System Configuration', 'Create, Update'),
(2, 'Manage Employees', 'Create, Read, Update'),
(2, 'Approve Leave', 'Approve, Reject'),
(3, 'Generate Payroll', 'Create, Read'),
(3, 'Adjust Payroll', 'Update'),
(4, 'View Team', 'Read'),
(4, 'Approve Leave', 'Approve, Reject'),
(5, 'View Own Profile', 'Read'),
(5, 'Submit Leave Request', 'Create'),
(6, 'View All Reports', 'Read'),
(6, 'Approve Major Decisions', 'Approve');

-- Employee Roles
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(1, 6, '2015-01-01'),
(2, 2, '2016-03-15'), (2, 4, '2016-03-15'),
(3, 4, '2017-05-01'),
(4, 4, '2016-07-01'),
(5, 2, '2019-01-15'), (5, 5, '2019-01-15'),
(6, 2, '2018-06-01'), (6, 5, '2018-06-01'),
(7, 3, '2017-09-01'), (7, 5, '2017-09-01'),
(8, 3, '2020-03-15'), (8, 5, '2020-03-15'),
(9, 1, '2018-02-01'), (9, 5, '2018-02-01'),
(10, 1, '2019-08-01'), (10, 5, '2019-08-01'),
(11, 5, '2018-11-01'),
(12, 5, '2020-01-15'),
(13, 5, '2021-06-01'),
(14, 4, '2017-04-01'), (14, 5, '2017-04-01'),
(15, 4, '2018-08-15'), (15, 5, '2018-08-15');

-- HR Administrators
INSERT INTO HRAdministrator (employee_id, approval_level, record_access_scope, document_validation_rights) VALUES
(2, 'Chief', 'All Departments', 'Full Validation Rights'),
(5, 'Senior', 'HR Department', 'Standard Validation'),
(6, 'Junior', 'HR Department', 'Basic Validation');

-- System Administrators
INSERT INTO SystemAdministrator (employee_id, system_privilege_level, configurable_fields, audit_visibility_scope) VALUES
(9, 'Super', 'All System Fields', 'Full Audit Access'),
(10, 'Senior', 'Standard System Fields', 'Department Level Audit');

-- Payroll Specialists
INSERT INTO PayrollSpecialist (employee_id, assigned_region, processing_frequency, last_processed_period) VALUES
(7, 'North America', 'Monthly', '2024-10-31'),
(8, 'North America', 'Monthly', '2024-10-31');

-- Line Managers
INSERT INTO LineManager (employee_id, team_size, supervised_departments, approval_limit) VALUES
(2, 3, 'Human Resources', 50000.00),
(3, 8, 'Information Technology', 75000.00),
(4, 3, 'Finance', 100000.00),
(14, 4, 'IT - Backend Team', 25000.00),
(15, 3, 'IT - Frontend Team', 25000.00);

-- Employee Hierarchy
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(2, 1, 2), (3, 1, 2), (4, 1, 2),
(5, 2, 3), (6, 2, 3), (18, 2, 3),
(7, 4, 3), (8, 4, 3), (16, 4, 3),
(9, 3, 3), (10, 3, 3), (14, 3, 3), (15, 3, 3),
(11, 14, 4), (12, 14, 4), (13, 15, 4), (17, 15, 4);

-- Manager Notes
INSERT INTO ManagerNotes (employee_id, manager_id, note_content, created_at) VALUES
(5, 2, 'Excellent performance in Q3 recruitment drive.', '2024-10-15 10:30:00'),
(11, 14, 'Outstanding code quality. Completed refactoring ahead of schedule.', '2024-10-01 09:00:00'),
(13, 15, 'Showing good progress. Completed first major feature independently.', '2024-10-20 11:20:00');

-- Approval Workflows
SET IDENTITY_INSERT ApprovalWorkflow ON;
INSERT INTO ApprovalWorkflow (workflow_id, workflow_type, threshold_amount, approver_role, created_by, status) VALUES
(1, 'Leave', NULL, 'Line Manager', 2, 'Active'),
(2, 'Payroll Adjustment', 5000.00, 'Payroll Officer', 7, 'Active'),
(3, 'Time Correction', NULL, 'Line Manager', 9, 'Active');
SET IDENTITY_INSERT ApprovalWorkflow OFF;

-- Approval Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(1, 1, 4, 'Review and Approve/Reject Leave Request'),
(2, 1, 3, 'Review Adjustment'),
(3, 1, 4, 'Review and Approve Time Correction');

PRINT 'Ziad''s part completed successfully!';
