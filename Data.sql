-- =============================================
------------------Ziad's Part-------------------
-- =============================================
-- CEO and Top Management
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth, 
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active, 
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('John', 'Anderson', 'John Anderson', '12345678901234', '1975-03-15', 'USA',
    '+1-555-0001', 'john.anderson@company.com', '123 Executive St, New York, NY',
    'Mary Anderson', '+1-555-0002', 'Spouse',
    'Experienced CEO with 20 years in tech industry', 'Completed', 'Active', 'Active',
    '2015-01-01', 1, 100, 1, 1, NULL, 1);

-- HR Director (will manage HR team)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Sarah', 'Johnson', 'Sarah Johnson', '12345678901235', '1980-06-20', 'USA',
    '+1-555-0010', 'sarah.johnson@company.com', '456 HR Blvd, New York, NY',
    'Mike Johnson', '+1-555-0011', 'Spouse',
    'HR Director with expertise in talent management', 'Completed', 'Active', 'Active',
    '2016-03-15', 1, 100, 2, 4, 1, 1);

-- IT Manager (will manage IT team)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Michael', 'Chen', 'Michael Chen', '12345678901236', '1982-09-10', 'Canada',
    '+1-555-0020', 'michael.chen@company.com', '789 Tech Ave, New York, NY',
    'Lisa Chen', '+1-555-0021', 'Spouse',
    'IT Manager specializing in infrastructure', 'Completed', 'Active', 'Active',
    '2017-05-01', 1, 100, 3, 5, 1, 1);

-- Finance Manager
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('David', 'Miller', 'David Miller', '12345678901237', '1978-11-25', 'USA',
    '+1-555-0030', 'david.miller@company.com', '321 Finance Dr, New York, NY',
    'Emma Miller', '+1-555-0031', 'Spouse',
    'CFO with strong financial planning background', 'Completed', 'Active', 'Active',
    '2016-07-01', 1, 100, 4, 3, 1, 1);

-- HR Specialists (report to HR Director)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Emily', 'Davis', 'Emily Davis', '12345678901238', '1990-04-12', 'USA',
    '+1-555-0040', 'emily.davis@company.com', '111 Park Lane, New York, NY',
    'Robert Davis', '+1-555-0041', 'Father',
    'HR Specialist focusing on recruitment', 'Completed', 'Active', 'Active',
    '2019-01-15', 1, 95, 2, 10, 2, 1),
('James', 'Wilson', 'James Wilson', '12345678901239', '1988-08-30', 'UK',
    '+1-555-0050', 'james.wilson@company.com', '222 Queens St, New York, NY',
    'Anna Wilson', '+1-555-0051', 'Spouse',
    'HR Specialist handling employee relations', 'Completed', 'Active', 'Active',
    '2018-06-01', 1, 90, 2, 10, 2, 1);

-- Payroll Officers (report to Finance Manager)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Lisa', 'Brown', 'Lisa Brown', '12345678901240', '1985-02-18', 'USA',
    '+1-555-0060', 'lisa.brown@company.com', '333 Finance Plaza, New York, NY',
    'Tom Brown', '+1-555-0061', 'Spouse',
    'Payroll Officer with 8 years experience', 'Completed', 'Active', 'Active',
    '2017-09-01', 1, 100, 4, 11, 4, 1),
('Robert', 'Taylor', 'Robert Taylor', '12345678901241', '1992-12-05', 'USA',
    '+1-555-0070', 'robert.taylor@company.com', '444 Money St, New York, NY',
    'Jennifer Taylor', '+1-555-0071', 'Mother',
    'Junior Payroll Officer', 'In Progress', 'Active', 'Active',
    '2020-03-15', 1, 85, 4, 11, 4, 1);

-- System Administrators (report to IT Manager)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Kevin', 'Martinez', 'Kevin Martinez', '12345678901242', '1987-07-22', 'Mexico',
    '+1-555-0080', 'kevin.martinez@company.com', '555 Server Rd, New York, NY',
    'Maria Martinez', '+1-555-0081', 'Spouse',
    'Senior System Administrator', 'Completed', 'Active', 'Active',
    '2018-02-01', 1, 100, 3, 12, 3, 1),
('Amanda', 'Garcia', 'Amanda Garcia', '12345678901243', '1993-05-14', 'Spain',
    '+1-555-0090', 'amanda.garcia@company.com', '666 Network Ave, New York, NY',
    'Carlos Garcia', '+1-555-0091', 'Father',
    'System Administrator', 'Completed', 'Active', 'Active',
    '2019-08-01', 1, 95, 3, 12, 3, 1);

-- Software Developers (report to IT Manager)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Daniel', 'Lee', 'Daniel Lee', '12345678901244', '1991-03-08', 'South Korea',
    '+1-555-0100', 'daniel.lee@company.com', '777 Code St, New York, NY',
    'Susan Lee', '+1-555-0101', 'Mother',
    'Senior Software Engineer', 'Completed', 'Active', 'Active',
    '2018-11-01', 1, 100, 3, 7, 3, 1),
('Jessica', 'White', 'Jessica White', '12345678901245', '1994-09-19', 'USA',
    '+1-555-0110', 'jessica.white@company.com', '888 Dev Blvd, New York, NY',
    'Paul White', '+1-555-0111', 'Father',
    'Software Engineer', 'Completed', 'Active', 'Active',
    '2020-01-15', 1, 90, 3, 6, 3, 1),
('Christopher', 'Harris', 'Christopher Harris', '12345678901246', '1995-11-30', 'USA',
    '+1-555-0120', 'chris.harris@company.com', '999 Programming Ln, New York, NY',
    'Nancy Harris', '+1-555-0121', 'Mother',
    'Junior Developer', 'In Progress', 'Active', 'Active',
    '2021-06-01', 1, 75, 3, 8, 3, 1);

-- Team Leads (report to IT Manager)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Patricia', 'Clark', 'Patricia Clark', '12345678901247', '1986-01-25', 'USA',
    '+1-555-0130', 'patricia.clark@company.com', '101 Leader Dr, New York, NY',
    'Mark Clark', '+1-555-0131', 'Spouse',
    'Team Lead for Backend Development', 'Completed', 'Active', 'Active',
    '2017-04-01', 1, 100, 3, 13, 3, 1),
('Thomas', 'Lewis', 'Thomas Lewis', '12345678901248', '1989-06-17', 'USA',
    '+1-555-0140', 'thomas.lewis@company.com', '202 Management St, New York, NY',
    'Karen Lewis', '+1-555-0141', 'Spouse',
    'Team Lead for Frontend Development', 'Completed', 'Active', 'Active',
    '2018-08-15', 1, 100, 3, 13, 3, 1);

-- Accountants (report to Finance Manager)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Michelle', 'Robinson', 'Michelle Robinson', '12345678901249', '1990-10-03', 'USA',
    '+1-555-0150', 'michelle.robinson@company.com', '303 Accounting Way, New York, NY',
    'Steven Robinson', '+1-555-0151', 'Spouse',
    'Senior Accountant', 'Completed', 'Active', 'Active',
    '2019-02-01', 1, 95, 4, 9, 4, 1);

-- Interns (various departments)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Sophia', 'Walker', 'Sophia Walker', '12345678901250', '1999-04-20', 'USA',
    '+1-555-0160', 'sophia.walker@company.com', '404 Intern Ave, New York, NY',
    'Helen Walker', '+1-555-0161', 'Mother',
    'IT Intern learning software development', 'In Progress', 'Active', 'Active',
    '2023-09-01', 1, 60, 3, 15, 11, 1),
('Andrew', 'Hall', 'Andrew Hall', '12345678901251', '2000-07-12', 'USA',
    '+1-555-0170', 'andrew.hall@company.com', '505 Student Rd, New York, NY',
    'Brian Hall', '+1-555-0171', 'Father',
    'HR Intern supporting recruitment', 'In Progress', 'Active', 'Active',
    '2023-09-01', 1, 55, 2, 15, 2, 1);

-- Inactive/Past Employees (for testing scenarios)
INSERT INTO Employee (first_name, last_name, full_name, national_id, date_of_birth, country_of_birth,
    phone, email, address, emergency_contact_name, emergency_contact_phone, relationship,
    biography, employment_progress, account_status, employment_status, hire_date, is_active,
    profile_completion, department_id, position_id, manager_id, salary_type_id) VALUES
('Richard', 'Young', 'Richard Young', '12345678901252', '1985-12-08', 'USA',
    '+1-555-0180', 'richard.young@company.com', '606 Former St, New York, NY',
    'Linda Young', '+1-555-0181', 'Spouse',
    'Former employee', 'Completed', 'Inactive', 'Terminated',
    '2019-01-01', 0, 100, 3, 6, 3, 1);

-- =============================================
-- 2. INSERT ROLES
-- =============================================
INSERT INTO Role (role_name, purpose) VALUES
('System Administrator', 'Full system access and configuration'),
('HR Administrator', 'HR operations and employee management'),
('Payroll Officer', 'Payroll processing and salary management'),
('Line Manager', 'Team management and approval authority'),
('Employee', 'Standard employee access'),
('Executive', 'Executive level access and decision making'),
('Payroll Specialist', 'Advanced payroll configuration');

-- =============================================
-- 3. INSERT ROLE PERMISSIONS
-- =============================================
-- System Administrator Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(1, 'Manage Users', 'Create, Read, Update, Delete'),
(1, 'Manage Roles', 'Create, Read, Update, Delete'),
(1, 'Manage Hierarchy', 'Create, Read, Update, Delete'),
(1, 'Manage Shifts', 'Create, Read, Update, Delete'),
(1, 'Manage Attendance', 'Create, Read, Update, Delete'),
(1, 'View All Data', 'Read'),
(1, 'System Configuration', 'Create, Update');

-- HR Administrator Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(2, 'Manage Employees', 'Create, Read, Update'),
(2, 'Manage Contracts', 'Create, Read, Update'),
(2, 'Approve Leave', 'Approve, Reject'),
(2, 'Manage Leave Policies', 'Create, Read, Update'),
(2, 'View Payroll Summary', 'Read'),
(2, 'Manage Missions', 'Create, Read, Update'),
(2, 'Manage Profiles', 'Create, Read, Update');

-- Payroll Officer Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(3, 'Generate Payroll', 'Create, Read'),
(3, 'Adjust Payroll', 'Update'),
(3, 'View Payroll History', 'Read'),
(3, 'Manage Allowances', 'Create, Read, Update'),
(3, 'Sync Attendance to Payroll', 'Execute'),
(3, 'Configure Pay Grades', 'Create, Read, Update');

-- Line Manager Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(4, 'View Team', 'Read'),
(4, 'Approve Leave', 'Approve, Reject'),
(4, 'Manage Team Shifts', 'Create, Read, Update'),
(4, 'View Team Attendance', 'Read'),
(4, 'Approve Time Requests', 'Approve, Reject'),
(4, 'Add Manager Notes', 'Create, Read');

-- Employee Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(5, 'View Own Profile', 'Read'),
(5, 'Update Own Contact', 'Update'),
(5, 'Submit Leave Request', 'Create'),
(5, 'View Own Payroll', 'Read'),
(5, 'Record Attendance', 'Create'),
(5, 'View Own Shifts', 'Read');

-- Executive Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(6, 'View All Reports', 'Read'),
(6, 'Approve Major Decisions', 'Approve'),
(6, 'Override Decisions', 'Update'),
(6, 'Access All Departments', 'Read');

-- Payroll Specialist Permissions
INSERT INTO RolePermission (role_id, permission_name, allowed_action) VALUES
(7, 'Configure Payroll Policies', 'Create, Read, Update'),
(7, 'Configure Insurance', 'Create, Read, Update'),
(7, 'Manage Tax Rules', 'Create, Read, Update'),
(7, 'Configure Overtime Rules', 'Create, Read, Update');

-- =============================================
-- 4. INSERT EMPLOYEE_ROLE (Assign roles to employees)
-- =============================================
-- CEO - Executive role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(1, 6, '2015-01-01');

-- HR Director - HR Administrator role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(2, 2, '2016-03-15'),
(2, 4, '2016-03-15'); -- Also a Line Manager

-- IT Manager - Line Manager role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(3, 4, '2017-05-01');

-- Finance Manager - Line Manager role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(4, 4, '2016-07-01');

-- HR Specialists - HR Admin + Employee
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(5, 2, '2019-01-15'),
(5, 5, '2019-01-15'),
(6, 2, '2018-06-01'),
(6, 5, '2018-06-01');

-- Payroll Officers - Payroll Officer role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(7, 3, '2017-09-01'),
(7, 5, '2017-09-01'),
(8, 3, '2020-03-15'),
(8, 5, '2020-03-15');

-- System Administrators - System Admin role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(9, 1, '2018-02-01'),
(9, 5, '2018-02-01'),
(10, 1, '2019-08-01'),
(10, 5, '2019-08-01');

-- Developers - Employee role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(11, 5, '2018-11-01'),
(12, 5, '2020-01-15'),
(13, 5, '2021-06-01');

-- Team Leads - Line Manager + Employee
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(14, 4, '2017-04-01'),
(14, 5, '2017-04-01'),
(15, 4, '2018-08-15'),
(15, 5, '2018-08-15');

-- Accountant - Employee role
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(16, 5, '2019-02-01');

-- Interns - Employee role only
INSERT INTO Employee_Role (employee_id, role_id, assigned_date) VALUES
(17, 5, '2023-09-01'),
(18, 5, '2023-09-01');

-- =============================================
-- 5. INSERT HR ADMINISTRATORS
-- =============================================
INSERT INTO HRAdministrator (employee_id, approval_level, record_access_scope, document_validation_rights) VALUES
(2, 'Chief', 'All Departments', 'Full Validation Rights'),
(5, 'Senior', 'HR Department', 'Standard Validation'),
(6, 'Junior', 'HR Department', 'Basic Validation');

-- =============================================
-- 6. INSERT SYSTEM ADMINISTRATORS
-- =============================================
INSERT INTO SystemAdministrator (employee_id, system_privilege_level, configurable_fields, audit_visibility_scope) VALUES
(9, 'Super', 'All System Fields', 'Full Audit Access'),
(10, 'Senior', 'Standard System Fields', 'Department Level Audit');

-- =============================================
-- 7. INSERT PAYROLL SPECIALISTS
-- =============================================
INSERT INTO PayrollSpecialist (employee_id, assigned_region, processing_frequency, last_processed_period) VALUES
(7, 'North America', 'Monthly', '2024-10-31'),
(8, 'North America', 'Monthly', '2024-10-31');

-- =============================================
-- 8. INSERT LINE MANAGERS
-- =============================================
INSERT INTO LineManager (employee_id, team_size, supervised_departments, approval_limit) VALUES
(2, 3, 'Human Resources', 50000.00),
(3, 8, 'Information Technology', 75000.00),
(4, 3, 'Finance', 100000.00),
(14, 4, 'IT - Backend Team', 25000.00),
(15, 3, 'IT - Frontend Team', 25000.00);

-- =============================================
-- 9. INSERT EMPLOYEE HIERARCHY
-- =============================================
-- CEO at top (no manager)
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(1, NULL, 1);

-- Department Heads report to CEO
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(2, 1, 2), -- HR Director
(3, 1, 2), -- IT Manager
(4, 1, 2); -- Finance Manager

-- HR Team reports to HR Director
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(5, 2, 3), -- HR Specialist
(6, 2, 3), -- HR Specialist
(18, 2, 3); -- HR Intern

-- Finance Team reports to Finance Manager
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(7, 4, 3), -- Payroll Officer
(8, 4, 3), -- Payroll Officer
(16, 4, 3); -- Accountant

-- IT Team - Team Leads report to IT Manager
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(9, 3, 3),  -- System Admin
(10, 3, 3), -- System Admin
(14, 3, 3), -- Team Lead
(15, 3, 3); -- Team Lead

-- Developers report to Team Leads
INSERT INTO EmployeeHierarchy (employee_id, manager_id, hierarchy_level) VALUES
(11, 14, 4), -- Senior Dev to Backend Lead
(12, 14, 4), -- Developer to Backend Lead
(13, 15, 4), -- Junior Dev to Frontend Lead
(17, 15, 4); -- IT Intern to Frontend Lead

-- =============================================
-- 10. INSERT MANAGER NOTES
-- =============================================
INSERT INTO ManagerNotes (employee_id, manager_id, note_content, created_at) VALUES
(5, 2, 'Excellent performance in Q3 recruitment drive. Hired 5 quality candidates.', '2024-10-15 10:30:00'),
(6, 2, 'Good handling of employee conflict resolution case. Shows strong mediation skills.', '2024-09-20 14:15:00'),
(11, 14, 'Outstanding code quality. Completed backend refactoring 2 weeks ahead of schedule.', '2024-10-01 09:00:00'),
(12, 14, 'Needs improvement in code documentation. Discussed best practices.', '2024-09-15 16:45:00'),
(13, 15, 'Showing good progress. Completed first major feature independently.', '2024-10-20 11:20:00'),
(17, 15, 'Eager learner. Completed training modules ahead of schedule.', '2024-10-10 13:30:00'),
(7, 4, 'Processed October payroll accurately with zero errors. Excellent attention to detail.', '2024-11-01 10:00:00'),
(16, 4, 'Completed Q3 financial reporting efficiently. Ready for more responsibility.', '2024-10-05 15:00:00');

-- =============================================
-- 11. INSERT APPROVAL WORKFLOWS
-- =============================================
-- Leave Approval Workflow
INSERT INTO ApprovalWorkflow (workflow_type, threshold_amount, approver_role, created_by, status) VALUES
('Leave', NULL, 'Line Manager', 2, 'Active'),
('Leave - Extended', NULL, 'HR Administrator', 2, 'Active'),
('Leave - Special', NULL, 'Executive', 2, 'Active');

-- Payroll Approval Workflow
INSERT INTO ApprovalWorkflow (workflow_type, threshold_amount, approver_role, created_by, status) VALUES
('Payroll Adjustment', 5000.00, 'Payroll Officer', 7, 'Active'),
('Payroll Adjustment - Major', 20000.00, 'Line Manager', 7, 'Active'),
('Payroll Configuration', NULL, 'Executive', 7, 'Active');

-- Time Correction Workflow
INSERT INTO ApprovalWorkflow (workflow_type, threshold_amount, approver_role, created_by, status) VALUES
('Time Correction', NULL, 'Line Manager', 9, 'Active'),
('Attendance Override', NULL, 'HR Administrator', 9, 'Active');

-- Expense Reimbursement Workflow
INSERT INTO ApprovalWorkflow (workflow_type, threshold_amount, approver_role, created_by, status) VALUES
('Expense - Standard', 1000.00, 'Line Manager', 2, 'Active'),
('Expense - Major', 5000.00, 'Executive', 2, 'Active');

-- Policy Change Workflow
INSERT INTO ApprovalWorkflow (workflow_type, threshold_amount, approver_role, created_by, status) VALUES
('Policy Update', NULL, 'HR Administrator', 2, 'Active'),
('Major Policy Change', NULL, 'Executive', 2, 'Active');

-- =============================================
-- 12. INSERT APPROVAL WORKFLOW STEPS
-- =============================================
-- Leave Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(1, 1, 4, 'Review and Approve/Reject Leave Request'), -- Line Manager
(1, 2, 2, 'Final Approval if > 10 days'); -- HR Administrator

-- Extended Leave Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(2, 1, 4, 'Initial Review'), -- Line Manager
(2, 2, 2, 'HR Review and Approval'), -- HR Administrator
(2, 3, 6, 'Executive Approval if > 30 days'); -- Executive

-- Payroll Adjustment Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(4, 1, 3, 'Review Adjustment'), -- Payroll Officer
(4, 2, 4, 'Manager Approval'); -- Line Manager

-- Major Payroll Adjustment Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(5, 1, 3, 'Initial Review'), -- Payroll Officer
(5, 2, 4, 'Manager Review'), -- Line Manager
(5, 3, 6, 'Executive Approval'); -- Executive

-- Time Correction Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(7, 1, 4, 'Review and Approve Time Correction'); -- Line Manager

-- Expense Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(9, 1, 4, 'Review and Approve Expense'); -- Line Manager (Standard Expense)

-- Major Expense Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(10, 1, 4, 'Initial Review'), -- Line Manager
(10, 2, 6, 'Executive Approval'); -- Executive (Major Expense)

-- Policy Update Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(11, 1, 2, 'HR Review and Approval'); -- HR Administrator

-- Major Policy Change Workflow Steps
INSERT INTO ApprovalWorkflowStep (workflow_id, step_number, role_id, action_required) VALUES
(12, 1, 2, 'HR Review'), -- HR Administrator
(12, 2, 6, 'Executive Approval'); -- Executive

-- =============================================
----------------Ziad END-------------------------------------------------------------------
-- =============================================




-- =============================================
-- Yousef Part: Data Insertion Script
-- Tables: Position, Department, Skill, Employee_Skill, 
--         Verification, Employee_Verification, 
--         Notification, Employee_Notification
-- =============================================

-- Note: This script assumes Employee table has been populated
-- with at least employees with IDs 1-30

-- =============================================
-- 1. Insert Departments
-- =============================================
SET IDENTITY_INSERT Department ON;

INSERT INTO Department (department_id, department_name, purpose, department_head_id)
VALUES
    (1, 'Human Resources', 'Manage employee relations, recruitment, and HR policies', NULL),
    (2, 'Information Technology', 'Manage company IT infrastructure and software development', NULL),
    (3, 'Finance', 'Manage financial operations, accounting, and budgeting', NULL),
    (4, 'Sales', 'Drive revenue through customer acquisition and retention', NULL),
    (5, 'Marketing', 'Promote company products and manage brand identity', NULL),
    (6, 'Operations', 'Oversee daily business operations and logistics', NULL),
    (7, 'Customer Support', 'Provide customer service and technical support', NULL),
    (8, 'Research and Development', 'Innovate and develop new products and solutions', NULL),
    (9, 'Legal', 'Handle legal matters and ensure regulatory compliance', NULL),
    (10, 'Administration', 'Manage general administrative functions', NULL);

SET IDENTITY_INSERT Department OFF;

-- Update department heads (assuming employees exist)
UPDATE Department SET department_head_id = 5 WHERE department_id = 1; -- HR Head
UPDATE Department SET department_head_id = 8 WHERE department_id = 2; -- IT Head
UPDATE Department SET department_head_id = 10 WHERE department_id = 3; -- Finance Head
UPDATE Department SET department_head_id = 12 WHERE department_id = 4; -- Sales Head
UPDATE Department SET department_head_id = 15 WHERE department_id = 5; -- Marketing Head

-- =============================================
-- 2. Insert Positions
-- =============================================
SET IDENTITY_INSERT Position ON;

INSERT INTO Position (position_id, position_title, responsibilities, status)
VALUES
    (1, 'CEO', 'Lead company strategy and overall operations', 'Active'),
    (2, 'CTO', 'Oversee technology strategy and IT operations', 'Active'),
    (3, 'CFO', 'Manage financial planning and risk management', 'Active'),
    (4, 'HR Manager', 'Manage HR department and employee relations', 'Active'),
    (5, 'IT Manager', 'Supervise IT team and infrastructure', 'Active'),
    (6, 'Finance Manager', 'Oversee accounting and financial reporting', 'Active'),
    (7, 'Sales Manager', 'Lead sales team and drive revenue', 'Active'),
    (8, 'Marketing Manager', 'Develop marketing strategies and campaigns', 'Active'),
    (9, 'Software Engineer', 'Develop and maintain software applications', 'Active'),
    (10, 'Senior Software Engineer', 'Lead technical projects and mentor junior developers', 'Active'),
    (11, 'Data Analyst', 'Analyze business data and provide insights', 'Active'),
    (12, 'HR Specialist', 'Handle recruitment and employee onboarding', 'Active'),
    (13, 'Accountant', 'Manage financial records and transactions', 'Active'),
    (14, 'Sales Representative', 'Sell products and services to customers', 'Active'),
    (15, 'Marketing Specialist', 'Execute marketing campaigns and content creation', 'Active'),
    (16, 'Customer Support Agent', 'Assist customers with inquiries and issues', 'Active'),
    (17, 'Operations Coordinator', 'Coordinate daily operational activities', 'Active'),
    (18, 'Legal Counsel', 'Provide legal advice and handle contracts', 'Active'),
    (19, 'Administrative Assistant', 'Provide administrative support', 'Active'),
    (20, 'Payroll Officer', 'Process payroll and manage compensation', 'Active'),
    (21, 'DevOps Engineer', 'Manage deployment and infrastructure automation', 'Active'),
    (22, 'UX Designer', 'Design user interfaces and experiences', 'Active'),
    (23, 'Project Manager', 'Plan and oversee project execution', 'Active'),
    (24, 'Business Analyst', 'Analyze business requirements and processes', 'Active'),
    (25, 'QA Engineer', 'Test software and ensure quality standards', 'Active'),
    (26, 'Intern', 'Learn and assist with various tasks', 'Active'),
    (27, 'Consultant', 'Provide expert advice on specific projects', 'Active'),
    (28, 'Security Analyst', 'Monitor and protect IT security', 'Active'),
    (29, 'Content Writer', 'Create written content for marketing', 'Active'),
    (30, 'System Administrator', 'Maintain and configure computer systems', 'Inactive');

SET IDENTITY_INSERT Position OFF;

-- =============================================
-- 3. Insert Skills
-- =============================================
SET IDENTITY_INSERT Skill ON;

INSERT INTO Skill (skill_id, skill_name, description)
VALUES
    (1, 'Python Programming', 'Proficiency in Python programming language'),
    (2, 'Java Development', 'Expertise in Java application development'),
    (3, 'SQL Database Management', 'Database design and SQL query optimization'),
    (4, 'Project Management', 'Planning and executing projects effectively'),
    (5, 'Leadership', 'Leading and motivating teams'),
    (6, 'Communication', 'Effective verbal and written communication'),
    (7, 'Data Analysis', 'Analyzing and interpreting complex data'),
    (8, 'Machine Learning', 'Implementing ML algorithms and models'),
    (9, 'Cloud Computing', 'AWS, Azure, or GCP platform expertise'),
    (10, 'DevOps', 'CI/CD pipelines and infrastructure automation'),
    (11, 'JavaScript', 'Frontend and backend JavaScript development'),
    (12, 'React', 'Building user interfaces with React'),
    (13, 'Angular', 'Developing applications with Angular framework'),
    (14, 'Node.js', 'Server-side JavaScript development'),
    (15, 'HTML/CSS', 'Web markup and styling'),
    (16, 'Agile Methodologies', 'Scrum, Kanban project management'),
    (17, 'Financial Analysis', 'Financial modeling and analysis'),
    (18, 'HR Management', 'Human resources best practices'),
    (19, 'Marketing Strategy', 'Developing marketing plans and campaigns'),
    (20, 'Sales Techniques', 'Effective selling and negotiation'),
    (21, 'Customer Service', 'Providing excellent customer support'),
    (22, 'Technical Writing', 'Creating technical documentation'),
    (23, 'UI/UX Design', 'User interface and experience design'),
    (24, 'Cybersecurity', 'Information security and threat protection'),
    (25, 'Docker', 'Container orchestration and management'),
    (26, 'Kubernetes', 'Container orchestration platform'),
    (27, 'Git Version Control', 'Source code version management'),
    (28, 'REST API Design', 'Designing RESTful web services'),
    (29, 'Microservices', 'Microservices architecture design'),
    (30, 'Excel Advanced', 'Advanced Excel formulas and data analysis'),
    (31, 'PowerBI', 'Data visualization and business intelligence'),
    (32, 'Tableau', 'Data visualization platform'),
    (33, 'Public Speaking', 'Presenting to audiences effectively'),
    (34, 'Negotiation', 'Contract and deal negotiation skills'),
    (35, 'Time Management', 'Efficiently managing time and priorities'),
    (36, 'Problem Solving', 'Analytical thinking and solution finding'),
    (37, 'Adobe Creative Suite', 'Photoshop, Illustrator, InDesign'),
    (38, 'Video Editing', 'Video production and editing'),
    (39, 'SEO/SEM', 'Search engine optimization and marketing'),
    (40, 'Content Marketing', 'Creating and distributing valuable content');

SET IDENTITY_INSERT Skill OFF;

-- =============================================
-- 4. Insert Employee_Skill (assuming employees 1-30 exist)
-- =============================================
INSERT INTO Employee_Skill (employee_id, skill_id, proficiency_level)
VALUES
    -- CEO (employee 1)
    (1, 5, 'Expert'), (1, 4, 'Expert'), (1, 6, 'Expert'),
    -- CTO (employee 2)
    (2, 1, 'Expert'), (2, 9, 'Expert'), (2, 10, 'Advanced'),
    -- CFO (employee 3)
    (3, 17, 'Expert'), (3, 30, 'Advanced'), (3, 7, 'Advanced'),
    -- HR Manager (employee 5)
    (5, 18, 'Expert'), (5, 6, 'Advanced'), (5, 5, 'Advanced'),
    -- IT Manager (employee 8)
    (8, 3, 'Expert'), (8, 9, 'Advanced'), (8, 24, 'Advanced'),
    -- Software Engineers (employees 9-14)
    (9, 1, 'Advanced'), (9, 3, 'Intermediate'), (9, 27, 'Advanced'),
    (10, 2, 'Expert'), (10, 28, 'Advanced'), (10, 29, 'Advanced'),
    (11, 11, 'Advanced'), (11, 12, 'Advanced'), (11, 15, 'Expert'),
    (12, 14, 'Advanced'), (12, 11, 'Expert'), (12, 3, 'Intermediate'),
    (13, 1, 'Intermediate'), (13, 8, 'Advanced'), (13, 7, 'Advanced'),
    (14, 2, 'Advanced'), (14, 3, 'Advanced'), (14, 16, 'Intermediate'),
    -- Data Analyst (employee 15)
    (15, 7, 'Expert'), (15, 31, 'Advanced'), (15, 32, 'Advanced'),
    -- HR Specialist (employee 16)
    (16, 18, 'Advanced'), (16, 6, 'Advanced'), (16, 35, 'Intermediate'),
    -- Accountant (employee 17)
    (17, 17, 'Advanced'), (17, 30, 'Expert'), (17, 7, 'Intermediate'),
    -- Sales Representatives (employees 18-19)
    (18, 20, 'Advanced'), (18, 34, 'Advanced'), (18, 6, 'Advanced'),
    (19, 20, 'Intermediate'), (19, 6, 'Intermediate'), (19, 35, 'Intermediate'),
    -- Marketing Specialists (employees 20-21)
    (20, 19, 'Advanced'), (20, 39, 'Advanced'), (20, 40, 'Advanced'),
    (21, 37, 'Advanced'), (21, 38, 'Intermediate'), (21, 29, 'Intermediate'),
    -- Customer Support (employees 22-23)
    (22, 21, 'Advanced'), (22, 6, 'Advanced'), (22, 36, 'Advanced'),
    (23, 21, 'Intermediate'), (23, 6, 'Intermediate'), (23, 35, 'Intermediate'),
    -- DevOps Engineer (employee 24)
    (24, 10, 'Expert'), (24, 25, 'Advanced'), (24, 26, 'Advanced'),
    -- UX Designer (employee 25)
    (25, 23, 'Expert'), (25, 37, 'Advanced'), (25, 12, 'Intermediate'),
    -- QA Engineer (employee 26)
    (26, 1, 'Intermediate'), (26, 11, 'Intermediate'), (26, 36, 'Advanced'),
    -- Intern (employee 27)
    (27, 1, 'Beginner'), (27, 15, 'Beginner'), (27, 27, 'Beginner'),
    -- Consultant (employee 28)
    (28, 4, 'Expert'), (28, 5, 'Expert'), (28, 33, 'Expert'),
    -- Security Analyst (employee 29)
    (29, 24, 'Expert'), (29, 9, 'Advanced'), (29, 10, 'Advanced'),
    -- Payroll Officer (employee 30)
    (30, 30, 'Expert'), (30, 17, 'Advanced'), (30, 35, 'Advanced');

-- =============================================
-- 5. Insert Verifications
-- =============================================
SET IDENTITY_INSERT Verification ON;

INSERT INTO Verification (verification_id, verification_type, issuer, issue_date, expiry_period)
VALUES
    (1, 'Degree', 'Cairo University', '2015-06-15', NULL),
    (2, 'Degree', 'American University in Cairo', '2016-06-20', NULL),
    (3, 'Degree', 'Ain Shams University', '2017-06-10', NULL),
    (4, 'Certificate', 'AWS', '2023-01-15', 1095), -- 3 years
    (5, 'Certificate', 'Microsoft Azure', '2023-03-20', 730), -- 2 years
    (6, 'Certificate', 'Google Cloud', '2022-11-10', 730),
    (7, 'Certificate', 'PMP Certification', '2021-08-15', 1095),
    (8, 'Certificate', 'SHRM-CP', '2022-05-20', 1095),
    (9, 'Certificate', 'CPA', '2020-12-01', NULL),
    (10, 'Certificate', 'Certified Scrum Master', '2023-02-10', 730),
    (11, 'License', 'Driving License', '2019-03-15', 3650), -- 10 years
    (12, 'Certificate', 'CISSP', '2022-09-25', 1095),
    (13, 'Certificate', 'CompTIA Security+', '2023-04-12', 1095),
    (14, 'Background Check', 'National Security Agency', '2023-06-01', 365),
    (15, 'Background Check', 'HR Background Services', '2023-07-15', 365),
    (16, 'Certificate', 'Oracle Database Administrator', '2021-10-20', 730),
    (17, 'Certificate', 'Salesforce Administrator', '2023-01-30', 730),
    (18, 'Certificate', 'Google Analytics', '2022-12-05', 730),
    (19, 'Certificate', 'HubSpot Inbound Marketing', '2023-03-15', NULL),
    (20, 'Degree', 'German University in Cairo', '2018-07-20', NULL),
    (21, 'Certificate', 'ITIL Foundation', '2022-08-10', NULL),
    (22, 'Certificate', 'Six Sigma Green Belt', '2021-11-15', NULL),
    (23, 'Certificate', 'Digital Marketing Certificate', '2023-02-28', 730),
    (24, 'Medical Certificate', 'Ministry of Health', '2023-06-15', 365),
    (25, 'Certificate', 'First Aid Training', '2023-05-20', 730);

SET IDENTITY_INSERT Verification OFF;

-- =============================================
-- 6. Insert Employee_Verification
-- =============================================
INSERT INTO Employee_Verification (employee_id, verification_id)
VALUES
    -- CEO verifications
    (1, 1), (1, 7), (1, 11),
    -- CTO verifications
    (2, 2), (2, 4), (2, 12),
    -- CFO verifications
    (3, 1), (3, 9), (3, 14),
    -- HR Manager verifications
    (5, 3), (5, 8), (5, 15),
    -- IT Manager verifications
    (8, 20), (8, 5), (8, 21),
    -- Software Engineers verifications
    (9, 20), (9, 4), (9, 14),
    (10, 2), (10, 10), (10, 15),
    (11, 3), (11, 14),
    (12, 1), (12, 6), (12, 15),
    (13, 20), (13, 14),
    (14, 2), (14, 10), (14, 14),
    -- Data Analyst verifications
    (15, 3), (15, 18), (15, 14),
    -- HR Specialist verifications
    (16, 1), (16, 8), (16, 15),
    -- Accountant verifications
    (17, 2), (17, 9), (17, 14),
    -- Sales Representatives verifications
    (18, 3), (18, 17), (18, 11),
    (19, 20), (19, 11), (19, 15),
    -- Marketing Specialists verifications
    (20, 1), (20, 19), (20, 23),
    (21, 2), (21, 18), (21, 23),
    -- Customer Support verifications
    (22, 3), (22, 15), (22, 25),
    (23, 20), (23, 15),
    -- DevOps Engineer verifications
    (24, 1), (24, 4), (24, 5), (24, 21),
    -- UX Designer verifications
    (25, 2), (25, 15),
    -- QA Engineer verifications
    (26, 20), (26, 22), (26, 14),
    -- Intern verifications
    (27, 3), (27, 15),
    -- Consultant verifications
    (28, 1), (28, 7), (28, 22),
    -- Security Analyst verifications
    (29, 2), (29, 12), (29, 13), (29, 14),
    -- Payroll Officer verifications
    (30, 20), (30, 9), (30, 14);

-- =============================================
-- 7. Insert Notifications
-- =============================================
SET IDENTITY_INSERT Notification ON;

INSERT INTO Notification (notification_id, message_content, timestamp, urgency, read_status, notification_type)
VALUES
    (1, 'Welcome to the company! Please complete your profile information.', '2024-01-15 09:00:00', 'Medium', 0, 'Onboarding'),
    (2, 'Your leave request has been approved.', '2024-02-10 14:30:00', 'Low', 1, 'Leave'),
    (3, 'Urgent: System maintenance scheduled for tonight at 11 PM.', '2024-03-05 16:00:00', 'Urgent', 0, 'System'),
    (4, 'Your payroll for March has been processed.', '2024-03-31 08:00:00', 'Medium', 1, 'Payroll'),
    (5, 'Reminder: Complete your annual performance review by Friday.', '2024-04-20 10:00:00', 'High', 0, 'Performance'),
    (6, 'New company policy update available in the HR portal.', '2024-05-01 09:30:00', 'Medium', 0, 'Policy'),
    (7, 'Your shift schedule for next week is now available.', '2024-05-15 15:00:00', 'Low', 1, 'Shift'),
    (8, 'Security Alert: Suspicious login attempt detected.', '2024-06-02 11:45:00', 'Urgent', 0, 'Security'),
    (9, 'Training session on new software tools - June 20th.', '2024-06-10 13:00:00', 'Medium', 0, 'Training'),
    (10, 'Your reimbursement request has been processed.', '2024-06-25 10:15:00', 'Low', 1, 'Reimbursement'),
    (11, 'Team meeting scheduled for tomorrow at 2 PM.', '2024-07-08 16:30:00', 'Medium', 0, 'Meeting'),
    (12, 'Your contract renewal is due next month.', '2024-07-15 09:00:00', 'High', 0, 'Contract'),
    (13, 'Holiday announcement: Office closed on July 30th.', '2024-07-20 11:00:00', 'Low', 1, 'Holiday'),
    (14, 'Your attendance correction request has been approved.', '2024-08-05 14:00:00', 'Low', 1, 'Attendance'),
    (15, 'Important: Update your emergency contact information.', '2024-08-12 10:30:00', 'High', 0, 'Alert'),
    (16, 'New benefits package information available.', '2024-09-01 09:00:00', 'Medium', 0, 'Benefits'),
    (17, 'Your mission assignment to Cairo has been confirmed.', '2024-09-10 15:30:00', 'High', 0, 'Mission'),
    (18, 'Quarterly bonus payment will be credited tomorrow.', '2024-09-28 11:00:00', 'Medium', 1, 'Payroll'),
    (19, 'Your department has been restructured. Check org chart.', '2024-10-05 09:15:00', 'High', 0, 'Organizational'),
    (20, 'IT Security training is mandatory - Complete by Oct 31st.', '2024-10-15 13:00:00', 'Urgent', 0, 'Training'),
    (21, 'Your health insurance renewal is processing.', '2024-11-01 10:00:00', 'Medium', 0, 'Insurance'),
    (22, 'System upgrade completed successfully.', '2024-11-10 08:30:00', 'Low', 1, 'System'),
    (23, 'Your profile verification documents have been approved.', '2024-11-15 14:45:00', 'Low', 1, 'Verification'),
    (24, 'Year-end performance reviews starting December 1st.', '2024-11-25 09:00:00', 'High', 0, 'Performance'),
    (25, 'Holiday schedule for December available in portal.', '2024-11-28 11:30:00', 'Medium', 0, 'Holiday');

SET IDENTITY_INSERT Notification OFF;

-- =============================================
-- 8. Insert Employee_Notification
-- =============================================
INSERT INTO Employee_Notification (employee_id, notification_id, delivery_status, delivered_at)
VALUES
    -- Notifications for employee 1 (CEO)
    (1, 3, 'Delivered', '2024-03-05 16:01:00'),
    (1, 6, 'Delivered', '2024-05-01 09:31:00'),
    (1, 19, 'Delivered', '2024-10-05 09:16:00'),
    (1, 24, 'Delivered', '2024-11-25 09:01:00'),
    
    -- Notifications for employee 2 (CTO)
    (2, 3, 'Delivered', '2024-03-05 16:01:00'),
    (2, 8, 'Delivered', '2024-06-02 11:46:00'),
    (2, 20, 'Delivered', '2024-10-15 13:01:00'),
    (2, 22, 'Delivered', '2024-11-10 08:31:00'),
    
    -- Notifications for employee 5 (HR Manager)
    (5, 1, 'Delivered', '2024-01-15 09:01:00'),
    (5, 6, 'Delivered', '2024-05-01 09:31:00'),
    (5, 12, 'Delivered', '2024-07-15 09:01:00'),
    (5, 15, 'Delivered', '2024-08-12 10:31:00'),
    (5, 23, 'Delivered', '2024-11-15 14:46:00'),
    
    -- Notifications for employees 9-15 (IT team)
    (9, 2, 'Delivered', '2024-02-10 14:31:00'),
    (9, 7, 'Delivered', '2024-05-15 15:01:00'),
    (9, 9, 'Delivered', '2024-06-10 13:01:00'),
    (9, 14, 'Delivered', '2024-08-05 14:01:00'),
    (10, 4, 'Delivered', '2024-03-31 08:01:00'),
    (10, 11, 'Delivered', '2024-07-08 16:31:00'),
    (10, 20, 'Delivered', '2024-10-15 13:01:00'),
    (11, 7, 'Delivered', '2024-05-15 15:01:00'),
    (11, 13, 'Delivered', '2024-07-20 11:01:00'),
    (12, 9, 'Delivered', '2024-06-10 13:01:00'),
    (12, 16, 'Delivered', '2024-09-01 09:01:00'),
    (13, 5, 'Delivered', '2024-04-20 10:01:00'),
    (13, 24, 'Delivered', '2024-11-25 09:01:00'),
    (14, 11, 'Delivered', '2024-07-08 16:31:00'),
    (14, 20, 'Delivered', '2024-10-15 13:01:00'),
    (15, 4, 'Delivered', '2024-03-31 08:01:00'),
    (15, 18, 'Delivered', '2024-09-28 11:01:00'),
    
    -- Notifications for employees 16-20 (HR, Accounting, Sales)
    (16, 1, 'Delivered', '2024-01-15 09:01:00'),
    (16, 23, 'Delivered', '2024-11-15 14:46:00'),
    (17, 4, 'Delivered', '2024-03-31 08:01:00'),
    (17, 18, 'Delivered', '2024-09-28 11:01:00'),
    (18, 7, 'Delivered', '2024-05-15 15:01:00'),
    (18, 17, 'Delivered', '2024-09-10 15:31:00'),
    (19, 2, 'Delivered', '2024-02-10 14:31:00'),
    (19, 13, 'Delivered', '2024-07-20 11:01:00'),
    (20, 9, 'Delivered', '2024-06-10 13:01:00'),
    (20, 25, 'Delivered', '2024-11-28 11:31:00'),
    
    -- Notifications for employees 21-30 (Various departments)
    (21, 16, 'Delivered', '2024-09-01 09:01:00'),
    (22, 10, 'Delivered', '2024-06-25 10:16:00'),
    (23, 14, 'Delivered', '2024-08-05 14:01:00'),
    (24, 3, 'Delivered', '2024-03-05 16:01:00'),
    (24, 22, 'Delivered', '2024-11-10 08:31:00'),
    (25, 5, 'Delivered', '2024-04-20 10:01:00'),
    (26, 9, 'Delivered', '2024-06-10 13:01:00'),
    (27, 1, 'Delivered', '2024-01-15 09:01:00'),
    (27, 9, 'Delivered', '2024-06-10 13:01:00'),
    (28, 12, 'Delivered', '2024-07-15 09:01:00'),
    (29, 8, 'Delivered', '2024-06-02 11:46:00'),
    (29, 20, 'Delivered', '2024-10-15 13:01:00'),
    (30, 4, 'Delivered', '2024-03-31 08:01:00'),
    (30, 18, 'Delivered', '2024-09-28 11:01:00'),
    (30, 21, 'Delivered', '2024-11-01 10:01:00'),
    
    -- Some pending notifications
    (5, 25, 'Pending', NULL),
    (10, 25, 'Pending', NULL),
    (15, 25, 'Pending', NULL),
    (20, 24, 'Pending', NULL),
    (25, 24, 'Pending', NULL);

-- =============================================
---------------End of Yousef's--------------
-- =============================================


----------Ali---------------------
-- =========================
-- CONTRACT DATA
-- =========================
INSERT INTO Contract VALUES
('Full Time', '2024-01-01', '2025-01-01', 'Active'),
('Part Time', '2023-06-01', '2024-06-01', 'Expired'),
('Consultant', '2024-03-01', '2024-09-01', 'Active'),
('Internship', '2024-07-01', '2024-12-01', 'Active');

INSERT INTO FullTimeContract VALUES (1, 21, 1, 40);
INSERT INTO PartTimeContract VALUES (2, 20, 120);
INSERT INTO ConsultantContract VALUES (3, 'ERP System', 20000, 'Monthly');
INSERT INTO InternshipContract VALUES (4, 'HR Training', 'Monthly Review', 'Paid');

-- =========================
-- INSURANCE
-- =========================

INSERT INTO Insurance VALUES
('Social Insurance', 5.00, 'Medical & Pension'),
('Private Insurance', 3.00, 'Medical Only');

-- =========================
-- TERMINATION
-- =========================

INSERT INTO Termination VALUES
('2024-10-01', 'Resignation', 2);

-- =========================
-- REIMBURSEMENT
-- =========================

INSERT INTO Reimbursement VALUES
('Travel', 'Flight', '2024-05-10', 'Approved', 1),
('Medical', 'Treatment', '2024-06-01', 'Pending', 2);

-- =========================
-- MISSION
-- =========================

INSERT INTO Mission VALUES
('Dubai', '2024-06-01', '2024-06-10', 'Completed', 1, 3),
('Berlin', '2024-08-01', '2024-08-15', 'Active', 2, 3);
---------------Ali End---------------------


-------Omar---------------------------
-- Leave Types
INSERT INTO Leave (leave_id, leave_type, leave_description) VALUES
(1, 'Vacation', 'Annual vacation leave for employees'),
(2, 'Sick', 'Medical leave for illness or injury'),
(3, 'Probation', 'Leave during probation period'),
(4, 'Holiday', 'Official public holidays');

-- VacationLeave
INSERT INTO VacationLeave (leave_id, carry_over_days, approving_manager) VALUES
(1, 5, NULL);

-- SickLeave
INSERT INTO SickLeave (leave_id, medical_cert_required, physician_id) VALUES
(2, 1, NULL);

-- ProbationLeave
INSERT INTO ProbationLeave (leave_id, eligibility_start_date, probation_period) VALUES
(3, '2025-01-01', 90);

-- HolidayLeave
INSERT INTO HolidayLeave (leave_id, holiday_name, official_recognition, regional_scope) VALUES
(4, 'New Year', 'National Holiday', 'Egypt'),
(4, 'Eid Al-Fitr', 'Religious Holiday', 'Egypt'),
(4, 'Eid Al-Adha', 'Religious Holiday', 'Egypt'),
(4, 'Labor Day', 'National Holiday', 'Egypt'),
(4, 'Revolution Day', 'National Holiday', 'Egypt');

-- Leave Policies
INSERT INTO LeavePolicy (policy_id, name, purpose, eligibility_rules, notice_period, special_leave_type, reset_on_new_year) VALUES
(1, 'Standard Vacation Policy', 'Regular annual leave for full-time employees', 'Full-time employees with 6+ months tenure', 7, NULL, 1),
(2, 'Sick Leave Policy', 'Medical leave for health-related absences', 'All employees', 0, 'Medical', 1),
(3, 'Probation Leave Policy', 'Limited leave during probation period', 'Probationary employees', 3, NULL, 0),
(4, 'Holiday Policy', 'Public and religious holidays', 'All employees', 0, 'Holiday', 0),
(5, 'Emergency Leave Policy', 'Urgent family matters', 'All employees with 3+ months tenure', 1, 'Emergency', 1),
(6, 'Maternity Leave Policy', 'Maternity leave for female employees', 'Female employees with 1+ year tenure', 30, 'Maternity', 0),
(7, 'Bereavement Leave Policy', 'Leave for family bereavement', 'All employees', 0, 'Bereavement', 1);

-- Leave Entitlements
INSERT INTO LeaveEntitlement (employee_id, leave_type_id, entitlement) VALUES
(1, 1, 21.00),
(1, 2, 15.00),
(2, 1, 21.00),
(2, 2, 15.00),
(3, 1, 21.00),
(3, 2, 15.00),
(4, 1, 21.00),
(4, 2, 15.00),
(5, 1, 21.00),
(5, 2, 15.00);

-- Leave Requests
INSERT INTO LeaveRequest (request_id, employee_id, leave_id, justification, duration, approval_timing, status) VALUES
(1, 1, 1, 'Family vacation', 5, NULL, 'Pending'),
(2, 2, 2, 'Flu symptoms', 2, NULL, 'Approved'),
(3, 3, 1, 'Personal travel', 7, NULL, 'Approved'),
(4, 4, 2, 'Medical checkup', 1, NULL, 'Pending'),
(5, 5, 1, 'Summer vacation', 10, NULL, 'Rejected');

-- Leave Documents
INSERT INTO LeaveDocument (document_id, leave_request_id, file_path, uploaded_at) VALUES
(1, 2, '/documents/medical/sick_leave_cert_002.pdf', '2025-01-15 09:30:00'),
(2, 3, '/documents/requests/vacation_request_003.pdf', '2025-02-01 10:00:00'),
(3, 4, '/documents/medical/medical_report_004.pdf', '2025-03-10 14:20:00');

-- Shift Schedules
INSERT INTO ShiftSchedule (shift_id, name, type, start_time, end_time, break_duration, shift_date, status) VALUES
(1, 'Morning Shift', 'Normal', '08:00:00', '16:00:00', 60, '2025-01-01', 'Active'),
(2, 'Evening Shift', 'Normal', '14:00:00', '22:00:00', 60, '2025-01-01', 'Active'),
(3, 'Night Shift', 'Overnight', '22:00:00', '06:00:00', 60, '2025-01-01', 'Active'),
(4, 'Split Shift', 'Split', '08:00:00', '20:00:00', 240, '2025-01-01', 'Active'),
(5, 'Flex Hours', 'Flexible', '09:00:00', '17:00:00', 60, '2025-01-01', 'Active'),
(6, 'Core Hours', 'Normal', '09:00:00', '18:00:00', 60, '2025-01-01', 'Active'),
(7, 'Weekend Shift', 'Normal', '10:00:00', '18:00:00', 60, '2025-01-01', 'Active');

-- Shift Assignments
INSERT INTO ShiftAssignment (assignment_id, employee_id, shift_id, start_date, end_date, status) VALUES
(1, 1, 1, '2025-01-01', '2025-12-31', 'Approved'),
(2, 2, 1, '2025-01-01', '2025-12-31', 'Approved'),
(3, 3, 2, '2025-01-01', '2025-12-31', 'Approved'),
(4, 4, 5, '2025-01-01', '2025-12-31', 'Approved'),
(5, 5, 3, '2025-02-01', '2025-12-31', 'Submitted'),
(6, 1, 6, '2025-03-01', '2025-06-30', 'Entered'),
(7, 2, 7, '2025-04-01', '2025-04-30', 'Cancelled');

-- Shift Cycles
INSERT INTO ShiftCycle (cycle_id, cycle_name, description) VALUES
(1, 'Rotating 3-Week Cycle', 'Morning, Evening, Night rotation every 3 weeks'),
(2, 'Weekly Rotation', 'Weekly shift rotation for operations team'),
(3, 'Bi-Weekly Rotation', 'Two-week rotation cycle'),
(4, '24/7 Coverage', 'Continuous coverage rotation');

-- Shift Cycle Assignments
INSERT INTO ShiftCycleAssignment (cycle_id, shift_id, order_number) VALUES
(1, 1, 1),
(1, 2, 2),
(1, 3, 3),
(2, 1, 1),
(2, 2, 2),
(3, 6, 1),
(3, 5, 2);

-- Devices
INSERT INTO Device (device_id, device_type, terminal_id, latitude, longitude, employee_id) VALUES
(1, 'Biometric', 'TERM-001', 30.0444, 31.2357, NULL),
(2, 'Biometric', 'TERM-002', 30.0444, 31.2357, NULL),
(3, 'Mobile', 'MOB-001', 30.0444, 31.2357, 1),
(4, 'Mobile', 'MOB-002', 30.0444, 31.2357, 2),
(5, 'Biometric', 'TERM-003', 31.2001, 29.9187, NULL),
(6, 'GPS Tracker', 'GPS-001', 30.0444, 31.2357, NULL);

-- Exceptions
INSERT INTO Exception (exception_id, name, category, date, status) VALUES
(1, 'Late Arrival', 'Lateness', '2025-01-15', 'Active'),
(2, 'Early Departure', 'Early Leave', '2025-01-15', 'Active'),
(3, 'Missed Punch In', 'Attendance', '2025-01-16', 'Active'),
(4, 'Missed Punch Out', 'Attendance', '2025-01-16', 'Active'),
(5, 'Overtime', 'Extra Hours', '2025-01-17', 'Active'),
(6, 'Public Holiday', 'Holiday', '2025-01-25', 'Active'),
(7, 'Approved Leave', 'Leave', '2025-02-01', 'Active'),
(8, 'Sick Leave', 'Leave', '2025-02-05', 'Active');

-- Attendance Records
INSERT INTO Attendance (attendance_id, employee_id, shift_id, entry_time, exit_time, duration, login_method, logout_method, exception_id) VALUES
(1, 1, 1, '2025-01-15 08:00:00', '2025-01-15 16:00:00', 480, 'Biometric', 'Biometric', NULL),
(2, 2, 1, '2025-01-15 08:15:00', '2025-01-15 16:00:00', 465, 'Biometric', 'Biometric', 1),
(3, 3, 2, '2025-01-15 14:00:00', '2025-01-15 22:00:00', 480, 'Biometric', 'Biometric', NULL),
(4, 1, 1, '2025-01-16 08:05:00', '2025-01-16 15:45:00', 460, 'Mobile', 'Mobile', 2),
(5, 4, 5, '2025-01-16 09:30:00', '2025-01-16 18:30:00', 480, 'Biometric', 'Biometric', NULL),
(6, 2, 1, '2025-01-17 08:00:00', '2025-01-17 18:00:00', 600, 'Biometric', 'Biometric', 5),
(7, 5, 3, '2025-01-17 22:00:00', '2025-01-18 06:00:00', 480, 'Biometric', 'Biometric', NULL),
(8, 1, 1, '2025-01-18 08:00:00', NULL, NULL, 'Biometric', NULL, 4);

-- Employee Exceptions
INSERT INTO Employee_Exception (employee_id, exception_id) VALUES
(1, 2),
(1, 4),
(2, 1),
(2, 5),
(4, 5);

-- Attendance Source
INSERT INTO AttendanceSource (attendance_id, device_id, source_type, latitude, longitude, recorded_at) VALUES
(1, 1, 'Biometric', 30.0444, 31.2357, '2025-01-15 08:00:00'),
(2, 1, 'Biometric', 30.0444, 31.2357, '2025-01-15 08:15:00'),
(3, 2, 'Biometric', 30.0444, 31.2357, '2025-01-15 14:00:00'),
(4, 3, 'GPS', 30.0450, 31.2360, '2025-01-16 08:05:00'),
(5, 1, 'Biometric', 30.0444, 31.2357, '2025-01-16 09:30:00'),
(6, 1, 'Biometric', 30.0444, 31.2357, '2025-01-17 08:00:00'),
(7, 5, 'Biometric', 31.2001, 29.9187, '2025-01-17 22:00:00'),
(8, 1, 'Biometric', 30.0444, 31.2357, '2025-01-18 08:00:00');

-- Attendance Logs
INSERT INTO AttendanceLog (attendance_log_id, attendance_id, actor, timestamp, reason) VALUES
(1, 1, 1, '2025-01-15 08:00:00', 'Regular clock-in'),
(2, 2, 2, '2025-01-15 08:15:00', 'Late arrival due to traffic'),
(3, 4, 1, '2025-01-16 15:45:00', 'Early departure approved by manager'),
(4, 8, 1, '2025-01-18 08:00:00', 'Missed clock-out - pending correction');

-- Attendance Correction Requests
INSERT INTO AttendanceCorrectionRequest (request_id, employee_id, date, correction_type, reason, status, recorded_by) VALUES
(1, 1, '2025-01-18', 'Missed Punch Out', 'Forgot to clock out, left at 16:00', 'Pending', 1),
(2, 2, '2025-01-15', 'Late Arrival', 'Traffic accident on the highway', 'Approved', 2),
(3, 1, '2025-01-16', 'Early Departure', 'Medical appointment', 'Approved', 1),
(4, 4, '2025-01-19', 'Missed Punch In', 'Device malfunction', 'Pending', 4);

-----------Omar's End------------------------------

-- =============================================
-- Tarek - Payroll, Salary Types & Policies
-- Data Insertion Script
-- =============================================

-- Insert Currency Data
INSERT INTO Currency (CurrencyCode, CurrencyName, ExchangeRate, CreatedDate, LastUpdated)
VALUES 
('USD', 'US Dollar', 1.0000, GETDATE(), GETDATE()),
('EUR', 'Euro', 0.9200, GETDATE(), GETDATE()),
('GBP', 'British Pound', 0.8000, GETDATE(), GETDATE()),
('EGP', 'Egyptian Pound', 30.9000, GETDATE(), GETDATE()),
('SAR', 'Saudi Riyal', 3.7500, GETDATE(), GETDATE());

-- Insert Salary Types
INSERT INTO SalaryType (type, payment_frequency, currency)
VALUES 
('Hourly', 'Weekly', 'EGP'),
('Monthly', 'Monthly', 'EGP'),
('Contract', 'Milestone', 'USD'),
('Monthly', 'Monthly', 'USD'),
('Hourly', 'Bi-Weekly', 'USD'),
('Monthly', 'Monthly', 'SAR');

-- Insert Hourly Salary Types
INSERT INTO HourlySalaryType (salary_type_id, hourly_rate, max_monthly_hours)
VALUES 
(1, 50.00, 180),
(5, 75.00, 160);

-- Insert Monthly Salary Types
INSERT INTO MonthlySalaryType (salary_type_id, tax_rule, contribution_scheme)
VALUES 
(2, 'Progressive 10-25%', 'Social Insurance 11%'),
(4, 'Flat 15%', 'Social Insurance 11%'),
(6, 'Progressive 5-20%', 'Social Insurance 9%');

-- Insert Contract Salary Types
INSERT INTO ContractSalaryType (salary_type_id, contract_value, installment_details)
VALUES 
(3, 120000.00, 'Quarterly payments based on milestones');

-- Insert Pay Grades
INSERT INTO PayGrade (grade_name, min_salary, max_salary)
VALUES 
('Entry Level', 3000.00, 6000.00),
('Junior', 6000.00, 10000.00),
('Mid Level', 10000.00, 18000.00),
('Senior', 18000.00, 30000.00),
('Executive', 30000.00, 60000.00),
('C-Level', 60000.00, 120000.00);

-- Insert Tax Forms
INSERT INTO TaxForm (jurisdiction, validity_period, form_content)
VALUES 
('Egypt', '2025', 'Egyptian tax form for residents - progressive tax rates 10-25%'),
('Egypt', '2025', 'Egyptian tax form for non-residents - flat tax rate 20%'),
('International', '2025', 'W-8BEN form for foreign contractors'),
('Saudi Arabia', '2025', 'KSA tax form - Zakat and income tax'),
('UAE', '2025', 'UAE tax form - Corporate tax 9%');

-- Insert Payroll Policies
INSERT INTO PayrollPolicy (effective_date, type, description)
VALUES 
('2025-01-01', 'Overtime', 'Standard overtime calculation with weekday and weekend multipliers'),
('2025-01-01', 'Lateness', 'Grace period and deduction rules for late arrival'),
('2025-01-01', 'Bonus', 'Annual and performance-based bonus policy'),
('2025-01-01', 'Deduction', 'Standard deduction policy for absences and violations'),
('2025-03-01', 'Overtime', 'Updated overtime policy with higher rates for critical projects'),
('2025-01-01', 'Insurance', 'Social insurance contribution brackets'),
('2025-01-01', 'Tax', 'Progressive tax calculation policy');

-- Insert Overtime Policies
INSERT INTO OvertimePolicy (policy_id, weekday_rate_multiplier, weekend_rate_multiplier, max_hours_per_month)
VALUES 
(1, 1.25, 1.50, 50),
(5, 1.50, 2.00, 60);

-- Insert Lateness Policies
INSERT INTO LatenessPolicy (policy_id, grace_period_mins, deduction_rate)
VALUES 
(2, 10, 2.50),
(4, 15, 3.00);

-- Insert Bonus Policies
INSERT INTO BonusPolicy (policy_id, bonus_type, eligibility_criteria)
VALUES 
(3, 'Annual Performance', 'Completed 1 year with performance rating above 3.5/5');

-- Insert Deduction Policies
INSERT INTO DeductionPolicy (policy_id, deduction_reason, calculation_mode)
VALUES 
(4, 'Absence', 'Full day salary deduction');

-- NOTE: The following insertions assume that Employee table has been populated
-- with at least 10 employees (employee_id 1-10) by another team member

-- Sample Payroll Records for employees 1-10
INSERT INTO Payroll (employee_id, taxes, period_start, period_end, base_amount, adjustments, contributions, actual_pay, payment_date)
VALUES 
-- January 2025 Payroll
(1, 1500.00, '2025-01-01', '2025-01-31', 15000.00, 500.00, 1650.00, 13850.00, '2025-02-05'),
(2, 800.00, '2025-01-01', '2025-01-31', 8000.00, 300.00, 880.00, 7420.00, '2025-02-05'),
(3, 2250.00, '2025-01-01', '2025-01-31', 22500.00, 1000.00, 2475.00, 21025.00, '2025-02-05'),
(4, 600.00, '2025-01-01', '2025-01-31', 6000.00, 200.00, 660.00, 5540.00, '2025-02-05'),
(5, 1200.00, '2025-01-01', '2025-01-31', 12000.00, 400.00, 1320.00, 10880.00, '2025-02-05'),
(6, 1800.00, '2025-01-01', '2025-01-31', 18000.00, 600.00, 1980.00, 16620.00, '2025-02-05'),
(7, 450.00, '2025-01-01', '2025-01-31', 4500.00, 150.00, 495.00, 4155.00, '2025-02-05'),
(8, 3000.00, '2025-01-01', '2025-01-31', 30000.00, 1200.00, 3300.00, 27900.00, '2025-02-05'),
(9, 900.00, '2025-01-01', '2025-01-31', 9000.00, 350.00, 990.00, 8360.00, '2025-02-05'),
(10, 1050.00, '2025-01-01', '2025-01-31', 10500.00, 450.00, 1155.00, 9795.00, '2025-02-05'),

-- February 2025 Payroll
(1, 1500.00, '2025-02-01', '2025-02-28', 15000.00, 700.00, 1650.00, 14050.00, '2025-03-05'),
(2, 800.00, '2025-02-01', '2025-02-28', 8000.00, 300.00, 880.00, 7420.00, '2025-03-05'),
(3, 2250.00, '2025-02-01', '2025-02-28', 22500.00, 1500.00, 2475.00, 21525.00, '2025-03-05'),
(4, 600.00, '2025-02-01', '2025-02-28', 6000.00, 250.00, 660.00, 5590.00, '2025-03-05'),
(5, 1200.00, '2025-02-01', '2025-02-28', 12000.00, 500.00, 1320.00, 11180.00, '2025-03-05'),

-- March 2025 Payroll
(1, 1500.00, '2025-03-01', '2025-03-31', 15000.00, 500.00, 1650.00, 13850.00, '2025-04-05'),
(2, 800.00, '2025-03-01', '2025-03-31', 8000.00, 400.00, 880.00, 7520.00, '2025-04-05'),
(3, 2250.00, '2025-03-01', '2025-03-31', 22500.00, 2000.00, 2475.00, 22025.00, '2025-04-05');

-- Insert Allowances and Deductions for the payroll records
INSERT INTO AllowanceDeduction (payroll_id, employee_id, type, amount, currency, duration, timezone)
VALUES 
-- January allowances
(1, 1, 'Allowance', 500.00, 'EGP', 'Monthly', 'EET'),
(2, 2, 'Allowance', 300.00, 'EGP', 'Monthly', 'EET'),
(3, 3, 'Allowance', 1000.00, 'EGP', 'Monthly', 'EET'),
(4, 4, 'Allowance', 200.00, 'EGP', 'Monthly', 'EET'),
(5, 5, 'Allowance', 400.00, 'EGP', 'Monthly', 'EET'),
(6, 6, 'Allowance', 600.00, 'EGP', 'Monthly', 'EET'),
(7, 7, 'Allowance', 150.00, 'EGP', 'Monthly', 'EET'),
(8, 8, 'Allowance', 1200.00, 'EGP', 'Monthly', 'EET'),
(9, 9, 'Allowance', 350.00, 'EGP', 'Monthly', 'EET'),
(10, 10, 'Allowance', 450.00, 'EGP', 'Monthly', 'EET'),

-- Some deductions
(3, 3, 'Deduction', 200.00, 'EGP', 'One-time', 'EET'),
(8, 8, 'Deduction', 300.00, 'EGP', 'One-time', 'EET'),

-- February allowances
(11, 1, 'Allowance', 700.00, 'EGP', 'Monthly', 'EET'),
(12, 2, 'Allowance', 300.00, 'EGP', 'Monthly', 'EET'),
(13, 3, 'Allowance', 1500.00, 'EGP', 'Monthly', 'EET'),
(14, 4, 'Allowance', 250.00, 'EGP', 'Monthly', 'EET'),
(15, 5, 'Allowance', 500.00, 'EGP', 'Monthly', 'EET'),

-- March allowances
(16, 1, 'Allowance', 500.00, 'EGP', 'Monthly', 'EET'),
(17, 2, 'Allowance', 400.00, 'EGP', 'Monthly', 'EET'),
(18, 3, 'Allowance', 2000.00, 'EGP', 'Monthly', 'EET');

-- Link Payroll to Policies
INSERT INTO PayrollPolicy_ID (payroll_id, policy_id)
VALUES 
-- January payrolls with policies
(1, 1), (1, 2), (1, 6),
(2, 1), (2, 2),
(3, 1), (3, 3), (3, 6),
(4, 2), (4, 4),
(5, 1), (5, 2),
(6, 1), (6, 6),
(7, 2), (7, 4),
(8, 1), (8, 3), (8, 6),
(9, 1), (9, 2),
(10, 1), (10, 2),

-- February payrolls
(11, 1), (11, 2),
(12, 1), (12, 2),
(13, 1), (13, 3),
(14, 2), (14, 4),
(15, 1), (15, 2),

-- March payrolls
(16, 5), (16, 2),
(17, 5), (17, 2),
(18, 5), (18, 3);

-- Insert Payroll Logs
INSERT INTO Payroll_Log (payroll_id, actor, change_date, modification_type)
VALUES 
(1, 1, '2025-01-31 09:00:00', 'Payroll Generated'),
(1, 1, '2025-01-31 09:15:00', 'Added Transportation Allowance'),
(2, 1, '2025-01-31 09:00:00', 'Payroll Generated'),
(3, 1, '2025-01-31 09:00:00', 'Payroll Generated'),
(3, 1, '2025-01-31 09:20:00', 'Added Performance Bonus'),
(4, 1, '2025-01-31 09:00:00', 'Payroll Generated'),
(5, 1, '2025-01-31 09:00:00', 'Payroll Generated'),
(8, 1, '2025-01-31 09:00:00', 'Payroll Generated'),
(8, 1, '2025-01-31 09:30:00', 'Deduction Applied - Uniform'),
(11, 1, '2025-02-28 09:00:00', 'Payroll Generated'),
(11, 1, '2025-02-28 09:25:00', 'Added Overtime Payment'),
(13, 1, '2025-02-28 09:00:00', 'Payroll Generated'),
(13, 1, '2025-02-28 09:35:00', 'Added Project Completion Bonus'),
(16, 1, '2025-03-31 09:00:00', 'Payroll Generated'),
(17, 1, '2025-03-31 09:00:00', 'Payroll Generated'),
(18, 1, '2025-03-31 09:00:00', 'Payroll Generated'),
(18, 1, '2025-03-31 09:40:00', 'Added Annual Bonus');

-- Insert Payroll Periods
INSERT INTO PayrollPeriod (payroll_id, start_date, end_date, status)
VALUES 
-- January periods
(1, '2025-01-01', '2025-01-31', 'Closed'),
(2, '2025-01-01', '2025-01-31', 'Closed'),
(3, '2025-01-01', '2025-01-31', 'Closed'),
(4, '2025-01-01', '2025-01-31', 'Closed'),
(5, '2025-01-01', '2025-01-31', 'Closed'),
(6, '2025-01-01', '2025-01-31', 'Closed'),
(7, '2025-01-01', '2025-01-31', 'Closed'),
(8, '2025-01-01', '2025-01-31', 'Closed'),
(9, '2025-01-01', '2025-01-31', 'Closed'),
(10, '2025-01-01', '2025-01-31', 'Closed'),

-- February periods
(11, '2025-02-01', '2025-02-28', 'Closed'),
(12, '2025-02-01', '2025-02-28', 'Closed'),
(13, '2025-02-01', '2025-02-28', 'Closed'),
(14, '2025-02-01', '2025-02-28', 'Closed'),
(15, '2025-02-01', '2025-02-28', 'Closed'),

-- March periods
(16, '2025-03-01', '2025-03-31', 'Open'),
(17, '2025-03-01', '2025-03-31', 'Open'),
(18, '2025-03-01', '2025-03-31', 'Open');

-------------------------Tarek End ---------------------------------------
