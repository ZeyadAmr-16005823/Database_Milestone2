-- =============================================
-- Ziad's Part: Core Employee + Admin Roles + Workflows
-- PHASE 1: Create all tables WITHOUT foreign keys
-- PHASE 2: Add all foreign keys after tables exist
-- This solves the table order dependency problem!
-- =============================================

-- =============================================
-- PHASE 1: CREATE ALL TABLES (NO FOREIGN KEYS)
-- =============================================

-- Table: Employee
CREATE TABLE Employee (
    employee_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    full_name VARCHAR(100) NOT NULL,
    national_id VARCHAR(20),
    date_of_birth DATE,
    country_of_birth VARCHAR(50),
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE NOT NULL,
    address VARCHAR(150),
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(20),
    relationship VARCHAR(50),
    biography VARCHAR(MAX),
    profile_image VARCHAR(255),
    employment_progress VARCHAR(50),
    account_status VARCHAR(20) DEFAULT 'Active',
    employment_status VARCHAR(20) DEFAULT 'Active',
    hire_date DATE NOT NULL,
    is_active BIT DEFAULT 1,
    profile_completion INT DEFAULT 0 CHECK (profile_completion BETWEEN 0 AND 100),
    department_id INT,
    position_id INT,
    manager_id INT,
    contract_id INT,
    tax_form_id INT,
    salary_type_id INT,
    pay_grade INT
);

-- Table: HRAdministrator
CREATE TABLE HRAdministrator (
    employee_id INT PRIMARY KEY,
    approval_level VARCHAR(20) DEFAULT 'Junior' CHECK (approval_level IN ('Junior', 'Senior', 'Chief')),
    record_access_scope VARCHAR(50),
    document_validation_rights VARCHAR(100)
);

-- Table: SystemAdministrator
CREATE TABLE SystemAdministrator (
    employee_id INT PRIMARY KEY,
    system_privilege_level VARCHAR(20) DEFAULT 'Standard' CHECK (system_privilege_level IN ('Standard', 'Senior', 'Super')),
    configurable_fields VARCHAR(MAX),
    audit_visibility_scope VARCHAR(100)
);

-- Table: PayrollSpecialist
CREATE TABLE PayrollSpecialist (
    employee_id INT PRIMARY KEY,
    assigned_region VARCHAR(50),
    processing_frequency VARCHAR(20),
    last_processed_period DATE
);

-- Table: LineManager
CREATE TABLE LineManager (
    employee_id INT PRIMARY KEY,
    team_size INT DEFAULT 0,
    supervised_departments VARCHAR(100),
    approval_limit DECIMAL(10,2)
);

-- Table: Role
CREATE TABLE Role (
    role_id INT PRIMARY KEY IDENTITY(1,1),
    role_name VARCHAR(50) UNIQUE NOT NULL,
    purpose VARCHAR(200)
);

-- Table: RolePermission
CREATE TABLE RolePermission (
    role_id INT NOT NULL,
    permission_name VARCHAR(100) NOT NULL,
    allowed_action VARCHAR(100),
    PRIMARY KEY (role_id, permission_name)
);

-- Table: Employee_Role
CREATE TABLE Employee_Role (
    employee_id INT NOT NULL,
    role_id INT NOT NULL,
    assigned_date DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (employee_id, role_id)
);

-- Table: EmployeeHierarchy
CREATE TABLE EmployeeHierarchy (
    employee_id INT NOT NULL,
    manager_id INT,
    hierarchy_level INT DEFAULT 1,
    PRIMARY KEY (employee_id, manager_id)
);

-- Table: ManagerNotes
CREATE TABLE ManagerNotes (
    note_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    manager_id INT NOT NULL,
    note_content VARCHAR(500) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);

-- Table: ApprovalWorkflow
CREATE TABLE ApprovalWorkflow (
    workflow_id INT PRIMARY KEY IDENTITY(1,1),
    workflow_type VARCHAR(50) NOT NULL,
    threshold_amount DECIMAL(10,2),
    approver_role VARCHAR(50),
    created_by INT,
    status VARCHAR(20) DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive', 'Draft'))
);

-- Table: ApprovalWorkflowStep
CREATE TABLE ApprovalWorkflowStep (
    workflow_id INT NOT NULL,
    step_number INT NOT NULL,
    role_id INT NOT NULL,
    action_required VARCHAR(100),
    PRIMARY KEY (workflow_id, step_number)
);





-- =============================================
-- Yousef's Part: Organization, Positions & Notifications
-- CORRECTED VERSION - Two-Phase Approach
-- PHASE 1: Create tables WITHOUT foreign keys
-- PHASE 2: Add foreign keys after all tables exist
-- =============================================

-- =============================================
-- PHASE 1: CREATE ALL TABLES (NO FOREIGN KEYS)
-- =============================================

-- =============================================
-- 1. Position Table (No dependencies - create first)
-- =============================================
CREATE TABLE Position (
    position_id INT PRIMARY KEY IDENTITY(1,1),
    position_title VARCHAR(100) NOT NULL,
    responsibilities VARCHAR(1000),
    status VARCHAR(20) CHECK (status IN ('Active', 'Inactive', 'Draft')) DEFAULT 'Active'
);

-- =============================================
-- 2. Department Table (Remove FK temporarily)
-- =============================================
CREATE TABLE Department (
    department_id INT PRIMARY KEY IDENTITY(1,1),
    department_name VARCHAR(100) NOT NULL UNIQUE,
    purpose VARCHAR(500),
    department_head_id INT NULL
    -- FK to Employee will be added in Phase 2
);

-- =============================================
-- 3. Skill Table (No dependencies)
-- =============================================
CREATE TABLE Skill (
    skill_id INT PRIMARY KEY IDENTITY(1,1),
    skill_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(500)
);

-- =============================================
-- 4. Employee_Skill Table (Remove FKs temporarily)
-- =============================================
CREATE TABLE Employee_Skill (
    employee_id INT NOT NULL,
    skill_id INT NOT NULL,
    proficiency_level VARCHAR(20) CHECK (proficiency_level IN ('Beginner', 'Intermediate', 'Advanced', 'Expert')),
    PRIMARY KEY (employee_id, skill_id)
    -- FKs will be added in Phase 2
);

-- =============================================
-- 5. Verification Table (No dependencies)
-- =============================================
CREATE TABLE Verification (
    verification_id INT PRIMARY KEY IDENTITY(1,1),
    verification_type VARCHAR(50) NOT NULL,
    issuer VARCHAR(150),
    issue_date DATE,
    expiry_period INT -- in days
);

-- =============================================
-- 6. Employee_Verification Table (Remove FKs temporarily)
-- =============================================
CREATE TABLE Employee_Verification (
    employee_id INT NOT NULL,
    verification_id INT NOT NULL,
    PRIMARY KEY (employee_id, verification_id)
    -- FKs will be added in Phase 2
);

-- =============================================
-- 7. Notification Table (No dependencies)
-- =============================================
CREATE TABLE Notification (
    notification_id INT PRIMARY KEY IDENTITY(1,1),
    message_content VARCHAR(1000) NOT NULL,
    timestamp DATETIME DEFAULT GETDATE(),
    urgency VARCHAR(20) CHECK (urgency IN ('Low', 'Medium', 'High', 'Urgent')) DEFAULT 'Medium',
    read_status BIT DEFAULT 0,
    notification_type VARCHAR(50) NOT NULL
);

-- =============================================
-- 8. Employee_Notification Table (Remove FKs temporarily)
-- =============================================
CREATE TABLE Employee_Notification (
    employee_id INT NOT NULL,
    notification_id INT NOT NULL,
    delivery_status VARCHAR(20) CHECK (delivery_status IN ('Pending', 'Delivered', 'Failed')) DEFAULT 'Pending',
    delivered_at DATETIME,
    PRIMARY KEY (employee_id, notification_id)
    -- FKs will be added in Phase 2
);





-- =============================================
-- Ali's Part: Contracts, Insurance & HR Actions
-- CORRECTED VERSION - Two-Phase Approach
-- PHASE 1: Create tables WITHOUT foreign keys
-- PHASE 2: Add foreign keys after all tables exist
-- =============================================

-- =============================================
-- PHASE 1: CREATE ALL TABLES (NO FOREIGN KEYS)
-- =============================================

-- =========================
-- CONTRACT TABLES
-- =========================

-- Base Contract Table (No dependencies)
CREATE TABLE Contract (
    contract_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    current_state VARCHAR(50)
);

-- Full-Time Contract (Remove FK temporarily)
CREATE TABLE FullTimeContract (
    contract_id INT PRIMARY KEY,
    leave_entitlement INT,
    insurance_eligibility BIT,
    weekly_working_hours INT
    -- FK to Contract will be added in Phase 2
);

-- Part-Time Contract (Remove FK temporarily)
CREATE TABLE PartTimeContract (
    contract_id INT PRIMARY KEY,
    working_hours INT,
    hourly_rate DECIMAL(10,2)
    -- FK to Contract will be added in Phase 2
);

-- Consultant Contract (Remove FK temporarily)
CREATE TABLE ConsultantContract (
    contract_id INT PRIMARY KEY,
    project_scope VARCHAR(200),
    fees DECIMAL(10,2),
    payment_schedule VARCHAR(100)
    -- FK to Contract will be added in Phase 2
);

-- Internship Contract (Remove FK temporarily)
CREATE TABLE InternshipContract (
    contract_id INT PRIMARY KEY,
    mentoring VARCHAR(200),
    evaluation VARCHAR(200),
    stipend_related VARCHAR(100)
    -- FK to Contract will be added in Phase 2
);

-- =========================
-- INSURANCE TABLE
-- =========================
CREATE TABLE Insurance (
    insurance_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    contribution_rate DECIMAL(5,2),
    coverage VARCHAR(100)
);

-- =========================
-- TERMINATION TABLE (Remove FK temporarily)
-- =========================
CREATE TABLE Termination (
    termination_id INT PRIMARY KEY IDENTITY(1,1),
    date DATE,
    reason VARCHAR(200),
    contract_id INT
    -- FK to Contract will be added in Phase 2
);

-- =========================
-- REIMBURSEMENT TABLE (Remove FK temporarily)
-- =========================
CREATE TABLE Reimbursement (
    reimbursement_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    claim_type VARCHAR(50),
    approval_date DATE,
    current_status VARCHAR(50),
    employee_id INT
    -- FK to Employee will be added in Phase 2
);

-- =========================
-- MISSION TABLE (Remove FKs temporarily)
-- =========================
CREATE TABLE Mission (
    mission_id INT PRIMARY KEY IDENTITY(1,1),
    destination VARCHAR(100),
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    employee_id INT,
    manager_id INT
    -- FKs to Employee will be added in Phase 2
);



-- =============================================
-- Omar's Part: Attendance, Shifts, Exceptions & Leave System
-- CORRECTED VERSION - Two-Phase Approach
-- PHASE 1: Create tables WITHOUT foreign keys
-- PHASE 2: Add foreign keys after all tables exist
-- =============================================

-- =============================================
-- PHASE 1: CREATE ALL TABLES (NO FOREIGN KEYS)
-- =============================================

-- =============================================
-- LEAVE SYSTEM TABLES
-- =============================================

-- Base Leave Table (No dependencies)
CREATE TABLE Leave (
    leave_id INT PRIMARY KEY IDENTITY(1,1),
    leave_type VARCHAR(50) NOT NULL,
    leave_description VARCHAR(255)
);

-- Vacation Leave (Remove FK temporarily)
CREATE TABLE VacationLeave (
    leave_id INT PRIMARY KEY,
    carry_over_days INT,
    approving_manager INT
    -- FK to Leave will be added in Phase 2
);

-- Sick Leave (Remove FK temporarily)
CREATE TABLE SickLeave (
    leave_id INT PRIMARY KEY,
    medical_cert_required BIT DEFAULT 0,
    physician_id INT
    -- FK to Leave will be added in Phase 2
);

-- Probation Leave (Remove FK temporarily)
CREATE TABLE ProbationLeave (
    leave_id INT PRIMARY KEY,
    eligibility_start_date DATE,
    probation_period INT
    -- FK to Leave will be added in Phase 2
);

-- Holiday Leave (Remove FK temporarily)
CREATE TABLE HolidayLeave (
    leave_id INT PRIMARY KEY,
    holiday_name VARCHAR(100) NOT NULL,
    official_recognition VARCHAR(100),
    regional_scope VARCHAR(100)
    -- FK to Leave will be added in Phase 2
);

-- Leave Policy (No dependencies)
CREATE TABLE LeavePolicy (
    policy_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    purpose VARCHAR(255),
    eligibility_rules VARCHAR(200),
    notice_period INT,
    special_leave_type VARCHAR(50),
    reset_on_new_year BIT DEFAULT 1
);

-- Leave Request (Remove FKs temporarily)
CREATE TABLE LeaveRequest (
    request_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    leave_id INT NOT NULL,
    justification VARCHAR(500),
    duration INT,
    approval_timing DATETIME,
    status VARCHAR(50)
    -- FKs to Employee and Leave will be added in Phase 2
);

-- Leave Entitlement (Remove FKs temporarily)
CREATE TABLE LeaveEntitlement (
    employee_id INT,
    leave_type_id INT,
    entitlement DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (employee_id, leave_type_id)
    -- FKs to Employee and Leave will be added in Phase 2
);

-- Leave Document (Remove FK temporarily)
CREATE TABLE LeaveDocument (
    document_id INT PRIMARY KEY IDENTITY(1,1),
    leave_request_id INT NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    uploaded_at DATETIME DEFAULT GETDATE()
    -- FK to LeaveRequest will be added in Phase 2
);

-- =============================================
-- SHIFT MANAGEMENT TABLES
-- =============================================

-- Shift Schedule (No dependencies)
CREATE TABLE ShiftSchedule (
    shift_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    type VARCHAR(50),
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    break_duration INT DEFAULT 0,
    shift_date DATE,
    status VARCHAR(50)
);

-- Shift Assignment (Remove FKs temporarily)
CREATE TABLE ShiftAssignment (
    assignment_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    shift_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(50)
    -- FKs to Employee and ShiftSchedule will be added in Phase 2
);

-- Shift Cycle (No dependencies)
CREATE TABLE ShiftCycle (
    cycle_id INT PRIMARY KEY IDENTITY(1,1),
    cycle_name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);

-- Shift Cycle Assignment (Remove FKs temporarily)
CREATE TABLE ShiftCycleAssignment (
    cycle_id INT,
    shift_id INT,
    order_number INT NOT NULL,
    PRIMARY KEY (cycle_id, shift_id)
    -- FKs to ShiftCycle and ShiftSchedule will be added in Phase 2
);

-- =============================================
-- ATTENDANCE TABLES
-- =============================================

-- Exception (No dependencies)
CREATE TABLE Exception (
    exception_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    date DATE NOT NULL,
    status VARCHAR(50)
);

-- Attendance (Remove FKs temporarily)
CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    shift_id INT,
    entry_time DATETIME,
    exit_time DATETIME,
    duration INT,
    login_method VARCHAR(50),
    logout_method VARCHAR(50),
    exception_id INT
    -- FKs to Employee, ShiftSchedule, and Exception will be added in Phase 2
);

-- Employee Exception (Remove FKs temporarily)
CREATE TABLE Employee_Exception (
    employee_id INT,
    exception_id INT,
    PRIMARY KEY (employee_id, exception_id)
    -- FKs to Employee and Exception will be added in Phase 2
);

-- Attendance Log (Remove FK temporarily)
CREATE TABLE AttendanceLog (
    attendance_log_id INT PRIMARY KEY IDENTITY(1,1),
    attendance_id INT NOT NULL,
    actor INT NOT NULL,
    timestamp DATETIME DEFAULT GETDATE(),
    reason VARCHAR(500)
    -- FK to Attendance will be added in Phase 2
);

-- Attendance Correction Request (Remove FKs temporarily)
CREATE TABLE AttendanceCorrectionRequest (
    request_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    date DATE NOT NULL,
    correction_type VARCHAR(50),
    reason VARCHAR(500),
    status VARCHAR(50) DEFAULT 'Pending',
    recorded_by INT NOT NULL
    -- FKs to Employee will be added in Phase 2
);

-- Device (Remove FK temporarily)
CREATE TABLE Device (
    device_id INT PRIMARY KEY IDENTITY(1,1),
    device_type VARCHAR(50),
    terminal_id VARCHAR(50) UNIQUE,
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    employee_id INT
    -- FK to Employee will be added in Phase 2
);

-- Attendance Source (Remove FKs temporarily)
CREATE TABLE AttendanceSource (
    attendance_id INT,
    device_id INT,
    source_type VARCHAR(50),
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    recorded_at DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (attendance_id, device_id)
    -- FKs to Attendance and Device will be added in Phase 2
);


-- =============================================
-- Tarek's Part: Payroll, Salary Types & Policies
-- CORRECTED VERSION - Two-Phase Approach
-- PHASE 1: Create tables WITHOUT foreign keys
-- PHASE 2: Add foreign keys after all tables exist
-- =============================================

-- =============================================
-- PHASE 1: CREATE ALL TABLES (NO FOREIGN KEYS)
-- =============================================

-- Currency Table (No dependencies - independent)
CREATE TABLE Currency (
    CurrencyCode VARCHAR(10) PRIMARY KEY,
    CurrencyName VARCHAR(50) NOT NULL,
    ExchangeRate DECIMAL(10,4) NOT NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    LastUpdated DATETIME DEFAULT GETDATE()
);

-- Tax Form Table (No dependencies - independent)
CREATE TABLE TaxForm (
    tax_form_id INT PRIMARY KEY IDENTITY(1,1),
    jurisdiction VARCHAR(100) NOT NULL,
    validity_period VARCHAR(100),
    form_content NVARCHAR(MAX)
);

-- Pay Grade Table (No dependencies - independent)
CREATE TABLE PayGrade (
    pay_grade_id INT PRIMARY KEY IDENTITY(1,1),
    grade_name VARCHAR(50) NOT NULL UNIQUE,
    min_salary DECIMAL(10,2) NOT NULL,
    max_salary DECIMAL(10,2) NOT NULL,
    CONSTRAINT CHK_PayGrade_MinMax CHECK (min_salary < max_salary)
);

-- Salary Type Table (Remove FK temporarily)
CREATE TABLE SalaryType (
    salary_type_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50) NOT NULL,
    payment_frequency VARCHAR(50),
    currency VARCHAR(10)
    -- FK to Currency will be added in Phase 2
);

-- Hourly Salary Type (Remove FK temporarily)
CREATE TABLE HourlySalaryType (
    salary_type_id INT PRIMARY KEY,
    hourly_rate DECIMAL(10,2) NOT NULL,
    max_monthly_hours INT
    -- FK to SalaryType will be added in Phase 2
);

-- Monthly Salary Type (Remove FK temporarily)
CREATE TABLE MonthlySalaryType (
    salary_type_id INT PRIMARY KEY,
    tax_rule VARCHAR(200),
    contribution_scheme VARCHAR(200)
    -- FK to SalaryType will be added in Phase 2
);

-- Contract Salary Type (Remove FK temporarily)
CREATE TABLE ContractSalaryType (
    salary_type_id INT PRIMARY KEY,
    contract_value DECIMAL(10,2) NOT NULL,
    installment_details VARCHAR(500)
    -- FK to SalaryType will be added in Phase 2
);

-- Payroll Table (Remove FK temporarily)
CREATE TABLE Payroll (
    payroll_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    taxes DECIMAL(10,2) DEFAULT 0,
    period_start DATE NOT NULL,
    period_end DATE NOT NULL,
    base_amount DECIMAL(10,2) NOT NULL,
    adjustments DECIMAL(10,2) DEFAULT 0,
    contributions DECIMAL(10,2) DEFAULT 0,
    actual_pay DECIMAL(10,2),
    net_salary AS (base_amount + adjustments - taxes - contributions) PERSISTED,
    payment_date DATE
    -- FK to Employee will be added in Phase 2
);

-- Allowance Deduction Table (Remove FKs temporarily)
CREATE TABLE AllowanceDeduction (
    ad_id INT PRIMARY KEY IDENTITY(1,1),
    payroll_id INT NOT NULL,
    employee_id INT NOT NULL,
    type VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(10),
    duration VARCHAR(50),
    timezone VARCHAR(50)
    -- FKs to Payroll, Employee, and Currency will be added in Phase 2
);

-- Payroll Policy Table (No dependencies - independent)
CREATE TABLE PayrollPolicy (
    policy_id INT PRIMARY KEY IDENTITY(1,1),
    effective_date DATE NOT NULL,
    type VARCHAR(50) NOT NULL,
    description NVARCHAR(MAX)
);

-- Overtime Policy Table (Remove FK temporarily)
CREATE TABLE OvertimePolicy (
    policy_id INT PRIMARY KEY,
    weekday_rate_multiplier DECIMAL(3,2) NOT NULL,
    weekend_rate_multiplier DECIMAL(3,2) NOT NULL,
    max_hours_per_month INT
    -- FK to PayrollPolicy will be added in Phase 2
);

-- Lateness Policy Table (Remove FK temporarily)
CREATE TABLE LatenessPolicy (
    policy_id INT PRIMARY KEY,
    grace_period_mins INT NOT NULL,
    deduction_rate DECIMAL(5,2) NOT NULL
    -- FK to PayrollPolicy will be added in Phase 2
);

-- Bonus Policy Table (Remove FK temporarily)
CREATE TABLE BonusPolicy (
    policy_id INT PRIMARY KEY,
    bonus_type VARCHAR(50) NOT NULL,
    eligibility_criteria NVARCHAR(MAX)
    -- FK to PayrollPolicy will be added in Phase 2
);

-- Deduction Policy Table (Remove FK temporarily)
CREATE TABLE DeductionPolicy (
    policy_id INT PRIMARY KEY,
    deduction_reason VARCHAR(100) NOT NULL,
    calculation_mode VARCHAR(50) NOT NULL
    -- FK to PayrollPolicy will be added in Phase 2
);

-- Payroll Policy ID Junction Table (Remove FKs temporarily)
CREATE TABLE PayrollPolicy_ID (
    payroll_id INT NOT NULL,
    policy_id INT NOT NULL,
    PRIMARY KEY (payroll_id, policy_id)
    -- FKs to Payroll and PayrollPolicy will be added in Phase 2
);

-- Payroll Log Table (Remove FK temporarily)
CREATE TABLE Payroll_Log (
    payroll_log_id INT PRIMARY KEY IDENTITY(1,1),
    payroll_id INT NOT NULL,
    actor INT NOT NULL,
    change_date DATETIME DEFAULT GETDATE(),
    modification_type VARCHAR(100) NOT NULL
    -- FK to Payroll will be added in Phase 2
);

-- Payroll Period Table (Remove FK temporarily)
CREATE TABLE PayrollPeriod (
    payroll_period_id INT PRIMARY KEY IDENTITY(1,1),
    payroll_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Open',
    CONSTRAINT CHK_PayrollPeriod_Dates CHECK (start_date < end_date)
    -- FK to Payroll will be added in Phase 2
);








-- =============================================
------Ziad's FK-------------------------------
-- =============================================

-- Foreign Keys for Employee table
ALTER TABLE Employee
ADD FOREIGN KEY (position_id) REFERENCES Position(position_id);

ALTER TABLE Employee
ADD FOREIGN KEY (pay_grade) REFERENCES PayGrade(pay_grade_id);

ALTER TABLE Employee
ADD FOREIGN KEY (tax_form_id) REFERENCES TaxForm(tax_form_id);

ALTER TABLE Employee
ADD FOREIGN KEY (department_id) REFERENCES Department(department_id);

ALTER TABLE Employee
ADD FOREIGN KEY (manager_id) REFERENCES Employee(employee_id);

ALTER TABLE Employee
ADD FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id);

ALTER TABLE Employee
ADD FOREIGN KEY (contract_id) REFERENCES Contract(contract_id);

-- Foreign Keys for HRAdministrator
ALTER TABLE HRAdministrator
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for SystemAdministrator
ALTER TABLE SystemAdministrator
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for PayrollSpecialist
ALTER TABLE PayrollSpecialist
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for LineManager
ALTER TABLE LineManager
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for RolePermission
ALTER TABLE RolePermission
ADD FOREIGN KEY (role_id) REFERENCES Role(role_id);

-- Foreign Keys for Employee_Role
ALTER TABLE Employee_Role
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE Employee_Role
ADD FOREIGN KEY (role_id) REFERENCES Role(role_id);

-- Foreign Keys for EmployeeHierarchy
ALTER TABLE EmployeeHierarchy
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE EmployeeHierarchy
ADD FOREIGN KEY (manager_id) REFERENCES Employee(employee_id);

-- Foreign Keys for ManagerNotes
ALTER TABLE ManagerNotes
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE ManagerNotes
ADD FOREIGN KEY (manager_id) REFERENCES Employee(employee_id);

-- Foreign Keys for ApprovalWorkflow
ALTER TABLE ApprovalWorkflow
ADD FOREIGN KEY (created_by) REFERENCES Employee(employee_id);

-- Foreign Keys for ApprovalWorkflowStep
ALTER TABLE ApprovalWorkflowStep
ADD FOREIGN KEY (workflow_id) REFERENCES ApprovalWorkflow(workflow_id);

ALTER TABLE ApprovalWorkflowStep
ADD FOREIGN KEY (role_id) REFERENCES Role(role_id);



-- =============================================
-----Tarek's FK-------------------------
-- =============================================

-- Foreign Key for SalaryType (references Currency)
ALTER TABLE SalaryType
ADD FOREIGN KEY (currency) REFERENCES Currency(CurrencyCode);

-- Foreign Keys for Salary Type Subtypes (reference SalaryType)
ALTER TABLE HourlySalaryType
ADD FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id);

ALTER TABLE MonthlySalaryType
ADD FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id);

ALTER TABLE ContractSalaryType
ADD FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id);

-- Foreign Key for Payroll (references Employee)
ALTER TABLE Payroll
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for AllowanceDeduction
ALTER TABLE AllowanceDeduction
ADD FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id);

ALTER TABLE AllowanceDeduction
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE AllowanceDeduction
ADD FOREIGN KEY (currency) REFERENCES Currency(CurrencyCode);

-- Foreign Keys for Policy Subtypes (reference PayrollPolicy)
ALTER TABLE OvertimePolicy
ADD FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id);

ALTER TABLE LatenessPolicy
ADD FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id);

ALTER TABLE BonusPolicy
ADD FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id);

ALTER TABLE DeductionPolicy
ADD FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id);

-- Foreign Keys for PayrollPolicy_ID Junction Table
ALTER TABLE PayrollPolicy_ID
ADD FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id);

ALTER TABLE PayrollPolicy_ID
ADD FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id);

-- Foreign Key for Payroll_Log (references Payroll)
ALTER TABLE Payroll_Log
ADD FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id);

-- Foreign Key for PayrollPeriod (references Payroll)
ALTER TABLE PayrollPeriod
ADD FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id);

-- =============================================
-----Youssef's FK----------------------
-- =============================================

-- Foreign Key for Department (references Employee)
ALTER TABLE Department
ADD CONSTRAINT FK_Department_Head 
    FOREIGN KEY (department_head_id) REFERENCES Employee(employee_id);

-- Foreign Keys for Employee_Skill
ALTER TABLE Employee_Skill
ADD CONSTRAINT FK_EmployeeSkill_Employee 
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE;

ALTER TABLE Employee_Skill
ADD CONSTRAINT FK_EmployeeSkill_Skill 
    FOREIGN KEY (skill_id) REFERENCES Skill(skill_id);

-- Foreign Keys for Employee_Verification
ALTER TABLE Employee_Verification
ADD CONSTRAINT FK_EmployeeVerification_Employee 
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE;

ALTER TABLE Employee_Verification
ADD CONSTRAINT FK_EmployeeVerification_Verification 
    FOREIGN KEY (verification_id) REFERENCES Verification(verification_id);

-- Foreign Keys for Employee_Notification
ALTER TABLE Employee_Notification
ADD CONSTRAINT FK_EmployeeNotification_Employee 
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE;

ALTER TABLE Employee_Notification
ADD CONSTRAINT FK_EmployeeNotification_Notification 
    FOREIGN KEY (notification_id) REFERENCES Notification(notification_id) ON DELETE CASCADE;


-- =============================================
-- Ali's FK-------------------------------
-- =============================================

-- Foreign Keys for Contract Subtypes (reference Contract table)
ALTER TABLE FullTimeContract
ADD FOREIGN KEY (contract_id) REFERENCES Contract(contract_id);

ALTER TABLE PartTimeContract
ADD FOREIGN KEY (contract_id) REFERENCES Contract(contract_id);

ALTER TABLE ConsultantContract
ADD FOREIGN KEY (contract_id) REFERENCES Contract(contract_id);

ALTER TABLE InternshipContract
ADD FOREIGN KEY (contract_id) REFERENCES Contract(contract_id);

-- Foreign Key for Termination (references Contract)
ALTER TABLE Termination
ADD FOREIGN KEY (contract_id) REFERENCES Contract(contract_id);

-- Foreign Key for Reimbursement (references Employee)
ALTER TABLE Reimbursement
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for Mission (references Employee)
ALTER TABLE Mission
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE Mission
ADD FOREIGN KEY (manager_id) REFERENCES Employee(employee_id);


-- =============================================
-- Omar's FK----------------------------------
-- =============================================

-- Foreign Keys for Leave Subtypes (reference Leave table)
ALTER TABLE VacationLeave
ADD FOREIGN KEY (leave_id) REFERENCES Leave(leave_id) ON DELETE CASCADE;

ALTER TABLE SickLeave
ADD FOREIGN KEY (leave_id) REFERENCES Leave(leave_id) ON DELETE CASCADE;

ALTER TABLE ProbationLeave
ADD FOREIGN KEY (leave_id) REFERENCES Leave(leave_id) ON DELETE CASCADE;

ALTER TABLE HolidayLeave
ADD FOREIGN KEY (leave_id) REFERENCES Leave(leave_id) ON DELETE CASCADE;

-- Foreign Keys for LeaveRequest
ALTER TABLE LeaveRequest
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE LeaveRequest
ADD FOREIGN KEY (leave_id) REFERENCES Leave(leave_id);

-- Foreign Keys for LeaveEntitlement
ALTER TABLE LeaveEntitlement
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE LeaveEntitlement
ADD FOREIGN KEY (leave_type_id) REFERENCES Leave(leave_id);

-- Foreign Key for LeaveDocument
ALTER TABLE LeaveDocument
ADD FOREIGN KEY (leave_request_id) REFERENCES LeaveRequest(request_id) ON DELETE CASCADE;

-- Foreign Keys for ShiftAssignment
ALTER TABLE ShiftAssignment
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE ShiftAssignment
ADD FOREIGN KEY (shift_id) REFERENCES ShiftSchedule(shift_id);

-- Foreign Keys for ShiftCycleAssignment
ALTER TABLE ShiftCycleAssignment
ADD FOREIGN KEY (cycle_id) REFERENCES ShiftCycle(cycle_id) ON DELETE CASCADE;

ALTER TABLE ShiftCycleAssignment
ADD FOREIGN KEY (shift_id) REFERENCES ShiftSchedule(shift_id);

-- Foreign Keys for Attendance
ALTER TABLE Attendance
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE Attendance
ADD FOREIGN KEY (shift_id) REFERENCES ShiftSchedule(shift_id);

ALTER TABLE Attendance
ADD FOREIGN KEY (exception_id) REFERENCES Exception(exception_id);

-- Foreign Keys for Employee_Exception
ALTER TABLE Employee_Exception
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE;

ALTER TABLE Employee_Exception
ADD FOREIGN KEY (exception_id) REFERENCES Exception(exception_id) ON DELETE CASCADE;

-- Foreign Key for AttendanceLog
ALTER TABLE AttendanceLog
ADD FOREIGN KEY (attendance_id) REFERENCES Attendance(attendance_id) ON DELETE CASCADE;

-- Foreign Keys for AttendanceCorrectionRequest
ALTER TABLE AttendanceCorrectionRequest
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

ALTER TABLE AttendanceCorrectionRequest
ADD FOREIGN KEY (recorded_by) REFERENCES Employee(employee_id);

-- Foreign Key for Device
ALTER TABLE Device
ADD FOREIGN KEY (employee_id) REFERENCES Employee(employee_id);

-- Foreign Keys for AttendanceSource
ALTER TABLE AttendanceSource
ADD FOREIGN KEY (attendance_id) REFERENCES Attendance(attendance_id) ON DELETE CASCADE;

ALTER TABLE AttendanceSource
ADD FOREIGN KEY (device_id) REFERENCES Device(device_id);





-- =============================================
-- Ziad's Indexes
-- =============================================

CREATE INDEX IX_Employee_Department ON Employee(department_id);
CREATE INDEX IX_Employee_Manager ON Employee(manager_id);
CREATE INDEX IX_Employee_Position ON Employee(position_id);
CREATE INDEX IX_Employee_Email ON Employee(email);
CREATE INDEX IX_Employee_IsActive ON Employee(is_active);
CREATE INDEX IX_EmployeeRole_Employee ON Employee_Role(employee_id);
CREATE INDEX IX_EmployeeRole_Role ON Employee_Role(role_id);
CREATE INDEX IX_EmployeeHierarchy_Employee ON EmployeeHierarchy(employee_id);
CREATE INDEX IX_EmployeeHierarchy_Manager ON EmployeeHierarchy(manager_id);
CREATE INDEX IX_ManagerNotes_Employee ON ManagerNotes(employee_id);
CREATE INDEX IX_ManagerNotes_Manager ON ManagerNotes(manager_id);
CREATE INDEX IX_ApprovalWorkflowStep_Workflow ON ApprovalWorkflowStep(workflow_id);
CREATE INDEX IX_ApprovalWorkflowStep_Role ON ApprovalWorkflowStep(role_id);

-- =============================================
-- Yousef's Indexes---------------
-- =============================================

-- Department Indexes
CREATE INDEX IX_Department_Head ON Department(department_head_id);
CREATE INDEX IX_Department_Name ON Department(department_name);

-- Position Indexes
CREATE INDEX IX_Position_Title ON Position(position_title);
CREATE INDEX IX_Position_Status ON Position(status);

-- Skill Indexes
CREATE INDEX IX_Skill_Name ON Skill(skill_name);

-- Employee_Skill Indexes
CREATE INDEX IX_EmployeeSkill_Employee ON Employee_Skill(employee_id);
CREATE INDEX IX_EmployeeSkill_Skill ON Employee_Skill(skill_id);
CREATE INDEX IX_EmployeeSkill_Proficiency ON Employee_Skill(proficiency_level);

-- Verification Indexes
CREATE INDEX IX_Verification_Type ON Verification(verification_type);
CREATE INDEX IX_Verification_IssueDate ON Verification(issue_date);

-- Employee_Verification Indexes
CREATE INDEX IX_EmployeeVerification_Employee ON Employee_Verification(employee_id);
CREATE INDEX IX_EmployeeVerification_Verification ON Employee_Verification(verification_id);

-- Notification Indexes
CREATE INDEX IX_Notification_Type ON Notification(notification_type);
CREATE INDEX IX_Notification_Urgency ON Notification(urgency);
CREATE INDEX IX_Notification_Timestamp ON Notification(timestamp);
CREATE INDEX IX_Notification_ReadStatus ON Notification(read_status);

-- Employee_Notification Indexes
CREATE INDEX IX_EmployeeNotification_Employee ON Employee_Notification(employee_id);
CREATE INDEX IX_EmployeeNotification_Notification ON Employee_Notification(notification_id);
CREATE INDEX IX_EmployeeNotification_DeliveryStatus ON Employee_Notification(delivery_status);



-- =============================================
-- Ali's Indexes--------------------------
-- =============================================

-- Contract Indexes
CREATE INDEX IX_Contract_Type ON Contract(type);
CREATE INDEX IX_Contract_State ON Contract(current_state);
CREATE INDEX IX_Contract_StartDate ON Contract(start_date);
CREATE INDEX IX_Contract_EndDate ON Contract(end_date);

-- FullTimeContract Indexes
CREATE INDEX IX_FullTimeContract_Eligibility ON FullTimeContract(insurance_eligibility);

-- PartTimeContract Indexes
CREATE INDEX IX_PartTimeContract_Rate ON PartTimeContract(hourly_rate);

-- Insurance Indexes
CREATE INDEX IX_Insurance_Type ON Insurance(type);

-- Termination Indexes
CREATE INDEX IX_Termination_Date ON Termination(date);
CREATE INDEX IX_Termination_ContractID ON Termination(contract_id);

-- Reimbursement Indexes
CREATE INDEX IX_Reimbursement_EmployeeID ON Reimbursement(employee_id);
CREATE INDEX IX_Reimbursement_Status ON Reimbursement(current_status);
CREATE INDEX IX_Reimbursement_Type ON Reimbursement(type);

-- Mission Indexes
CREATE INDEX IX_Mission_EmployeeID ON Mission(employee_id);
CREATE INDEX IX_Mission_ManagerID ON Mission(manager_id);
CREATE INDEX IX_Mission_Status ON Mission(status);
CREATE INDEX IX_Mission_StartDate ON Mission(start_date);
CREATE INDEX IX_Mission_EndDate ON Mission(end_date);


-- =============================================
-- Omar's Indexes
-- =============================================

-- Leave Indexes
CREATE INDEX IX_Leave_Type ON Leave(leave_type);

-- LeaveRequest Indexes
CREATE INDEX IX_LeaveRequest_EmployeeID ON LeaveRequest(employee_id);
CREATE INDEX IX_LeaveRequest_LeaveID ON LeaveRequest(leave_id);
CREATE INDEX IX_LeaveRequest_Status ON LeaveRequest(status);
CREATE INDEX IX_LeaveRequest_ApprovalTiming ON LeaveRequest(approval_timing);

-- LeaveEntitlement Indexes
CREATE INDEX IX_LeaveEntitlement_EmployeeID ON LeaveEntitlement(employee_id);
CREATE INDEX IX_LeaveEntitlement_LeaveTypeID ON LeaveEntitlement(leave_type_id);

-- LeaveDocument Indexes
CREATE INDEX IX_LeaveDocument_RequestID ON LeaveDocument(leave_request_id);

-- ShiftSchedule Indexes
CREATE INDEX IX_ShiftSchedule_Name ON ShiftSchedule(name);
CREATE INDEX IX_ShiftSchedule_Type ON ShiftSchedule(type);
CREATE INDEX IX_ShiftSchedule_Status ON ShiftSchedule(status);
CREATE INDEX IX_ShiftSchedule_Date ON ShiftSchedule(shift_date);

-- ShiftAssignment Indexes
CREATE INDEX IX_ShiftAssignment_EmployeeID ON ShiftAssignment(employee_id);
CREATE INDEX IX_ShiftAssignment_ShiftID ON ShiftAssignment(shift_id);
CREATE INDEX IX_ShiftAssignment_Status ON ShiftAssignment(status);
CREATE INDEX IX_ShiftAssignment_StartDate ON ShiftAssignment(start_date);
CREATE INDEX IX_ShiftAssignment_EndDate ON ShiftAssignment(end_date);

-- ShiftCycle Indexes
CREATE INDEX IX_ShiftCycle_Name ON ShiftCycle(cycle_name);

-- Exception Indexes
CREATE INDEX IX_Exception_Category ON Exception(category);
CREATE INDEX IX_Exception_Date ON Exception(date);
CREATE INDEX IX_Exception_Status ON Exception(status);

-- Attendance Indexes
CREATE INDEX IX_Attendance_EmployeeID ON Attendance(employee_id);
CREATE INDEX IX_Attendance_ShiftID ON Attendance(shift_id);
CREATE INDEX IX_Attendance_EntryTime ON Attendance(entry_time);
CREATE INDEX IX_Attendance_ExitTime ON Attendance(exit_time);
CREATE INDEX IX_Attendance_ExceptionID ON Attendance(exception_id);

-- AttendanceLog Indexes
CREATE INDEX IX_AttendanceLog_AttendanceID ON AttendanceLog(attendance_id);
CREATE INDEX IX_AttendanceLog_Actor ON AttendanceLog(actor);
CREATE INDEX IX_AttendanceLog_Timestamp ON AttendanceLog(timestamp);

-- AttendanceCorrectionRequest Indexes
CREATE INDEX IX_AttendanceCorrectionRequest_EmployeeID ON AttendanceCorrectionRequest(employee_id);
CREATE INDEX IX_AttendanceCorrectionRequest_Status ON AttendanceCorrectionRequest(status);
CREATE INDEX IX_AttendanceCorrectionRequest_Date ON AttendanceCorrectionRequest(date);

-- Device Indexes
CREATE INDEX IX_Device_Type ON Device(device_type);
CREATE INDEX IX_Device_EmployeeID ON Device(employee_id);

-- AttendanceSource Indexes
CREATE INDEX IX_AttendanceSource_AttendanceID ON AttendanceSource(attendance_id);
CREATE INDEX IX_AttendanceSource_DeviceID ON AttendanceSource(device_id);



-- =============================================
-- Tarek's Indexes
-- =============================================

-- Currency Indexes
CREATE INDEX IX_Currency_Name ON Currency(CurrencyName);
CREATE INDEX IX_Currency_LastUpdated ON Currency(LastUpdated);

-- SalaryType Indexes
CREATE INDEX IX_SalaryType_Type ON SalaryType(type);
CREATE INDEX IX_SalaryType_Currency ON SalaryType(currency);
CREATE INDEX IX_SalaryType_Frequency ON SalaryType(payment_frequency);

-- PayGrade Indexes
CREATE INDEX IX_PayGrade_GradeName ON PayGrade(grade_name);

-- Payroll Indexes
CREATE INDEX IX_Payroll_EmployeeID ON Payroll(employee_id);
CREATE INDEX IX_Payroll_PeriodStart ON Payroll(period_start);
CREATE INDEX IX_Payroll_PeriodEnd ON Payroll(period_end);
CREATE INDEX IX_Payroll_PaymentDate ON Payroll(payment_date);

-- AllowanceDeduction Indexes
CREATE INDEX IX_AllowanceDeduction_PayrollID ON AllowanceDeduction(payroll_id);
CREATE INDEX IX_AllowanceDeduction_EmployeeID ON AllowanceDeduction(employee_id);
CREATE INDEX IX_AllowanceDeduction_Type ON AllowanceDeduction(type);
CREATE INDEX IX_AllowanceDeduction_Currency ON AllowanceDeduction(currency);

-- PayrollPolicy Indexes
CREATE INDEX IX_PayrollPolicy_Type ON PayrollPolicy(type);
CREATE INDEX IX_PayrollPolicy_EffectiveDate ON PayrollPolicy(effective_date);

-- PayrollPolicy_ID Indexes
CREATE INDEX IX_PayrollPolicyID_PayrollID ON PayrollPolicy_ID(payroll_id);
CREATE INDEX IX_PayrollPolicyID_PolicyID ON PayrollPolicy_ID(policy_id);

-- Payroll_Log Indexes
CREATE INDEX IX_PayrollLog_PayrollID ON Payroll_Log(payroll_id);
CREATE INDEX IX_PayrollLog_Actor ON Payroll_Log(actor);
CREATE INDEX IX_PayrollLog_ChangeDate ON Payroll_Log(change_date);
CREATE INDEX IX_PayrollLog_ModificationType ON Payroll_Log(modification_type);

-- TaxForm Indexes
CREATE INDEX IX_TaxForm_Jurisdiction ON TaxForm(jurisdiction);

-- PayrollPeriod Indexes
CREATE INDEX IX_PayrollPeriod_PayrollID ON PayrollPeriod(payroll_id);
CREATE INDEX IX_PayrollPeriod_Status ON PayrollPeriod(status);
CREATE INDEX IX_PayrollPeriod_StartDate ON PayrollPeriod(start_date);
CREATE INDEX IX_PayrollPeriod_EndDate ON PayrollPeriod(end_date);

-- =============================================
-- END OF TAREK'S CORRECTED TABLES
-- =============================================
