-- =============================================
------------------Ziad's Part-------------------
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
    pay_grade INT,
    FOREIGN KEY (position_id) REFERENCES Position(position_id),
    FOREIGN KEY (pay_grade) REFERENCES PayGrade(pay_grade_id),
    FOREIGN KEY (tax_form_id) REFERENCES TaxForm(tax_form_id),
    FOREIGN KEY (department_id) REFERENCES Department(department_id),
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id),
    FOREIGN KEY (contract_id) REFERENCES Contract(contract_id)
);

-- Table: HRAdministrator
CREATE TABLE HRAdministrator (
    employee_id INT PRIMARY KEY,
    approval_level VARCHAR(20) DEFAULT 'Junior' CHECK (approval_level IN ('Junior', 'Senior', 'Chief')),
    record_access_scope VARCHAR(50),
    document_validation_rights VARCHAR(100),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Table: SystemAdministrator
CREATE TABLE SystemAdministrator (
    employee_id INT PRIMARY KEY,
    system_privilege_level VARCHAR(20) DEFAULT 'Standard' CHECK (system_privilege_level IN ('Standard', 'Senior', 'Super')),
    configurable_fields VARCHAR(MAX),
    audit_visibility_scope VARCHAR(100),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Table: PayrollSpecialist
CREATE TABLE PayrollSpecialist (
    employee_id INT PRIMARY KEY,
    assigned_region VARCHAR(50),
    processing_frequency VARCHAR(20),
    last_processed_period DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Table: LineManager
CREATE TABLE LineManager (
    employee_id INT PRIMARY KEY,
    team_size INT DEFAULT 0,
    supervised_departments VARCHAR(100),
    approval_limit DECIMAL(10,2),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
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
    PRIMARY KEY (role_id, permission_name),
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

-- Table: Employee_Role
CREATE TABLE Employee_Role (
    employee_id INT NOT NULL,
    role_id INT NOT NULL,
    assigned_date DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (employee_id, role_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

-- Table: EmployeeHierarchy
CREATE TABLE EmployeeHierarchy (
    employee_id INT NOT NULL,
    manager_id INT,
    hierarchy_level INT DEFAULT 1,
    PRIMARY KEY (employee_id, manager_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id)
);

-- Table: ManagerNotes
CREATE TABLE ManagerNotes (
    note_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    manager_id INT NOT NULL,
    note_content VARCHAR(500) NOT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (manager_id) REFERENCES Employee(employee_id)
);

-- Table: ApprovalWorkflow
CREATE TABLE ApprovalWorkflow (
    workflow_id INT PRIMARY KEY IDENTITY(1,1),
    workflow_type VARCHAR(50) NOT NULL,
    threshold_amount DECIMAL(10,2),
    approver_role VARCHAR(50),
    created_by INT,
    status VARCHAR(20) DEFAULT 'Active' CHECK (status IN ('Active', 'Inactive', 'Draft')),
    FOREIGN KEY (created_by) REFERENCES Employee(employee_id)
);

-- Table: ApprovalWorkflowStep
CREATE TABLE ApprovalWorkflowStep (
    workflow_id INT NOT NULL,
    step_number INT NOT NULL,
    role_id INT NOT NULL,
    action_required VARCHAR(100),
    PRIMARY KEY (workflow_id, step_number),
    FOREIGN KEY (workflow_id) REFERENCES ApprovalWorkflow(workflow_id),
    FOREIGN KEY (role_id) REFERENCES Role(role_id)
);

-- Create indexes for performance optimization
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
-------------Ziad END---------------------------------------------------------------------------------------------------




---------------Youssef-------------------------
-- =============================================
-- 1. Department Table
-- =============================================
CREATE TABLE Department (
    department_id INT PRIMARY KEY IDENTITY(1,1),
    department_name VARCHAR(100) NOT NULL UNIQUE,
    purpose VARCHAR(500),
    department_head_id INT NULL,
    CONSTRAINT FK_Department_Head FOREIGN KEY (department_head_id) 
        REFERENCES Employee(employee_id)
);

-- =============================================
-- 2. Position Table
-- =============================================
CREATE TABLE Position (
    position_id INT PRIMARY KEY IDENTITY(1,1),
    position_title VARCHAR(100) NOT NULL,
    responsibilities VARCHAR(1000),
    status VARCHAR(20) CHECK (status IN ('Active', 'Inactive', 'Draft')) DEFAULT 'Active'
);

-- =============================================
-- 3. Skill Table
-- =============================================
CREATE TABLE Skill (
    skill_id INT PRIMARY KEY IDENTITY(1,1),
    skill_name VARCHAR(100) NOT NULL UNIQUE,
    description VARCHAR(500)
);

-- =============================================
-- 4. Employee_Skill Table (Many-to-Many)
-- =============================================
CREATE TABLE Employee_Skill (
    employee_id INT NOT NULL,
    skill_id INT NOT NULL,
    proficiency_level VARCHAR(20) CHECK (proficiency_level IN ('Beginner', 'Intermediate', 'Advanced', 'Expert')),
    PRIMARY KEY (employee_id, skill_id),
    CONSTRAINT FK_EmployeeSkill_Employee FOREIGN KEY (employee_id) 
        REFERENCES Employee(employee_id) ON DELETE CASCADE,
    CONSTRAINT FK_EmployeeSkill_Skill FOREIGN KEY (skill_id) 
        REFERENCES Skill(skill_id)
);

-- =============================================
-- 5. Verification Table
-- =============================================
CREATE TABLE Verification (
    verification_id INT PRIMARY KEY IDENTITY(1,1),
    verification_type VARCHAR(50) NOT NULL,
    issuer VARCHAR(150),
    issue_date DATE,
    expiry_period INT -- in days
);

-- =============================================
-- 6. Employee_Verification Table (Many-to-Many)
-- =============================================
CREATE TABLE Employee_Verification (
    employee_id INT NOT NULL,
    verification_id INT NOT NULL,
    PRIMARY KEY (employee_id, verification_id),
    CONSTRAINT FK_EmployeeVerification_Employee FOREIGN KEY (employee_id) 
        REFERENCES Employee(employee_id) ON DELETE CASCADE,
    CONSTRAINT FK_EmployeeVerification_Verification FOREIGN KEY (verification_id) 
        REFERENCES Verification(verification_id)
);

-- =============================================
-- 7. Notification Table
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
-- 8. Employee_Notification Table (Many-to-Many)
-- =============================================
CREATE TABLE Employee_Notification (
    employee_id INT NOT NULL,
    notification_id INT NOT NULL,
    delivery_status VARCHAR(20) CHECK (delivery_status IN ('Pending', 'Delivered', 'Failed')) DEFAULT 'Pending',
    delivered_at DATETIME,
    PRIMARY KEY (employee_id, notification_id),
    CONSTRAINT FK_EmployeeNotification_Employee FOREIGN KEY (employee_id) 
        REFERENCES Employee(employee_id) ON DELETE CASCADE,
    CONSTRAINT FK_EmployeeNotification_Notification FOREIGN KEY (notification_id) 
        REFERENCES Notification(notification_id) ON DELETE CASCADE
);

-- =============================================
-- Create Indexes for Performance
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
-------------- End of Yousef's---------------------------



-- =========================
-- CONTRACT TABLES
-- =========================

CREATE TABLE Contract (
    contract_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    start_date DATE,
    end_date DATE,
    current_state VARCHAR(50)
);

CREATE TABLE FullTimeContract (
    contract_id INT PRIMARY KEY,
    leave_entitlement INT,
    insurance_eligibility BIT,
    weekly_working_hours INT,
    FOREIGN KEY (contract_id) REFERENCES Contract(contract_id)
);

CREATE TABLE PartTimeContract (
    contract_id INT PRIMARY KEY,
    working_hours INT,
    hourly_rate DECIMAL(10,2),
    FOREIGN KEY (contract_id) REFERENCES Contract(contract_id)
);

CREATE TABLE ConsultantContract (
    contract_id INT PRIMARY KEY,
    project_scope VARCHAR(200),
    fees DECIMAL(10,2),
    payment_schedule VARCHAR(100),
    FOREIGN KEY (contract_id) REFERENCES Contract(contract_id)
);

CREATE TABLE InternshipContract (
    contract_id INT PRIMARY KEY,
    mentoring VARCHAR(200),
    evaluation VARCHAR(200),
    stipend_related VARCHAR(100),
    FOREIGN KEY (contract_id) REFERENCES Contract(contract_id)
);

-- =========================
-- INSURANCE
-- =========================

CREATE TABLE Insurance (
    insurance_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    contribution_rate DECIMAL(5,2),
    coverage VARCHAR(100)
);

-- =========================
-- TERMINATION
-- =========================

CREATE TABLE Termination (
    termination_id INT PRIMARY KEY IDENTITY(1,1),
    date DATE,
    reason VARCHAR(200),
    contract_id INT,
    FOREIGN KEY (contract_id) REFERENCES Contract(contract_id)
);

-- =========================
-- REIMBURSEMENT
-- =========================

CREATE TABLE Reimbursement (
    reimbursement_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50),
    claim_type VARCHAR(50),
    approval_date DATE,
    current_status VARCHAR(50),
    employee_id INT
);

-- =========================
-- MISSION
-- =========================

CREATE TABLE Mission (
    mission_id INT PRIMARY KEY IDENTITY(1,1),
    destination VARCHAR(100),
    start_date DATE,
    end_date DATE,
    status VARCHAR(50),
    employee_id INT,
    manager_id INT
);
-------------------Ali END--------------------------


---------- Omar Zaher -----------
-- =============================================
-- LEAVE SYSTEM TABLES
-- =============================================

CREATE TABLE Leave (
    leave_id INT PRIMARY KEY IDENTITY(1,1),
    leave_type VARCHAR(50) NOT NULL,
    leave_description VARCHAR(255)
);

CREATE TABLE VacationLeave (
    leave_id INT PRIMARY KEY,
    carry_over_days INT,
    approving_manager INT,
    FOREIGN KEY (leave_id) REFERENCES [Leave](leave_id) ON DELETE CASCADE
);

CREATE TABLE SickLeave (
    leave_id INT PRIMARY KEY,
    medical_cert_required BIT DEFAULT 0,
    physician_id INT,
    FOREIGN KEY (leave_id) REFERENCES [Leave](leave_id) ON DELETE CASCADE
);

CREATE TABLE ProbationLeave (
    leave_id INT PRIMARY KEY,
    eligibility_start_date DATE,
    probation_period INT,
    FOREIGN KEY (leave_id) REFERENCES [Leave](leave_id) ON DELETE CASCADE
);

CREATE TABLE HolidayLeave (
    leave_id INT PRIMARY KEY,
    holiday_name VARCHAR(100) NOT NULL,
    official_recognition VARCHAR(100),
    regional_scope VARCHAR(100),
    FOREIGN KEY (leave_id) REFERENCES [Leave](leave_id) ON DELETE CASCADE
);

CREATE TABLE LeavePolicy (
    policy_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    purpose VARCHAR(255),
    eligibility_rules VARCHAR(200),
    notice_period INT,
    special_leave_type VARCHAR(50),
    reset_on_new_year BIT DEFAULT 1
);

CREATE TABLE LeaveRequest (
    request_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    leave_id INT NOT NULL,
    justification VARCHAR(500),
    duration INT,
    approval_timing DATETIME,
    status VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (leave_id) REFERENCES [Leave](leave_id)
);

CREATE TABLE LeaveEntitlement (
    employee_id INT,
    leave_type_id INT,
    entitlement DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (employee_id, leave_type_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (leave_type_id) REFERENCES [Leave](leave_id)
);

CREATE TABLE LeaveDocument (
    document_id INT PRIMARY KEY IDENTITY(1,1),
    leave_request_id INT NOT NULL,
    file_path VARCHAR(500) NOT NULL,
    uploaded_at DATETIME DEFAULT GETDATE(),
    FOREIGN KEY (leave_request_id) REFERENCES LeaveRequest(request_id) ON DELETE CASCADE
);

-- =============================================
-- SHIFT MANAGEMENT TABLES
-- =============================================

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

CREATE TABLE ShiftAssignment (
    assignment_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    shift_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE,
    status VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (shift_id) REFERENCES ShiftSchedule(shift_id)
);

CREATE TABLE ShiftCycle (
    cycle_id INT PRIMARY KEY IDENTITY(1,1),
    cycle_name VARCHAR(100) NOT NULL,
    description VARCHAR(255)
);

CREATE TABLE ShiftCycleAssignment (
    cycle_id INT,
    shift_id INT,
    order_number INT NOT NULL,
    PRIMARY KEY (cycle_id, shift_id),
    FOREIGN KEY (cycle_id) REFERENCES ShiftCycle(cycle_id) ON DELETE CASCADE,
    FOREIGN KEY (shift_id) REFERENCES ShiftSchedule(shift_id)
);

-- =============================================
-- ATTENDANCE TABLES
-- =============================================

CREATE TABLE Exception (
    exception_id INT PRIMARY KEY IDENTITY(1,1),
    name VARCHAR(100) NOT NULL,
    category VARCHAR(50),
    date DATE NOT NULL,
    status VARCHAR(50)
);

CREATE TABLE Attendance (
    attendance_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    shift_id INT,
    entry_time DATETIME,
    exit_time DATETIME,
    duration INT,
    login_method VARCHAR(50),
    logout_method VARCHAR(50),
    exception_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (shift_id) REFERENCES ShiftSchedule(shift_id),
    FOREIGN KEY (exception_id) REFERENCES Exception(exception_id)
);

CREATE TABLE Employee_Exception (
    employee_id INT,
    exception_id INT,
    PRIMARY KEY (employee_id, exception_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id) ON DELETE CASCADE,
    FOREIGN KEY (exception_id) REFERENCES Exception(exception_id) ON DELETE CASCADE
);

CREATE TABLE AttendanceLog (
    attendance_log_id INT PRIMARY KEY IDENTITY(1,1),
    attendance_id INT NOT NULL,
    actor INT NOT NULL,
    timestamp DATETIME DEFAULT GETDATE(),
    reason VARCHAR(500),
    FOREIGN KEY (attendance_id) REFERENCES Attendance(attendance_id) ON DELETE CASCADE
);

CREATE TABLE AttendanceCorrectionRequest (
    request_id INT PRIMARY KEY IDENTITY(1,1),
    employee_id INT NOT NULL,
    date DATE NOT NULL,
    correction_type VARCHAR(50),
    reason VARCHAR(500),
    status VARCHAR(50) DEFAULT 'Pending',
    recorded_by INT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (recorded_by) REFERENCES Employee(employee_id)
);

CREATE TABLE Device (
    device_id INT PRIMARY KEY IDENTITY(1,1),
    device_type VARCHAR(50),
    terminal_id VARCHAR(50) UNIQUE,
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    employee_id INT,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

CREATE TABLE AttendanceSource (
    attendance_id INT,
    device_id INT,
    source_type VARCHAR(50),
    latitude DECIMAL(10,7),
    longitude DECIMAL(10,7),
    recorded_at DATETIME DEFAULT GETDATE(),
    PRIMARY KEY (attendance_id, device_id),
    FOREIGN KEY (attendance_id) REFERENCES Attendance(attendance_id) ON DELETE CASCADE,
    FOREIGN KEY (device_id) REFERENCES Device(device_id)
);
--------- Omar Zaher End -------------



-- =============================================
-- Tarek - Payroll, Salary Types & Policies
-- Tables Creation Script
-- =============================================

-- Currency Table
CREATE TABLE Currency (
    CurrencyCode VARCHAR(10) PRIMARY KEY,
    CurrencyName VARCHAR(50) NOT NULL,
    ExchangeRate DECIMAL(10,4) NOT NULL,
    CreatedDate DATETIME DEFAULT GETDATE(),
    LastUpdated DATETIME DEFAULT GETDATE()
);

-- Salary Type Table
CREATE TABLE SalaryType (
    salary_type_id INT PRIMARY KEY IDENTITY(1,1),
    type VARCHAR(50) NOT NULL,
    payment_frequency VARCHAR(50),
    currency VARCHAR(10),
    FOREIGN KEY (currency) REFERENCES Currency(CurrencyCode)
);

-- Hourly Salary Type
CREATE TABLE HourlySalaryType (
    salary_type_id INT PRIMARY KEY,
    hourly_rate DECIMAL(10,2) NOT NULL,
    max_monthly_hours INT,
    FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id)
);

-- Monthly Salary Type
CREATE TABLE MonthlySalaryType (
    salary_type_id INT PRIMARY KEY,
    tax_rule VARCHAR(200),
    contribution_scheme VARCHAR(200),
    FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id)
);

-- Contract Salary Type
CREATE TABLE ContractSalaryType (
    salary_type_id INT PRIMARY KEY,
    contract_value DECIMAL(10,2) NOT NULL,
    installment_details VARCHAR(500),
    FOREIGN KEY (salary_type_id) REFERENCES SalaryType(salary_type_id)
);

-- Pay Grade Table
CREATE TABLE PayGrade (
    pay_grade_id INT PRIMARY KEY IDENTITY(1,1),
    grade_name VARCHAR(50) NOT NULL UNIQUE,
    min_salary DECIMAL(10,2) NOT NULL,
    max_salary DECIMAL(10,2) NOT NULL,
    CONSTRAINT CHK_PayGrade_MinMax CHECK (min_salary < max_salary)
);

-- Payroll Table
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
    net_salary AS (base_amount + adjustments - taxes - contributions),
    payment_date DATE,
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id)
);

-- Allowance Deduction Table
CREATE TABLE AllowanceDeduction (
    ad_id INT PRIMARY KEY IDENTITY(1,1),
    payroll_id INT NOT NULL,
    employee_id INT NOT NULL,
    type VARCHAR(50) NOT NULL,
    amount DECIMAL(10,2) NOT NULL,
    currency VARCHAR(10),
    duration VARCHAR(50),
    timezone VARCHAR(50),
    FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id),
    FOREIGN KEY (employee_id) REFERENCES Employee(employee_id),
    FOREIGN KEY (currency) REFERENCES Currency(CurrencyCode)
);

-- Payroll Policy Table
CREATE TABLE PayrollPolicy (
    policy_id INT PRIMARY KEY IDENTITY(1,1),
    effective_date DATE NOT NULL,
    type VARCHAR(50) NOT NULL,
    description NVARCHAR(MAX)
);

-- Overtime Policy Table
CREATE TABLE OvertimePolicy (
    policy_id INT PRIMARY KEY,
    weekday_rate_multiplier DECIMAL(3,2) NOT NULL,
    weekend_rate_multiplier DECIMAL(3,2) NOT NULL,
    max_hours_per_month INT,
    FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id)
);

-- Lateness Policy Table
CREATE TABLE LatenessPolicy (
    policy_id INT PRIMARY KEY,
    grace_period_mins INT NOT NULL,
    deduction_rate DECIMAL(5,2) NOT NULL,
    FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id)
);

-- Bonus Policy Table
CREATE TABLE BonusPolicy (
    policy_id INT PRIMARY KEY,
    bonus_type VARCHAR(50) NOT NULL,
    eligibility_criteria NVARCHAR(MAX),
    FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id)
);

-- Deduction Policy Table
CREATE TABLE DeductionPolicy (
    policy_id INT PRIMARY KEY,
    deduction_reason VARCHAR(100) NOT NULL,
    calculation_mode VARCHAR(50) NOT NULL,
    FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id)
);

-- Payroll Policy ID Junction Table
CREATE TABLE PayrollPolicy_ID (
    payroll_id INT NOT NULL,
    policy_id INT NOT NULL,
    PRIMARY KEY (payroll_id, policy_id),
    FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id),
    FOREIGN KEY (policy_id) REFERENCES PayrollPolicy(policy_id)
);

-- Payroll Log Table
CREATE TABLE Payroll_Log (
    payroll_log_id INT PRIMARY KEY IDENTITY(1,1),
    payroll_id INT NOT NULL,
    actor INT NOT NULL,
    change_date DATETIME DEFAULT GETDATE(),
    modification_type VARCHAR(100) NOT NULL,
    FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id)
);

-- Tax Form Table
CREATE TABLE TaxForm (
    tax_form_id INT PRIMARY KEY IDENTITY(1,1),
    jurisdiction VARCHAR(100) NOT NULL,
    validity_period VARCHAR(100),
    form_content NVARCHAR(MAX)
);

-- Payroll Period Table
CREATE TABLE PayrollPeriod (
    payroll_period_id INT PRIMARY KEY IDENTITY(1,1),
    payroll_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'Open',
    FOREIGN KEY (payroll_id) REFERENCES Payroll(payroll_id),
    CONSTRAINT CHK_PayrollPeriod_Dates CHECK (start_date < end_date)
);
-------------------------------Tarek End--------------------------------------
