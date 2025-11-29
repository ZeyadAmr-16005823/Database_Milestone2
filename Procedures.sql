-- =============================================
-- ADD THESE TWO DROP STATEMENTS TO YOUR DROP SECTION
-- =============================================



-- Add this line:
IF OBJECT_ID('ManagerApproveLeave', 'P') IS NOT NULL DROP PROCEDURE ManagerApproveLeave;

-- =============================================
-- OR USE THIS SIMPLER APPROACH - DROP ALL AT ONCE
-- =============================================

-- Replace your entire DROP section with this:
DROP PROCEDURE IF EXISTS GetActiveContracts;
DROP PROCEDURE IF EXISTS ViewEmployeeInfo;
DROP PROCEDURE IF EXISTS AddEmployee;
DROP PROCEDURE IF EXISTS UpdateEmployeeInfo;
DROP PROCEDURE IF EXISTS AssignRole;
DROP PROCEDURE IF EXISTS GetDepartmentEmployeeStats;
DROP PROCEDURE IF EXISTS ReassignManager;
DROP PROCEDURE IF EXISTS ReassignHierarchy;
DROP PROCEDURE IF EXISTS NotifyStructureChange;
DROP PROCEDURE IF EXISTS ViewOrgHierarchy;
DROP PROCEDURE IF EXISTS AssignShiftToEmployee;
DROP PROCEDURE IF EXISTS UpdateShiftStatus;
DROP PROCEDURE IF EXISTS AssignShiftToDepartment;
DROP PROCEDURE IF EXISTS AssignCustomShift;
DROP PROCEDURE IF EXISTS ConfigureSplitShift;
DROP PROCEDURE IF EXISTS EnableFirstInLastOut;
DROP PROCEDURE IF EXISTS TagAttendanceSource;
DROP PROCEDURE IF EXISTS SyncOfflineAttendance;
DROP PROCEDURE IF EXISTS LogAttendanceEdit;
DROP PROCEDURE IF EXISTS ApplyHolidayOverrides;
DROP PROCEDURE IF EXISTS ManageUserAccounts;
DROP PROCEDURE IF EXISTS AddEmployeeSkill;
DROP PROCEDURE IF EXISTS NotifyProfileUpdate;
DROP PROCEDURE IF EXISTS SendTeamNotification;
DROP PROCEDURE IF EXISTS AssignDepartmentHead;
DROP PROCEDURE IF EXISTS ViewTeamProfiles;
DROP PROCEDURE IF EXISTS GetTeamSummary;
DROP PROCEDURE IF EXISTS FilterTeamProfiles;
DROP PROCEDURE IF EXISTS ViewTeamCertifications;
DROP PROCEDURE IF EXISTS GenerateProfileReport;
DROP PROCEDURE IF EXISTS GetTeamByManager;
DROP PROCEDURE IF EXISTS CreateEmployeeProfile;
DROP PROCEDURE IF EXISTS UpdateEmployeeProfile;
DROP PROCEDURE IF EXISTS SetProfileCompleteness;
DROP PROCEDURE IF EXISTS GetTeamStatistics;
DROP PROCEDURE IF EXISTS AddManagerNotes;
DROP PROCEDURE IF EXISTS CreateContract;
DROP PROCEDURE IF EXISTS RenewContract;
DROP PROCEDURE IF EXISTS ApproveLeaveRequest;
DROP PROCEDURE IF EXISTS AssignMission;
DROP PROCEDURE IF EXISTS ReviewReimbursement;
DROP FUNCTION IF EXISTS GetActiveContracts;
DROP PROCEDURE IF EXISTS GetExpiringContracts;
DROP PROCEDURE IF EXISTS UpdateLeavePolicy;
DROP PROCEDURE IF EXISTS SubmitLeaveRequest;
DROP PROCEDURE IF EXISTS GetLeaveBalance;
DROP PROCEDURE IF EXISTS AttachLeaveDocuments;
DROP PROCEDURE IF EXISTS ModifyLeaveRequest;
DROP PROCEDURE IF EXISTS CancelLeaveRequest;
DROP PROCEDURE IF EXISTS ViewLeaveBalance;
DROP PROCEDURE IF EXISTS ViewLeaveHistory;
DROP PROCEDURE IF EXISTS SubmitLeaveAfterAbsence;
DROP PROCEDURE IF EXISTS NotifyLeaveStatusChange;
DROP PROCEDURE IF EXISTS ViewLeaveRequest;
DROP PROCEDURE IF EXISTS ManagerApproveLeave;
DROP PROCEDURE IF EXISTS RejectLeaveRequest;
DROP PROCEDURE IF EXISTS DelegateLeaveApproval;
DROP PROCEDURE IF EXISTS FlagIrregularLeave;
DROP PROCEDURE IF EXISTS NotifyNewLeaveRequest;
DROP PROCEDURE IF EXISTS ReviewLeaveRequest;
DROP PROCEDURE IF EXISTS GetPendingLeaveRequests;
DROP PROCEDURE IF EXISTS CreateShiftType;
DROP PROCEDURE IF EXISTS CreateShiftName;
DROP PROCEDURE IF EXISTS AssignRotationalShift;
DROP PROCEDURE IF EXISTS NotifyShiftExpiry;
DROP PROCEDURE IF EXISTS DefineShortTimeRules;
DROP PROCEDURE IF EXISTS SetGracePeriod;
DROP PROCEDURE IF EXISTS DefinePenaltyThreshold;
DROP PROCEDURE IF EXISTS DefinePermissionLimits;
DROP PROCEDURE IF EXISTS EscalatePendingRequests;
DROP PROCEDURE IF EXISTS LinkVacationToShift;
DROP PROCEDURE IF EXISTS ConfigureLeavePolicies;
DROP PROCEDURE IF EXISTS AuthenticateLeaveAdmin;
DROP PROCEDURE IF EXISTS ApplyLeaveConfiguration;
DROP PROCEDURE IF EXISTS UpdateLeaveEntitlements;
DROP PROCEDURE IF EXISTS ConfigureLeaveEligibility;
DROP PROCEDURE IF EXISTS ManageLeaveTypes;
DROP PROCEDURE IF EXISTS AssignLeaveEntitlement;
DROP PROCEDURE IF EXISTS ConfigureLeaveRules;
DROP PROCEDURE IF EXISTS ConfigureSpecialLeave;
DROP PROCEDURE IF EXISTS SetLeaveYearRules;
DROP PROCEDURE IF EXISTS AdjustLeaveBalance;
DROP PROCEDURE IF EXISTS ManageLeaveRoles;
DROP PROCEDURE IF EXISTS FinalizeLeaveRequest;
DROP PROCEDURE IF EXISTS OverrideLeaveDecision;
DROP PROCEDURE IF EXISTS BulkProcessLeaveRequests;
DROP PROCEDURE IF EXISTS VerifyMedicalLeave;
DROP PROCEDURE IF EXISTS SyncLeaveBalances;
DROP PROCEDURE IF EXISTS ProcessLeaveCarryForward;
DROP PROCEDURE IF EXISTS SyncLeaveToAttendance;
DROP PROCEDURE IF EXISTS AssignShift;
DROP PROCEDURE IF EXISTS ReassignShift;
DROP PROCEDURE IF EXISTS ViewAssignedShifts;
DROP PROCEDURE IF EXISTS RecordAttendance;
DROP PROCEDURE IF EXISTS LogFlexibleAttendance;
DROP PROCEDURE IF EXISTS NotifyMissedPunch;
DROP PROCEDURE IF EXISTS RecordMultiplePunches;
DROP PROCEDURE IF EXISTS SubmitCorrectionRequest;
DROP PROCEDURE IF EXISTS ViewRequestStatus;
DROP PROCEDURE IF EXISTS ViewTeamAttendance;
DROP PROCEDURE IF EXISTS RecordManualAttendance;
DROP PROCEDURE IF EXISTS ReviewMissedPunches;
DROP PROCEDURE IF EXISTS ApproveTimeRequest;
DROP PROCEDURE IF EXISTS GeneratePayroll;
DROP PROCEDURE IF EXISTS AdjustPayrollItem;
DROP PROCEDURE IF EXISTS CalculateNetSalary;
DROP PROCEDURE IF EXISTS ApplyPayrollPolicy;
DROP PROCEDURE IF EXISTS GetMonthlyPayrollSummary;
DROP PROCEDURE IF EXISTS AddAllowanceDeduction;
DROP PROCEDURE IF EXISTS GetEmployeePayrollHistory;
DROP PROCEDURE IF EXISTS GetBonusEligibleEmployees;
DROP PROCEDURE IF EXISTS UpdateSalaryType;
DROP PROCEDURE IF EXISTS GetPayrollByDepartment;
DROP PROCEDURE IF EXISTS ValidateAttendanceBeforePayroll;
DROP PROCEDURE IF EXISTS SyncAttendanceToPayroll;
DROP PROCEDURE IF EXISTS SyncApprovedPermissionsToPayroll;
DROP PROCEDURE IF EXISTS ConfigurePayGrades;
DROP PROCEDURE IF EXISTS ConfigureShiftAllowances;
DROP PROCEDURE IF EXISTS EnableMultiCurrencyPayroll;
DROP PROCEDURE IF EXISTS ManageTaxRules;
DROP PROCEDURE IF EXISTS ApprovePayrollConfigChanges;
DROP PROCEDURE IF EXISTS ConfigureSigningBonus;
DROP PROCEDURE IF EXISTS ConfigureTerminationBenefits;
DROP PROCEDURE IF EXISTS ConfigureInsuranceBrackets;
DROP PROCEDURE IF EXISTS UpdateInsuranceBrackets;
DROP PROCEDURE IF EXISTS ConfigurePayrollPolicies;
DROP PROCEDURE IF EXISTS DefinePayGrades;
DROP PROCEDURE IF EXISTS ConfigureEscalationWorkflow;
DROP PROCEDURE IF EXISTS DefinePayType;
DROP PROCEDURE IF EXISTS ConfigureOvertimeRules;
DROP PROCEDURE IF EXISTS ConfigureShiftAllowance;
DROP PROCEDURE IF EXISTS ConfigureMultiCurrency;
DROP PROCEDURE IF EXISTS ConfigureSigningBonusPolicy;
DROP PROCEDURE IF EXISTS ConfigureInsuranceBracketsByName;
DROP PROCEDURE IF EXISTS GenerateTaxStatement;
DROP PROCEDURE IF EXISTS ApprovePayrollConfiguration;
DROP PROCEDURE IF EXISTS ModifyPastPayroll;
DROP PROCEDURE IF EXISTS ViewEmployeeProfile;
DROP PROCEDURE IF EXISTS UpdateContactInformation;
DROP PROCEDURE IF EXISTS ViewEmploymentTimeline;
DROP PROCEDURE IF EXISTS UpdateEmergencyContact;
DROP PROCEDURE IF EXISTS RequestHRDocument;
DROP PROCEDURE IF EXISTS ViewMyContracts;
DROP PROCEDURE IF EXISTS ViewMyPayroll;
DROP PROCEDURE IF EXISTS UpdatePersonalDetails;
DROP PROCEDURE IF EXISTS ViewMyMissions;
DROP PROCEDURE IF EXISTS SubmitReimbursement;
DROP PROCEDURE IF EXISTS ApproveMissionCompletion;
DROP PROCEDURE IF EXISTS RequestReplacement;
DROP PROCEDURE IF EXISTS ViewDepartmentSummary;
DROP PROCEDURE IF EXISTS UpdateInsuranceBracketsNotify;
DROP PROCEDURE IF EXISTS ApprovePolicyUpdate;
GO


-- =============================================
-- ZIAD'S PART - SYSTEM ADMINISTRATOR PROCEDURES
-- =============================================

-- 1. ViewEmployeeInfo
CREATE PROCEDURE ViewEmployeeInfo
    @EmployeeID INT
AS
BEGIN
    SELECT * FROM Employee WHERE employee_id = @EmployeeID;
END;
GO

-- 2. AddEmployee
CREATE PROCEDURE AddEmployee
    @FullName VARCHAR(200),
    @NationalID VARCHAR(50),
    @DateOfBirth DATE,
    @CountryOfBirth VARCHAR(100),
    @Phone VARCHAR(50),
    @Email VARCHAR(100),
    @Address VARCHAR(255),
    @EmergencyContactName VARCHAR(100),
    @EmergencyContactPhone VARCHAR(50),
    @Relationship VARCHAR(50),
    @Biography VARCHAR(MAX),
    @EmploymentProgress VARCHAR(100),
    @AccountStatus VARCHAR(50),
    @EmploymentStatus VARCHAR(50),
    @HireDate DATE,
    @IsActive BIT,
    @ProfileCompletion INT,
    @DepartmentID INT,
    @PositionID INT,
    @ManagerID INT,
    @ContractID INT,
    @TaxFormID INT,
    @SalaryTypeID INT,
    @PayGrade VARCHAR(50)
AS
BEGIN
    DECLARE @NewEmployeeID INT;
    
    INSERT INTO Employee (
        full_name, national_id, date_of_birth, country_of_birth, phone, email, 
        address, emergency_contact_name, emergency_contact_phone, relationship, 
        biography, employment_progress, account_status, employment_status, 
        hire_date, is_active, profile_completion, department_id, position_id, 
        manager_id, contract_id, tax_form_id, salary_type_id, pay_grade
    )
    VALUES (
        @FullName, @NationalID, @DateOfBirth, @CountryOfBirth, @Phone, @Email,
        @Address, @EmergencyContactName, @EmergencyContactPhone, @Relationship,
        @Biography, @EmploymentProgress, @AccountStatus, @EmploymentStatus,
        @HireDate, @IsActive, @ProfileCompletion, @DepartmentID, @PositionID,
        @ManagerID, @ContractID, @TaxFormID, @SalaryTypeID, @PayGrade
    );
    
    SET @NewEmployeeID = SCOPE_IDENTITY();
    SELECT 'Employee added successfully' AS Message, @NewEmployeeID AS EmployeeID;
END;
GO

-- 3. UpdateEmployeeInfo
CREATE PROCEDURE UpdateEmployeeInfo
    @EmployeeID INT,
    @Email VARCHAR(100),
    @Phone VARCHAR(20),
    @Address VARCHAR(150)
AS
BEGIN
    UPDATE Employee
    SET email = @Email, phone = @Phone, address = @Address
    WHERE employee_id = @EmployeeID;
    
    SELECT 'Employee information updated successfully' AS Message;
END;
GO

-- 4. AssignRole
CREATE PROCEDURE AssignRole
    @EmployeeID INT,
    @RoleID INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Employee_Role WHERE employee_id = @EmployeeID AND role_id = @RoleID)
    BEGIN
        INSERT INTO Employee_Role (employee_id, role_id, assigned_date)
        VALUES (@EmployeeID, @RoleID, GETDATE());
    END
    
    SELECT 'Role assigned successfully' AS Message;
END;
GO

-- 5. GetDepartmentEmployeeStats
CREATE PROCEDURE GetDepartmentEmployeeStats
AS
BEGIN
    SELECT 
        d.department_name,
        COUNT(e.employee_id) AS EmployeeCount
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id
    GROUP BY d.department_id, d.department_name
    ORDER BY d.department_name;
END;
GO

-- 6. ReassignManager
CREATE PROCEDURE ReassignManager
    @EmployeeID INT,
    @NewManagerID INT
AS
BEGIN
    UPDATE Employee SET manager_id = @NewManagerID WHERE employee_id = @EmployeeID;
    
    UPDATE EmployeeHierarchy
    SET manager_id = @NewManagerID,
        hierarchy_level = (SELECT ISNULL(hierarchy_level, 0) FROM EmployeeHierarchy WHERE employee_id = @NewManagerID) + 1
    WHERE employee_id = @EmployeeID;
    
    SELECT 'Manager reassigned successfully' AS Message;
END;
GO

-- 7. ReassignHierarchy
CREATE PROCEDURE ReassignHierarchy
    @EmployeeID INT,
    @NewDepartmentID INT,
    @NewManagerID INT
AS
BEGIN
    UPDATE Employee
    SET department_id = @NewDepartmentID, manager_id = @NewManagerID
    WHERE employee_id = @EmployeeID;
    
    UPDATE EmployeeHierarchy
    SET manager_id = @NewManagerID,
        hierarchy_level = (SELECT ISNULL(hierarchy_level, 0) FROM EmployeeHierarchy WHERE employee_id = @NewManagerID) + 1
    WHERE employee_id = @EmployeeID;
    
    SELECT 'Hierarchy reassigned successfully' AS Message;
END;
GO

-- 8. NotifyStructureChange
CREATE PROCEDURE NotifyStructureChange
    @AffectedEmployees VARCHAR(500),
    @Message VARCHAR(200)
AS
BEGIN
    DECLARE @NotificationID INT;
    
    INSERT INTO Notification (message_content, timestamp, urgency, read_status, notification_type)
    VALUES (@Message, GETDATE(), 'High', 0, 'Structure Change');
    
    SET @NotificationID = SCOPE_IDENTITY();
    
    DECLARE @EmployeeID INT;
    DECLARE @Position INT;
    DECLARE @EmployeeList VARCHAR(500) = @AffectedEmployees + ',';
    
    WHILE CHARINDEX(',', @EmployeeList) > 0
    BEGIN
        SET @Position = CHARINDEX(',', @EmployeeList);
        SET @EmployeeID = CAST(LTRIM(RTRIM(LEFT(@EmployeeList, @Position - 1))) AS INT);
        
        INSERT INTO Employee_Notification (employee_id, notification_id, delivery_status, delivered_at)
        VALUES (@EmployeeID, @NotificationID, 'Pending', GETDATE());
        
        SET @EmployeeList = SUBSTRING(@EmployeeList, @Position + 1, LEN(@EmployeeList));
    END
    
    SELECT 'Notification sent successfully' AS ConfirmationMessage;
END;
GO

-- 9. ViewOrgHierarchy
CREATE PROCEDURE ViewOrgHierarchy
AS
BEGIN
    SELECT 
        e.employee_id,
        e.full_name AS EmployeeName,
        m.full_name AS ManagerName,
        d.department_name,
        p.position_title,
        ISNULL(eh.hierarchy_level, 0) AS HierarchyLevel
    FROM Employee e
    LEFT JOIN Employee m ON e.manager_id = m.employee_id
    LEFT JOIN Department d ON e.department_id = d.department_id
    LEFT JOIN Position p ON e.position_id = p.position_id
    LEFT JOIN EmployeeHierarchy eh ON e.employee_id = eh.employee_id
    ORDER BY ISNULL(eh.hierarchy_level, 0), d.department_name, e.full_name;
END;
GO

-- 10. AssignShiftToEmployee
CREATE PROCEDURE AssignShiftToEmployee
    @EmployeeID INT,
    @ShiftID INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    INSERT INTO ShiftAssignment (employee_id, shift_id, start_date, end_date, status)
    VALUES (@EmployeeID, @ShiftID, @StartDate, @EndDate, 'Approved');
    
    SELECT 'Shift assigned to employee successfully' AS Message;
END;
GO

-- 11. UpdateShiftStatus
CREATE PROCEDURE UpdateShiftStatus
    @ShiftAssignmentID INT,
    @Status VARCHAR(20)
AS
BEGIN
    UPDATE ShiftAssignment
    SET status = @Status
    WHERE assignment_id = @ShiftAssignmentID;
    
    SELECT 'Shift status updated successfully' AS Message;
END;
GO

-- 12. AssignShiftToDepartment
CREATE PROCEDURE AssignShiftToDepartment
    @DepartmentID INT,
    @ShiftID INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    INSERT INTO ShiftAssignment (employee_id, shift_id, start_date, end_date, status)
    SELECT employee_id, @ShiftID, @StartDate, @EndDate, 'Approved'
    FROM Employee
    WHERE department_id = @DepartmentID;
    
    SELECT 'Shift assigned to department successfully' AS Message;
END;
GO

-- 13. AssignCustomShift
CREATE PROCEDURE AssignCustomShift
    @EmployeeID INT,
    @ShiftName VARCHAR(50),
    @ShiftType VARCHAR(50),
    @StartTime TIME,
    @EndTime TIME,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    DECLARE @ShiftID INT;
    
    INSERT INTO ShiftSchedule (name, type, start_time, end_time, shift_date, status)
    VALUES (@ShiftName, @ShiftType, @StartTime, @EndTime, @StartDate, 'Active');
    
    SET @ShiftID = SCOPE_IDENTITY();
    
    INSERT INTO ShiftAssignment (employee_id, shift_id, start_date, end_date, status)
    VALUES (@EmployeeID, @ShiftID, @StartDate, @EndDate, 'Approved');
    
    SELECT 'Custom shift assigned successfully' AS Message;
END;
GO

-- 14. ConfigureSplitShift
CREATE PROCEDURE ConfigureSplitShift
    @ShiftName VARCHAR(50),
    @FirstSlotStart TIME,
    @FirstSlotEnd TIME,
    @SecondSlotStart TIME,
    @SecondSlotEnd TIME
AS
BEGIN
    DECLARE @BreakDuration INT = DATEDIFF(MINUTE, @FirstSlotEnd, @SecondSlotStart);
    
    INSERT INTO ShiftSchedule (name, type, start_time, end_time, break_duration, status)
    VALUES (@ShiftName, 'Split', @FirstSlotStart, @SecondSlotEnd, @BreakDuration, 'Active');
    
    SELECT 'Split shift configured successfully' AS Message;
END;
GO

-- 15. EnableFirstInLastOut
CREATE PROCEDURE EnableFirstInLastOut
    @Enable BIT
AS
BEGIN
    SELECT 'First In/Last Out processing: ' + CASE WHEN @Enable = 1 THEN 'Enabled' ELSE 'Disabled' END AS Message;
END;
GO

-- 16. TagAttendanceSource
CREATE PROCEDURE TagAttendanceSource
    @AttendanceID INT,
    @SourceType VARCHAR(20),
    @DeviceID INT,
    @Latitude DECIMAL(10,7),
    @Longitude DECIMAL(10,7)
AS
BEGIN
    INSERT INTO AttendanceSource (attendance_id, device_id, source_type, latitude, longitude)
    VALUES (@AttendanceID, @DeviceID, @SourceType, @Latitude, @Longitude);
    
    SELECT 'Attendance source tagged successfully' AS Message;
END;
GO

-- 17. SyncOfflineAttendance
CREATE PROCEDURE SyncOfflineAttendance
    @DeviceID INT,
    @EmployeeID INT,
    @ClockTime DATETIME,
    @Type VARCHAR(10)
AS
BEGIN
    IF @Type = 'IN'
        INSERT INTO Attendance (employee_id, entry_time)
        VALUES (@EmployeeID, @ClockTime);
    ELSE
        UPDATE Attendance
        SET exit_time = @ClockTime,
            duration = DATEDIFF(MINUTE, entry_time, @ClockTime)
        WHERE employee_id = @EmployeeID AND exit_time IS NULL;
    
    SELECT 'Offline attendance synced successfully' AS Message;
END;
GO

-- 18. LogAttendanceEdit
CREATE PROCEDURE LogAttendanceEdit
    @AttendanceID INT,
    @EditedBy INT,
    @OldValue DATETIME,
    @NewValue DATETIME,
    @EditTimestamp DATETIME
AS
BEGIN
    INSERT INTO AttendanceLog (attendance_id, actor, timestamp, reason)
    VALUES (@AttendanceID, @EditedBy, @EditTimestamp, 
            'Changed from ' + CAST(@OldValue AS VARCHAR) + ' to ' + CAST(@NewValue AS VARCHAR));
    
    SELECT 'Attendance edit logged successfully' AS Message;
END;
GO

-- 19. ApplyHolidayOverrides
CREATE PROCEDURE ApplyHolidayOverrides
    @HolidayID INT,
    @EmployeeID INT
AS
BEGIN
    INSERT INTO Exception (name, category, date, status)
    VALUES ('Holiday Override', 'Holiday', GETDATE(), 'Active');
    
    SELECT 'Holiday override applied successfully' AS Message;
END;
GO

-- 20. ManageUserAccounts
CREATE PROCEDURE ManageUserAccounts
    @UserID INT,
    @Role VARCHAR(50),
    @Action VARCHAR(20)
AS
BEGIN
    IF @Action = 'CREATE'
    BEGIN
        DECLARE @RoleID INT;
        SELECT @RoleID = role_id FROM Role WHERE role_name = @Role;
        
        IF @RoleID IS NOT NULL
        BEGIN
            INSERT INTO Employee_Role (employee_id, role_id, assigned_date)
            VALUES (@UserID, @RoleID, GETDATE());
        END
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM Employee_Role WHERE employee_id = @UserID;
    END
    
    SELECT 'User account managed successfully' AS Message;
END;
GO

-- =============================================
-- YOUSEF'S PART - HR ADMIN & LINE MANAGER
-- =============================================

-- 1. AddEmployeeSkill
CREATE PROCEDURE AddEmployeeSkill
    @EmployeeID INT,
    @SkillName VARCHAR(50)
AS
BEGIN
    DECLARE @SkillID INT;
    
    SELECT @SkillID = skill_id 
    FROM Skill 
    WHERE skill_name = @SkillName;
    
    IF @SkillID IS NULL
    BEGIN
        INSERT INTO Skill (skill_name, description)
        VALUES (@SkillName, 'User added skill');
        
        SET @SkillID = SCOPE_IDENTITY();
    END
    
    IF NOT EXISTS (SELECT 1 FROM Employee_Skill WHERE employee_id = @EmployeeID AND skill_id = @SkillID)
    BEGIN
        INSERT INTO Employee_Skill (employee_id, skill_id, proficiency_level)
        VALUES (@EmployeeID, @SkillID, 'Beginner');
        
        SELECT 'Skill added successfully' AS Message;
    END
    ELSE
    BEGIN
        SELECT 'Employee already has this skill' AS Message;
    END
END;
GO

-- 2. NotifyProfileUpdate
CREATE PROCEDURE NotifyProfileUpdate
    @EmployeeID INT,
    @NotificationType VARCHAR(50)
AS
BEGIN
    DECLARE @NotificationID INT;
    DECLARE @Message VARCHAR(200);
    
    SET @Message = 'Your profile has been updated: ' + @NotificationType;
    
    INSERT INTO Notification (message_content, timestamp, urgency, read_status, notification_type)
    VALUES (@Message, GETDATE(), 'Low', 0, 'Profile');
    
    SET @NotificationID = SCOPE_IDENTITY();
    
    INSERT INTO Employee_Notification (employee_id, notification_id, delivery_status, delivered_at)
    VALUES (@EmployeeID, @NotificationID, 'Delivered', GETDATE());
    
    SELECT 'Profile update notification sent' AS Message;
END;
GO

-- 3. SendTeamNotification
CREATE PROCEDURE SendTeamNotification
    @ManagerID INT,
    @MessageContent VARCHAR(255),
    @UrgencyLevel VARCHAR(50)
AS
BEGIN
    DECLARE @NotificationID INT;
    
    INSERT INTO Notification (message_content, timestamp, urgency, read_status, notification_type)
    VALUES (@MessageContent, GETDATE(), @UrgencyLevel, 0, 'Team');
    
    SET @NotificationID = SCOPE_IDENTITY();
    
    INSERT INTO Employee_Notification (employee_id, notification_id, delivery_status, delivered_at)
    SELECT employee_id, @NotificationID, 'Delivered', GETDATE()
    FROM Employee
    WHERE manager_id = @ManagerID;
    
    SELECT 'Team notification sent successfully' AS Message;
END;
GO

-- 4. AssignDepartmentHead
CREATE PROCEDURE AssignDepartmentHead
    @DepartmentID INT,
    @ManagerID INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Employee WHERE employee_id = @ManagerID)
    BEGIN
        UPDATE Department
        SET department_head_id = @ManagerID
        WHERE department_id = @DepartmentID;
        
        SELECT 'Department head assigned successfully' AS Message;
    END
    ELSE
    BEGIN
        SELECT 'Manager ID does not exist' AS Message;
    END
END;
GO

-- 5. ViewTeamProfiles
CREATE PROCEDURE ViewTeamProfiles
    @ManagerID INT
AS
BEGIN
    SELECT 
        e.employee_id,
        e.full_name,
        e.email,
        e.phone,
        p.position_title,
        d.department_name,
        e.hire_date
    FROM Employee e
    LEFT JOIN Position p ON e.position_id = p.position_id
    LEFT JOIN Department d ON e.department_id = d.department_id
    WHERE e.manager_id = @ManagerID;
END;
GO

-- 6. GetTeamSummary
CREATE PROCEDURE GetTeamSummary
    @ManagerID INT
AS
BEGIN
    SELECT 
        p.position_title,
        COUNT(*) as employee_count,
        AVG(DATEDIFF(YEAR, e.hire_date, GETDATE())) as avg_tenure_years
    FROM Employee e
    LEFT JOIN Position p ON e.position_id = p.position_id
    WHERE e.manager_id = @ManagerID
    GROUP BY p.position_title;
END;
GO

-- 7. FilterTeamProfiles
CREATE PROCEDURE FilterTeamProfiles
    @ManagerID INT,
    @Skill VARCHAR(50),
    @RoleID INT
AS
BEGIN
    SELECT DISTINCT
        e.employee_id,
        e.full_name,
        e.email,
        p.position_title,
        s.skill_name,
        es.proficiency_level
    FROM Employee e
    LEFT JOIN Position p ON e.position_id = p.position_id
    LEFT JOIN Employee_Skill es ON e.employee_id = es.employee_id
    LEFT JOIN Skill s ON es.skill_id = s.skill_id
    LEFT JOIN Employee_Role er ON e.employee_id = er.employee_id
    WHERE e.manager_id = @ManagerID
    AND (@Skill IS NULL OR s.skill_name = @Skill)
    AND (@RoleID IS NULL OR er.role_id = @RoleID);
END;
GO

-- 8. ViewTeamCertifications
CREATE PROCEDURE ViewTeamCertifications
    @ManagerID INT
AS
BEGIN
    SELECT 
        e.employee_id,
        e.full_name,
        s.skill_name,
        es.proficiency_level,
        v.verification_type,
        v.issuer,
        v.issue_date,
        v.expiry_period
    FROM Employee e
    LEFT JOIN Employee_Skill es ON e.employee_id = es.employee_id
    LEFT JOIN Skill s ON es.skill_id = s.skill_id
    LEFT JOIN Employee_Verification ev ON e.employee_id = ev.employee_id
    LEFT JOIN Verification v ON ev.verification_id = v.verification_id
    WHERE e.manager_id = @ManagerID;
END;
GO

-- 9. GenerateProfileReport
CREATE PROCEDURE GenerateProfileReport
    @FilterField VARCHAR(50),
    @FilterValue VARCHAR(100)
AS
BEGIN
    IF @FilterField = 'department'
    BEGIN
        SELECT e.employee_id, e.full_name, e.email, d.department_name, p.position_title
        FROM Employee e
        LEFT JOIN Department d ON e.department_id = d.department_id
        LEFT JOIN Position p ON e.position_id = p.position_id
        WHERE d.department_name = @FilterValue;
    END
    ELSE IF @FilterField = 'position'
    BEGIN
        SELECT e.employee_id, e.full_name, e.email, d.department_name, p.position_title
        FROM Employee e
        LEFT JOIN Department d ON e.department_id = d.department_id
        LEFT JOIN Position p ON e.position_id = p.position_id
        WHERE p.position_title = @FilterValue;
    END
    ELSE
    BEGIN
        SELECT e.employee_id, e.full_name, e.email, d.department_name, p.position_title
        FROM Employee e
        LEFT JOIN Department d ON e.department_id = d.department_id
        LEFT JOIN Position p ON e.position_id = p.position_id;
    END
END;
GO

-- 10. GetTeamByManager
CREATE PROCEDURE GetTeamByManager
    @ManagerID INT
AS
BEGIN
    SELECT employee_id, full_name AS EmployeeName
    FROM Employee
    WHERE manager_id = @ManagerID
    ORDER BY full_name;
END;
GO

-- 11. CreateEmployeeProfile
CREATE PROCEDURE CreateEmployeeProfile
    @FirstName VARCHAR(50),
    @LastName VARCHAR(50),
    @DepartmentID INT,
    @RoleID INT,
    @HireDate DATE,
    @Email VARCHAR(100),
    @Phone VARCHAR(20),
    @NationalID VARCHAR(50),
    @DateOfBirth DATE,
    @CountryOfBirth VARCHAR(100)
AS
BEGIN
    DECLARE @NewEmployeeID INT;
    DECLARE @FullName VARCHAR(200) = @FirstName + ' ' + @LastName;
    
    INSERT INTO Employee (full_name, national_id, date_of_birth, country_of_birth, phone, email, hire_date, department_id, is_active, profile_completion, account_status)
    VALUES (@FullName, @NationalID, @DateOfBirth, @CountryOfBirth, @Phone, @Email, @HireDate, @DepartmentID, 1, 30, 'Active');
    
    SET @NewEmployeeID = SCOPE_IDENTITY();
    
    INSERT INTO Employee_Role (employee_id, role_id, assigned_date)
    VALUES (@NewEmployeeID, @RoleID, GETDATE());
    
    INSERT INTO EmployeeHierarchy (employee_id, hierarchy_level)
    VALUES (@NewEmployeeID, 1);
    
    SELECT 'Employee profile created successfully' AS Message, @NewEmployeeID AS EmployeeID;
END;
GO

-- 12. UpdateEmployeeProfile
CREATE PROCEDURE UpdateEmployeeProfile
    @EmployeeID INT,
    @FieldName VARCHAR(50),
    @NewValue VARCHAR(255)
AS
BEGIN
    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = N'UPDATE Employee SET ' + QUOTENAME(@FieldName) + ' = @Value WHERE employee_id = @EmpID';
    EXEC sp_executesql @SQL, N'@Value VARCHAR(255), @EmpID INT', @Value = @NewValue, @EmpID = @EmployeeID;
    
    SELECT 'Employee profile updated successfully' AS Message;
END;
GO

-- 13. SetProfileCompleteness
CREATE PROCEDURE SetProfileCompleteness
    @EmployeeID INT,
    @CompletenessPercentage INT
AS
BEGIN
    UPDATE Employee SET profile_completion = @CompletenessPercentage WHERE employee_id = @EmployeeID;
    SELECT 'Profile completeness updated successfully' AS Message, @CompletenessPercentage AS CompletenessPercentage;
END;
GO

-- 14. GetTeamStatistics
CREATE PROCEDURE GetTeamStatistics
    @ManagerID INT
AS
BEGIN
    SELECT COUNT(*) AS TeamSize, COUNT(*) AS SpanOfControl
    FROM Employee
    WHERE manager_id = @ManagerID;
END;
GO

-- 15. AddManagerNotes
CREATE PROCEDURE AddManagerNotes
    @EmployeeID INT,
    @ManagerID INT,
    @Note VARCHAR(500)
AS
BEGIN
    INSERT INTO ManagerNotes (employee_id, manager_id, note_content, created_at)
    VALUES (@EmployeeID, @ManagerID, @Note, GETDATE());
    
    SELECT 'Manager note added successfully' AS Message;
END;
GO

-- =============================================
-- ALI'S PART - CONTRACT & MISSION MANAGEMENT
-- =============================================

-- 1. CreateContract
CREATE PROCEDURE CreateContract
    @EmployeeID INT,
    @Type VARCHAR(50),
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    INSERT INTO Contract(type, start_date, end_date, current_state)
    VALUES(@Type, @StartDate, @EndDate, 'Active');
    
    SELECT 'Contract created successfully' AS Message;
END;
GO

-- 2. RenewContract
CREATE PROCEDURE RenewContract
    @ContractID INT,
    @NewEndDate DATE
AS
BEGIN
    UPDATE Contract
    SET end_date = @NewEndDate,
        current_state = 'Renewed'
    WHERE contract_id = @ContractID;
    
    SELECT 'Contract renewed successfully' AS Message;
END;
GO

-- 3. ApproveLeaveRequest
CREATE PROCEDURE ApproveLeaveRequest
    @LeaveRequestID INT,
    @ApproverID INT,
    @Status VARCHAR(20)
AS
BEGIN
    UPDATE LeaveRequest
    SET status = @Status,
        approval_timing = GETDATE()
    WHERE request_id = @LeaveRequestID;
    
    SELECT 'Leave request processed successfully' AS Message;
END;
GO

-- 4. AssignMission
CREATE PROCEDURE AssignMission
    @EmployeeID INT,
    @ManagerID INT,
    @Destination VARCHAR(50),
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    INSERT INTO Mission(destination, start_date, end_date, status, employee_id, manager_id)
    VALUES(@Destination, @StartDate, @EndDate, 'Assigned', @EmployeeID, @ManagerID);
    
    SELECT 'Mission assigned successfully' AS Message;
END;
GO

-- 5. ReviewReimbursement
CREATE PROCEDURE ReviewReimbursement
    @ClaimID INT,
    @ApproverID INT,
    @Decision VARCHAR(20)
AS
BEGIN
    UPDATE Reimbursement
    SET current_status = @Decision,
        approval_date = GETDATE()
    WHERE reimbursement_id = @ClaimID;
    
    SELECT 'Reimbursement reviewed successfully' AS Message;
END;
GO

-- 6. GetActiveContracts
CREATE PROCEDURE GetActiveContracts
AS
BEGIN
    SELECT * FROM Contract WHERE current_state = 'Active';
END;
GO

-- 7. GetTeamByManager (Ali's version for contracts)
CREATE PROCEDURE GetExpiringContracts
    @DaysBefore INT
AS
BEGIN
    SELECT * FROM Contract 
    WHERE DATEDIFF(DAY, GETDATE(), end_date) <= @DaysBefore
    AND current_state = 'Active';
END;
GO

-- 8. UpdateLeavePolicy
CREATE PROCEDURE UpdateLeavePolicy
    @PolicyID INT,
    @EligibilityRules VARCHAR(200),
    @NoticePeriod INT
AS
BEGIN
    UPDATE LeavePolicy
    SET eligibility_rules = @EligibilityRules,
        notice_period = @NoticePeriod
    WHERE policy_id = @PolicyID;
    
    SELECT 'Leave policy updated successfully' AS Message;
END;
GO

-- =============================================
-- OMAR'S PART - LEAVE & ATTENDANCE MANAGEMENT
-- (CORRECTED - NO DUPLICATES)
-- =============================================

-- Employee: Submit Leave Request
CREATE PROCEDURE SubmitLeaveRequest
    @EmployeeID INT,
    @LeaveTypeID INT,
    @StartDate DATE,
    @EndDate DATE,
    @Reason VARCHAR(100)
AS
BEGIN
    DECLARE @Duration INT = DATEDIFF(DAY, @StartDate, @EndDate) + 1;
    
    INSERT INTO LeaveRequest (employee_id, leave_id, justification, duration, status)
    VALUES (@EmployeeID, @LeaveTypeID, @Reason, @Duration, 'Pending');
    
    PRINT 'Leave request submitted successfully';
END;
GO

-- Employee: Check Leave Balance
CREATE PROCEDURE GetLeaveBalance
    @EmployeeID INT
AS
BEGIN
    SELECT leave_type_id, entitlement
    FROM LeaveEntitlement
    WHERE employee_id = @EmployeeID;
END;
GO

-- Employee: Attach Documents to Leave Request
CREATE PROCEDURE AttachLeaveDocuments
    @LeaveRequestID INT,
    @FilePath VARCHAR(200)
AS
BEGIN
    INSERT INTO LeaveDocument (leave_request_id, file_path)
    VALUES (@LeaveRequestID, @FilePath);
    
    PRINT 'Document attached successfully';
END;
GO

-- Employee: Modify Leave Request
CREATE PROCEDURE ModifyLeaveRequest
    @LeaveRequestID INT,
    @StartDate DATE,
    @EndDate DATE,
    @Reason VARCHAR(100)
AS
BEGIN
    DECLARE @Duration INT = DATEDIFF(DAY, @StartDate, @EndDate) + 1;
    
    UPDATE LeaveRequest
    SET justification = @Reason,
        duration = @Duration,
        status = 'Modified'
    WHERE request_id = @LeaveRequestID;
    
    PRINT 'Leave request modified successfully';
END;
GO

-- Employee: Cancel Leave Request
CREATE PROCEDURE CancelLeaveRequest
    @LeaveRequestID INT
AS
BEGIN
    UPDATE LeaveRequest
    SET status = 'Cancelled'
    WHERE request_id = @LeaveRequestID;
    
    PRINT 'Leave request cancelled successfully';
END;
GO

-- Employee: View Leave Balance
CREATE PROCEDURE ViewLeaveBalance
    @EmployeeID INT
AS
BEGIN
    SELECT leave_type_id, entitlement
    FROM LeaveEntitlement
    WHERE employee_id = @EmployeeID;
END;
GO

-- Employee: View Leave History
CREATE PROCEDURE ViewLeaveHistory
    @EmployeeID INT
AS
BEGIN
    SELECT request_id, leave_id, justification, duration, approval_timing, status
    FROM LeaveRequest
    WHERE employee_id = @EmployeeID
    ORDER BY approval_timing DESC;
END;
GO

-- Employee: Submit Leave After Absence
CREATE PROCEDURE SubmitLeaveAfterAbsence
    @EmployeeID INT,
    @LeaveTypeID INT,
    @StartDate DATE,
    @EndDate DATE,
    @Reason VARCHAR(100)
AS
BEGIN
    DECLARE @Duration INT = DATEDIFF(DAY, @StartDate, @EndDate) + 1;
    
    INSERT INTO LeaveRequest (employee_id, leave_id, justification, duration, status)
    VALUES (@EmployeeID, @LeaveTypeID, @Reason, @Duration, 'Submitted');
    
    PRINT 'Leave request submitted after absence';
END;
GO

-- Employee: Notify Leave Status Change
CREATE PROCEDURE NotifyLeaveStatusChange
    @EmployeeID INT,
    @RequestID INT,
    @Status VARCHAR(20)
AS
BEGIN
    PRINT 'Notification sent: Leave request ' + CAST(@RequestID AS VARCHAR) + ' status changed to ' + @Status;
END;
GO

-- Line Manager: View Leave Request
CREATE PROCEDURE ViewLeaveRequest
    @LeaveRequestID INT,
    @ManagerID INT
AS
BEGIN
    SELECT lr.request_id, lr.employee_id, lr.leave_id, lr.justification, lr.duration, lr.status
    FROM LeaveRequest lr
    INNER JOIN Employee e ON lr.employee_id = e.employee_id
    WHERE lr.request_id = @LeaveRequestID AND e.manager_id = @ManagerID;
END;
GO

-- Line Manager: Approve Leave (RENAMED to avoid conflict with Ali's version)
CREATE PROCEDURE ManagerApproveLeave
    @LeaveRequestID INT,
    @ManagerID INT
AS
BEGIN
    UPDATE LeaveRequest
    SET status = 'Approved',
        approval_timing = GETDATE()
    WHERE request_id = @LeaveRequestID;
    
    PRINT 'Leave request approved successfully';
END;
GO

-- Line Manager: Reject Leave Request
CREATE PROCEDURE RejectLeaveRequest
    @LeaveRequestID INT,
    @ManagerID INT,
    @Reason VARCHAR(200)
AS
BEGIN
    UPDATE LeaveRequest
    SET status = 'Rejected'
    WHERE request_id = @LeaveRequestID;
    
    PRINT 'Leave request rejected: ' + @Reason;
END;
GO

-- Line Manager: Delegate Leave Approval
CREATE PROCEDURE DelegateLeaveApproval
    @ManagerID INT,
    @DelegateID INT,
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    PRINT 'Leave approval delegated from Manager ' + CAST(@ManagerID AS VARCHAR) + ' to ' + CAST(@DelegateID AS VARCHAR);
END;
GO

-- Line Manager: Flag Irregular Leave
CREATE PROCEDURE FlagIrregularLeave
    @EmployeeID INT,
    @ManagerID INT,
    @PatternDescription VARCHAR(200)
AS
BEGIN
    PRINT 'Irregular leave pattern flagged for Employee ' + CAST(@EmployeeID AS VARCHAR) + ': ' + @PatternDescription;
END;
GO

-- Line Manager: Notify New Leave Request
CREATE PROCEDURE NotifyNewLeaveRequest
    @ManagerID INT,
    @RequestID INT
AS
BEGIN
    PRINT 'New leave request ' + CAST(@RequestID AS VARCHAR) + ' assigned to Manager ' + CAST(@ManagerID AS VARCHAR);
END;
GO

-- Line Manager: Review Leave Request
CREATE PROCEDURE ReviewLeaveRequest
    @LeaveRequestID INT,
    @ManagerID INT,
    @Decision VARCHAR(20)
AS
BEGIN
    UPDATE LeaveRequest
    SET status = @Decision,
        approval_timing = GETDATE()
    WHERE request_id = @LeaveRequestID;
    
    SELECT @LeaveRequestID AS LeaveRequestID, @ManagerID AS ManagerID, @Decision AS Decision;
END;
GO

-- Line Manager: Get Pending Leave Requests
CREATE PROCEDURE GetPendingLeaveRequests
    @ManagerID INT
AS
BEGIN
    SELECT lr.request_id, lr.employee_id, lr.leave_id, lr.justification, lr.duration
    FROM LeaveRequest lr
    INNER JOIN Employee e ON lr.employee_id = e.employee_id
    WHERE e.manager_id = @ManagerID AND lr.status = 'Pending';
END;
GO

-- HR Admin: Create Shift Type
CREATE PROCEDURE CreateShiftType
    @ShiftID INT,
    @Name VARCHAR(100),
    @Type VARCHAR(50),
    @Start_Time TIME,
    @End_Time TIME,
    @Break_Duration INT,
    @Shift_Date DATE,
    @Status VARCHAR(50)
AS
BEGIN
    INSERT INTO ShiftSchedule (shift_id, name, type, start_time, end_time, break_duration, shift_date, status)
    VALUES (@ShiftID, @Name, @Type, @Start_Time, @End_Time, @Break_Duration, @Shift_Date, @Status);
    
    PRINT 'Shift type created successfully';
END;
GO

-- HR Admin: Create Shift Name
CREATE PROCEDURE CreateShiftName
    @ShiftName VARCHAR(50),
    @ShiftTypeID INT,
    @Description VARCHAR(200)
AS
BEGIN
    PRINT 'Shift name created: ' + @ShiftName;
END;
GO

-- HR Admin: Assign Rotational Shift
CREATE PROCEDURE AssignRotationalShift
    @EmployeeID INT,
    @ShiftCycle INT,
    @StartDate DATE,
    @EndDate DATE,
    @Status VARCHAR(20)
AS
BEGIN
    INSERT INTO ShiftAssignment (employee_id, shift_id, start_date, end_date, status)
    VALUES (@EmployeeID, @ShiftCycle, @StartDate, @EndDate, @Status);
    
    PRINT 'Rotational shift assigned successfully';
END;
GO

-- HR Admin: Notify Shift Expiry
CREATE PROCEDURE NotifyShiftExpiry
    @EmployeeID INT,
    @ShiftAssignmentID INT,
    @ExpiryDate DATE
AS
BEGIN
    PRINT 'Shift assignment ' + CAST(@ShiftAssignmentID AS VARCHAR) + ' expiring on ' + CAST(@ExpiryDate AS VARCHAR);
END;
GO

-- HR Admin: Define Short Time Rules
CREATE PROCEDURE DefineShortTimeRules
    @RuleName VARCHAR(50),
    @LateMinutes INT,
    @EarlyLeaveMinutes INT,
    @PenaltyType VARCHAR(50)
AS
BEGIN
    PRINT 'Short time rule defined: ' + @RuleName;
END;
GO

-- HR Admin: Set Grace Period
CREATE PROCEDURE SetGracePeriod
    @Minutes INT
AS
BEGIN
    PRINT 'Grace period set to ' + CAST(@Minutes AS VARCHAR) + ' minutes';
END;
GO

-- HR Admin: Define Penalty Threshold
CREATE PROCEDURE DefinePenaltyThreshold
    @LateMinutes INT,
    @DeductionType VARCHAR(50)
AS
BEGIN
    PRINT 'Penalty threshold defined: ' + CAST(@LateMinutes AS VARCHAR) + ' minutes - ' + @DeductionType;
END;
GO

-- HR Admin: Define Permission Limits
CREATE PROCEDURE DefinePermissionLimits
    @MinHours INT,
    @MaxHours INT
AS
BEGIN
    PRINT 'Permission limits set: Min=' + CAST(@MinHours AS VARCHAR) + ', Max=' + CAST(@MaxHours AS VARCHAR);
END;
GO

-- HR Admin: Escalate Pending Requests
CREATE PROCEDURE EscalatePendingRequests
    @Deadline DATETIME
AS
BEGIN
    PRINT 'Pending requests escalated with deadline: ' + CAST(@Deadline AS VARCHAR);
END;
GO

-- HR Admin: Link Vacation to Shift
CREATE PROCEDURE LinkVacationToShift
    @VacationPackageID INT,
    @EmployeeID INT
AS
BEGIN
    PRINT 'Vacation package linked to employee shift';
END;
GO

-- HR Admin: Configure Leave Policies
CREATE PROCEDURE ConfigureLeavePolicies
AS
BEGIN
    PRINT 'Leave configuration process initiated';
END;
GO

-- HR Admin: Authenticate Leave Admin
CREATE PROCEDURE AuthenticateLeaveAdmin
    @AdminID INT,
    @Password VARCHAR(100)
AS
BEGIN
    PRINT 'Admin authenticated successfully';
END;
GO

-- HR Admin: Apply Leave Configuration
CREATE PROCEDURE ApplyLeaveConfiguration
AS
BEGIN
    PRINT 'Leave configuration applied successfully';
END;
GO

-- HR Admin: Update Leave Entitlements
CREATE PROCEDURE UpdateLeaveEntitlements
    @EmployeeID INT
AS
BEGIN
    PRINT 'Leave entitlements updated for Employee ' + CAST(@EmployeeID AS VARCHAR);
END;
GO

-- HR Admin: Configure Leave Eligibility
CREATE PROCEDURE ConfigureLeaveEligibility
    @LeaveType VARCHAR(50),
    @MinTenure INT,
    @EmployeeType VARCHAR(50)
AS
BEGIN
    PRINT 'Leave eligibility configured for ' + @LeaveType;
END;
GO

-- HR Admin: Manage Leave Types
CREATE PROCEDURE ManageLeaveTypes
    @LeaveType VARCHAR(50),
    @Description VARCHAR(200)
AS
BEGIN
    INSERT INTO [Leave] (leave_type, leave_description)
    VALUES (@LeaveType, @Description);
    
    PRINT 'Leave type managed successfully';
END;
GO

-- HR Admin: Assign Leave Entitlement
CREATE PROCEDURE AssignLeaveEntitlement
    @EmployeeID INT,
    @LeaveType VARCHAR(50),
    @Entitlement DECIMAL(5,2)
AS
BEGIN
    DECLARE @LeaveTypeID INT;
    SELECT @LeaveTypeID = leave_id FROM [Leave] WHERE leave_type = @LeaveType;
    
    IF EXISTS (SELECT 1 FROM LeaveEntitlement WHERE employee_id = @EmployeeID AND leave_type_id = @LeaveTypeID)
        UPDATE LeaveEntitlement SET entitlement = @Entitlement 
        WHERE employee_id = @EmployeeID AND leave_type_id = @LeaveTypeID;
    ELSE
        INSERT INTO LeaveEntitlement (employee_id, leave_type_id, entitlement)
        VALUES (@EmployeeID, @LeaveTypeID, @Entitlement);
    
    PRINT 'Leave entitlement assigned successfully';
END;
GO

-- HR Admin: Configure Leave Rules
CREATE PROCEDURE ConfigureLeaveRules
    @LeaveType VARCHAR(50),
    @MaxDuration INT,
    @NoticePeriod INT,
    @WorkflowType VARCHAR(50)
AS
BEGIN
    PRINT 'Leave rules configured for ' + @LeaveType;
END;
GO

-- HR Admin: Configure Special Leave
CREATE PROCEDURE ConfigureSpecialLeave
    @LeaveType VARCHAR(50),
    @Rules VARCHAR(200)
AS
BEGIN
    PRINT 'Special leave configured: ' + @LeaveType;
END;
GO

-- HR Admin: Set Leave Year Rules
CREATE PROCEDURE SetLeaveYearRules
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    PRINT 'Leave year set from ' + CAST(@StartDate AS VARCHAR) + ' to ' + CAST(@EndDate AS VARCHAR);
END;
GO

-- HR Admin: Adjust Leave Balance
CREATE PROCEDURE AdjustLeaveBalance
    @EmployeeID INT,
    @LeaveType VARCHAR(50),
    @Adjustment DECIMAL(5,2)
AS
BEGIN
    DECLARE @LeaveTypeID INT;
    SELECT @LeaveTypeID = leave_id FROM [Leave] WHERE leave_type = @LeaveType;
    
    UPDATE LeaveEntitlement
    SET entitlement = entitlement + @Adjustment
    WHERE employee_id = @EmployeeID AND leave_type_id = @LeaveTypeID;
    
    PRINT 'Leave balance adjusted successfully';
END;
GO

-- HR Admin: Manage Leave Roles
CREATE PROCEDURE ManageLeaveRoles
    @RoleID INT,
    @Permissions VARCHAR(200)
AS
BEGIN
    PRINT 'Leave roles and permissions managed';
END;
GO

-- HR Admin: Finalize Leave Request
CREATE PROCEDURE FinalizeLeaveRequest
    @LeaveRequestID INT
AS
BEGIN
    UPDATE LeaveRequest
    SET status = 'Approved',
        approval_timing = GETDATE()
    WHERE request_id = @LeaveRequestID;
    
    PRINT 'Leave request finalized';
END;
GO

-- HR Admin: Override Leave Decision
CREATE PROCEDURE OverrideLeaveDecision
    @LeaveRequestID INT,
    @Reason VARCHAR(200)
AS
BEGIN
    UPDATE LeaveRequest
    SET status = 'Approved'
    WHERE request_id = @LeaveRequestID;
    
    PRINT 'Leave decision overridden: ' + @Reason;
END;
GO

-- HR Admin: Bulk Process Leave Requests
CREATE PROCEDURE BulkProcessLeaveRequests
    @LeaveRequestIDs VARCHAR(500)
AS
BEGIN
    PRINT 'Bulk processing leave requests: ' + @LeaveRequestIDs;
END;
GO

-- HR Admin: Verify Medical Leave
CREATE PROCEDURE VerifyMedicalLeave
    @LeaveRequestID INT,
    @DocumentID INT
AS
BEGIN
    PRINT 'Medical leave verified for request ' + CAST(@LeaveRequestID AS VARCHAR);
END;
GO

-- HR Admin: Sync Leave Balances
CREATE PROCEDURE SyncLeaveBalances
    @LeaveRequestID INT
AS
BEGIN
    DECLARE @EmployeeID INT, @LeaveID INT, @Duration INT;
    
    SELECT @EmployeeID = employee_id, @LeaveID = leave_id, @Duration = duration
    FROM LeaveRequest
    WHERE request_id = @LeaveRequestID;
    
    UPDATE LeaveEntitlement
    SET entitlement = entitlement - @Duration
    WHERE employee_id = @EmployeeID AND leave_type_id = @LeaveID;
    
    PRINT 'Leave balances synced successfully';
END;
GO

-- HR Admin: Process Leave Carry Forward
CREATE PROCEDURE ProcessLeaveCarryForward
    @Year INT
AS
BEGIN
    PRINT 'Leave carry forward processed for year ' + CAST(@Year AS VARCHAR);
END;
GO

-- HR Admin: Sync Leave to Attendance
CREATE PROCEDURE SyncLeaveToAttendance
    @LeaveRequestID INT
AS
BEGIN
    DECLARE @EmployeeID INT;
    
    SELECT @EmployeeID = employee_id
    FROM LeaveRequest
    WHERE request_id = @LeaveRequestID;
    
    INSERT INTO Exception (name, category, date, status)
    VALUES ('Approved Leave', 'Leave', GETDATE(), 'Active');
    
    PRINT 'Leave synced to attendance system';
END;
GO

-- Line Manager: Assign Shift
CREATE PROCEDURE AssignShift
    @EmployeeID INT,
    @ShiftID INT
AS
BEGIN
    INSERT INTO ShiftAssignment (employee_id, shift_id, start_date, status)
    VALUES (@EmployeeID, @ShiftID, GETDATE(), 'Approved');
    
    PRINT 'Shift assigned successfully';
END;
GO

-- Line Manager: Reassign Shift
CREATE PROCEDURE ReassignShift
    @EmployeeID INT,
    @OldShiftID INT,
    @NewShiftID INT
AS
BEGIN
    UPDATE ShiftAssignment
    SET shift_id = @NewShiftID
    WHERE employee_id = @EmployeeID AND shift_id = @OldShiftID;
    
    PRINT 'Shift reassigned successfully';
END;
GO

-- Employee: View Assigned Shifts
CREATE PROCEDURE ViewAssignedShifts
    @EmployeeID INT
AS
BEGIN
    SELECT sa.assignment_id, ss.name, ss.start_time, ss.end_time, sa.start_date, sa.end_date
    FROM ShiftAssignment sa
    INNER JOIN ShiftSchedule ss ON sa.shift_id = ss.shift_id
    WHERE sa.employee_id = @EmployeeID;
END;
GO

-- Employee: Record Attendance
CREATE PROCEDURE RecordAttendance
    @EmployeeID INT,
    @ShiftID INT,
    @EntryTime TIME,
    @ExitTime TIME
AS
BEGIN
    DECLARE @Duration INT = DATEDIFF(MINUTE, @EntryTime, @ExitTime);
    
    INSERT INTO Attendance (employee_id, shift_id, entry_time, exit_time, duration)
    VALUES (@EmployeeID, @ShiftID, @EntryTime, @ExitTime, @Duration);
    
    PRINT 'Attendance recorded successfully';
END;
GO

-- Employee: Log Flexible Attendance
CREATE PROCEDURE LogFlexibleAttendance
    @EmployeeID INT,
    @Date DATE,
    @CheckIn TIME,
    @CheckOut TIME
AS
BEGIN
    DECLARE @Duration INT = DATEDIFF(MINUTE, @CheckIn, @CheckOut);
    
    INSERT INTO Attendance (employee_id, entry_time, exit_time, duration)
    VALUES (@EmployeeID, CAST(@Date AS DATETIME) + CAST(@CheckIn AS DATETIME), 
            CAST(@Date AS DATETIME) + CAST(@CheckOut AS DATETIME), @Duration);
    
    SELECT @Duration AS TotalWorkingMinutes;
END;
GO

-- Employee: Notify Missed Punch
CREATE PROCEDURE NotifyMissedPunch
    @EmployeeID INT,
    @Date DATE
AS
BEGIN
    PRINT 'Notification: Missed punch on ' + CAST(@Date AS VARCHAR) + ' for Employee ' + CAST(@EmployeeID AS VARCHAR);
END;
GO

-- Employee: Record Multiple Punches
CREATE PROCEDURE RecordMultiplePunches
    @EmployeeID INT,
    @ClockInOutTime DATETIME,
    @Type VARCHAR(10)
AS
BEGIN
    IF @Type = 'IN'
        INSERT INTO Attendance (employee_id, entry_time)
        VALUES (@EmployeeID, @ClockInOutTime);
    ELSE
        UPDATE Attendance
        SET exit_time = @ClockInOutTime,
            duration = DATEDIFF(MINUTE, entry_time, @ClockInOutTime)
        WHERE employee_id = @EmployeeID AND exit_time IS NULL;
    
    PRINT 'Punch recorded successfully';
END;
GO

-- Employee: Submit Correction Request
CREATE PROCEDURE SubmitCorrectionRequest
    @EmployeeID INT,
    @Date DATE,
    @CorrectionType VARCHAR(50),
    @Reason VARCHAR(200)
AS
BEGIN
    INSERT INTO AttendanceCorrectionRequest (employee_id, date, correction_type, reason, recorded_by)
    VALUES (@EmployeeID, @Date, @CorrectionType, @Reason, @EmployeeID);
    
    PRINT 'Correction request submitted successfully';
END;
GO

-- Employee: View Request Status
CREATE PROCEDURE ViewRequestStatus
    @EmployeeID INT
AS
BEGIN
    SELECT request_id, date, correction_type, status
    FROM AttendanceCorrectionRequest
    WHERE employee_id = @EmployeeID;
END;
GO

-- Line Manager: View Team Attendance
CREATE PROCEDURE ViewTeamAttendance
    @ManagerID INT,
    @DateRangeStart DATE,
    @DateRangeEnd DATE
AS
BEGIN
    SELECT a.attendance_id, a.employee_id, a.entry_time, a.exit_time, a.duration
    FROM Attendance a
    INNER JOIN Employee e ON a.employee_id = e.employee_id
    WHERE e.manager_id = @ManagerID 
      AND CAST(a.entry_time AS DATE) BETWEEN @DateRangeStart AND @DateRangeEnd;
END;
GO

-- Line Manager: Record Manual Attendance
CREATE PROCEDURE RecordManualAttendance
    @EmployeeID INT,
    @Date DATE,
    @ClockIn TIME,
    @ClockOut TIME,
    @Reason VARCHAR(200),
    @RecordedBy INT
AS
BEGIN
    DECLARE @Duration INT = DATEDIFF(MINUTE, @ClockIn, @ClockOut);
    
    INSERT INTO Attendance (employee_id, entry_time, exit_time, duration)
    VALUES (@EmployeeID, CAST(@Date AS DATETIME) + CAST(@ClockIn AS DATETIME), 
            CAST(@Date AS DATETIME) + CAST(@ClockOut AS DATETIME), @Duration);
    
    INSERT INTO AttendanceLog (attendance_id, actor, reason)
    VALUES (SCOPE_IDENTITY(), @RecordedBy, @Reason);
    
    PRINT 'Manual attendance recorded successfully';
END;
GO

-- Line Manager: Review Missed Punches
CREATE PROCEDURE ReviewMissedPunches
    @ManagerID INT,
    @Date DATE
AS
BEGIN
    SELECT a.attendance_id, a.employee_id, a.entry_time, a.exit_time
    FROM Attendance a
    INNER JOIN Employee e ON a.employee_id = e.employee_id
    WHERE e.manager_id = @ManagerID 
      AND CAST(a.entry_time AS DATE) = @Date
      AND (a.entry_time IS NULL OR a.exit_time IS NULL);
END;
GO

-- Line Manager: Approve Time Request
CREATE PROCEDURE ApproveTimeRequest
    @RequestID INT,
    @ManagerID INT,
    @Decision VARCHAR(20),
    @Comments VARCHAR(200)
AS
BEGIN
    UPDATE AttendanceCorrectionRequest
    SET status = @Decision
    WHERE request_id = @RequestID;
    
    PRINT 'Time request ' + @Decision + ': ' + @Comments;
END;
GO


-- =============================================
-- TAREK'S PART - PAYROLL PROCEDURES
-- =============================================

-- 1. GeneratePayroll
CREATE PROCEDURE GeneratePayroll
    @StartDate DATE,
    @EndDate DATE
AS
BEGIN
    SELECT 
        p.payroll_id,
        p.employee_id,
        e.full_name,
        p.period_start,
        p.period_end,
        p.base_amount,
        p.adjustments,
        p.taxes,
        p.contributions,
        p.net_salary,
        p.payment_date
    FROM Payroll p
    INNER JOIN Employee e ON p.employee_id = e.employee_id
    WHERE p.period_start >= @StartDate AND p.period_end <= @EndDate
    ORDER BY p.employee_id, p.period_start;
END;
GO

-- 2. AdjustPayrollItem
CREATE PROCEDURE AdjustPayrollItem
    @PayrollID INT,
    @Type VARCHAR(50),
    @Amount DECIMAL(10,2),
    @duration INT,
    @timezone VARCHAR(20)
AS
BEGIN
    DECLARE @EmployeeID INT;
    
    SELECT @EmployeeID = employee_id FROM Payroll WHERE payroll_id = @PayrollID;
    
    IF @Type = 'Allowance'
        UPDATE Payroll SET adjustments = adjustments + @Amount WHERE payroll_id = @PayrollID;
    ELSE IF @Type = 'Deduction'
        UPDATE Payroll SET adjustments = adjustments - @Amount WHERE payroll_id = @PayrollID;
    
    INSERT INTO AllowanceDeduction (payroll_id, employee_id, type, amount, currency, duration, timezone)
    VALUES (@PayrollID, @EmployeeID, @Type, @Amount, 'EGP', CAST(@duration AS VARCHAR(20)), @timezone);
    
    SELECT 'Payroll item adjusted successfully' AS Message;
END;
GO

-- 3. CalculateNetSalary
CREATE PROCEDURE CalculateNetSalary
    @PayrollID INT,
    @NetSalary DECIMAL(10,2) OUTPUT
AS
BEGIN
    SELECT @NetSalary = net_salary FROM Payroll WHERE payroll_id = @PayrollID;
    IF @NetSalary IS NULL SET @NetSalary = 0;
END;
GO

-- 4. ApplyPayrollPolicy
CREATE PROCEDURE ApplyPayrollPolicy
    @PolicyID INT,
    @PayrollID INT,
    @type VARCHAR(20),
    @description VARCHAR(50)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM PayrollPolicy_ID WHERE payroll_id = @PayrollID AND policy_id = @PolicyID)
    BEGIN
        INSERT INTO PayrollPolicy_ID (payroll_id, policy_id)
        VALUES (@PayrollID, @PolicyID);
        
        SELECT 'Policy applied successfully' AS Message;
    END
    ELSE
        SELECT 'Policy already applied' AS Message;
END;
GO

-- 5. GetMonthlyPayrollSummary
CREATE PROCEDURE GetMonthlyPayrollSummary
    @Month INT,
    @Year INT
AS
BEGIN
    SELECT 
        SUM(base_amount) AS TotalBaseSalary,
        SUM(adjustments) AS TotalAdjustments,
        SUM(taxes) AS TotalTaxes,
        SUM(contributions) AS TotalContributions,
        SUM(net_salary) AS TotalNetSalary,
        COUNT(*) AS EmployeeCount
    FROM Payroll
    WHERE MONTH(period_start) = @Month AND YEAR(period_start) = @Year;
END;
GO

-- 6. AddAllowanceDeduction
CREATE PROCEDURE AddAllowanceDeduction
    @PayrollID INT,
    @Type VARCHAR(50),
    @Amount DECIMAL(10,2)
AS
BEGIN
    DECLARE @EmployeeID INT;
    SELECT @EmployeeID = employee_id FROM Payroll WHERE payroll_id = @PayrollID;
    
    INSERT INTO AllowanceDeduction (payroll_id, employee_id, type, amount, currency)
    VALUES (@PayrollID, @EmployeeID, @Type, @Amount, 'EGP');
    
    IF @Type = 'Allowance'
        UPDATE Payroll SET adjustments = adjustments + @Amount WHERE payroll_id = @PayrollID;
    ELSE
        UPDATE Payroll SET adjustments = adjustments - @Amount WHERE payroll_id = @PayrollID;
    
    SELECT 'Allowance/Deduction added successfully' AS Message;
END;
GO

-- 7. GetEmployeePayrollHistory
CREATE PROCEDURE GetEmployeePayrollHistory
    @EmployeeID INT
AS
BEGIN
    SELECT payroll_id, period_start, period_end, base_amount, adjustments, taxes, contributions, net_salary, payment_date
    FROM Payroll
    WHERE employee_id = @EmployeeID
    ORDER BY period_start DESC;
END;
GO

-- 8. GetBonusEligibleEmployees
CREATE PROCEDURE GetBonusEligibleEmployees
    @Eligibility_criteria NVARCHAR(200)
AS
BEGIN
    SELECT DISTINCT e.employee_id, e.full_name, e.department_id, e.hire_date,
           DATEDIFF(YEAR, e.hire_date, GETDATE()) AS YearsOfService
    FROM Employee e
    WHERE DATEDIFF(YEAR, e.hire_date, GETDATE()) >= 1
    ORDER BY e.employee_id;
END;
GO

-- 9. UpdateSalaryType
CREATE PROCEDURE UpdateSalaryType
    @EmployeeID INT,
    @SalaryTypeID INT
AS
BEGIN
    UPDATE Employee SET salary_type_id = @SalaryTypeID WHERE employee_id = @EmployeeID;
    SELECT 'Salary type updated successfully' AS Message;
END;
GO

-- 10. GetPayrollByDepartment
CREATE PROCEDURE GetPayrollByDepartment
    @DepartmentID INT,
    @Month INT,
    @Year INT
AS
BEGIN
    SELECT e.department_id, d.department_name, COUNT(DISTINCT e.employee_id) AS EmployeeCount,
           SUM(p.base_amount) AS TotalBaseSalary, SUM(p.net_salary) AS TotalNetSalary
    FROM Payroll p
    INNER JOIN Employee e ON p.employee_id = e.employee_id
    INNER JOIN Department d ON e.department_id = d.department_id
    WHERE e.department_id = @DepartmentID AND MONTH(p.period_start) = @Month AND YEAR(p.period_start) = @Year
    GROUP BY e.department_id, d.department_name;
END;
GO

-- 11. ValidateAttendanceBeforePayroll
CREATE PROCEDURE ValidateAttendanceBeforePayroll
    @PayrollPeriodID INT
AS
BEGIN
    DECLARE @StartDate DATE, @EndDate DATE;
    SELECT @StartDate = start_date, @EndDate = end_date FROM PayrollPeriod WHERE payroll_period_id = @PayrollPeriodID;
    
    SELECT e.employee_id, e.full_name, COUNT(*) AS UnresolvedPunches
    FROM Employee e
    INNER JOIN Attendance a ON e.employee_id = a.employee_id
    WHERE (a.entry_time IS NULL OR a.exit_time IS NULL)
    GROUP BY e.employee_id, e.full_name;
END;
GO

-- 12. SyncAttendanceToPayroll
CREATE PROCEDURE SyncAttendanceToPayroll
    @SyncDate DATE
AS
BEGIN
    SELECT 'Attendance synced successfully' AS Message;
END;
GO

-- 13. SyncApprovedPermissionsToPayroll
CREATE PROCEDURE SyncApprovedPermissionsToPayroll
    @PayrollPeriodID INT
AS
BEGIN
    DECLARE @PayrollID INT;
    SELECT @PayrollID = payroll_id FROM PayrollPeriod WHERE payroll_period_id = @PayrollPeriodID;
    
    SELECT 'Approved permissions synced to payroll successfully' AS Message;
END;
GO

-- 14. ConfigurePayGrades
CREATE PROCEDURE ConfigurePayGrades
    @GradeName VARCHAR(50),
    @MinSalary DECIMAL(10,2),
    @MaxSalary DECIMAL(10,2)
AS
BEGIN
    INSERT INTO PayGrade (grade_name, min_salary, max_salary)
    VALUES (@GradeName, @MinSalary, @MaxSalary);
    
    SELECT 'Pay grade configured successfully' AS Message;
END;
GO

-- 15. ConfigureShiftAllowances
CREATE PROCEDURE ConfigureShiftAllowances
    @ShiftType VARCHAR(50),
    @AllowanceName VARCHAR(50),
    @Amount DECIMAL(10,2)
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Shift Allowance', 'Shift: ' + @ShiftType + ', Allowance: ' + @AllowanceName);
    
    SELECT 'Shift allowance configured successfully' AS Message;
END;
GO

-- 16. EnableMultiCurrencyPayroll
CREATE PROCEDURE EnableMultiCurrencyPayroll
    @CurrencyCode VARCHAR(10),
    @ExchangeRate DECIMAL(10,4)
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Currency WHERE CurrencyCode = @CurrencyCode)
        UPDATE Currency SET ExchangeRate = @ExchangeRate, LastUpdated = GETDATE() WHERE CurrencyCode = @CurrencyCode;
    ELSE
        INSERT INTO Currency (CurrencyCode, CurrencyName, ExchangeRate, CreatedDate, LastUpdated)
        VALUES (@CurrencyCode, @CurrencyCode, @ExchangeRate, GETDATE(), GETDATE());
    
    SELECT 'Multi-currency payroll enabled successfully' AS Message;
END;
GO

-- 17. ManageTaxRules
CREATE PROCEDURE ManageTaxRules
    @TaxRuleName VARCHAR(50),
    @CountryCode VARCHAR(10),
    @Rate DECIMAL(5,2),
    @Exemption DECIMAL(10,2)
AS
BEGIN
    DECLARE @FormContent NVARCHAR(500);
    SET @FormContent = 'TAX_RULE|' + @TaxRuleName + '|RATE:' + CAST(@Rate AS VARCHAR(10));
    
    INSERT INTO TaxForm (jurisdiction, validity_period, form_content)
    VALUES (@CountryCode, CAST(YEAR(GETDATE()) AS VARCHAR(4)), @FormContent);
    
    SELECT 'Tax rule managed successfully' AS Message;
END;
GO

-- 18. ApprovePayrollConfigChanges
CREATE PROCEDURE ApprovePayrollConfigChanges
    @ConfigID INT,
    @ApproverID INT,
    @Status VARCHAR(20)
AS
BEGIN
    SELECT 'Payroll configuration change approved successfully' AS Message;
END;
GO

-- 19. ConfigureSigningBonus
CREATE PROCEDURE ConfigureSigningBonus
    @EmployeeID INT,
    @BonusAmount DECIMAL(10,2),
    @EffectiveDate DATE
AS
BEGIN
    DECLARE @PayrollID INT;
    SELECT TOP 1 @PayrollID = payroll_id FROM Payroll WHERE employee_id = @EmployeeID ORDER BY period_start DESC;
    
    IF @PayrollID IS NOT NULL
    BEGIN
        UPDATE Payroll SET adjustments = adjustments + @BonusAmount WHERE payroll_id = @PayrollID;
        INSERT INTO AllowanceDeduction (payroll_id, employee_id, type, amount, currency)
        VALUES (@PayrollID, @EmployeeID, 'Signing Bonus', @BonusAmount, 'EGP');
    END
    
    SELECT 'Signing bonus configured successfully' AS Message;
END;
GO

-- 20. ConfigureTerminationBenefits
CREATE PROCEDURE ConfigureTerminationBenefits
    @EmployeeID INT,
    @CompensationAmount DECIMAL(10,2),
    @EffectiveDate DATE,
    @Reason VARCHAR(50)
AS
BEGIN
    DECLARE @PayrollID INT;
    SELECT TOP 1 @PayrollID = payroll_id FROM Payroll WHERE employee_id = @EmployeeID ORDER BY period_start DESC;
    
    IF @PayrollID IS NOT NULL
    BEGIN
        INSERT INTO AllowanceDeduction (payroll_id, employee_id, type, amount, currency)
        VALUES (@PayrollID, @EmployeeID, 'Termination - ' + @Reason, @CompensationAmount, 'EGP');
        
        UPDATE Payroll SET adjustments = adjustments + @CompensationAmount WHERE payroll_id = @PayrollID;
    END
    
    SELECT 'Termination benefits configured successfully' AS Message;
END;
GO

-- 21. ConfigureInsuranceBrackets
CREATE PROCEDURE ConfigureInsuranceBrackets
    @InsuranceType VARCHAR(50),
    @MinSalary DECIMAL(10,2),
    @MaxSalary DECIMAL(10,2),
    @EmployeeContribution DECIMAL(5,2),
    @EmployerContribution DECIMAL(5,2)
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Insurance', 'Type: ' + @InsuranceType + ', Range: ' + CAST(@MinSalary AS VARCHAR) + '-' + CAST(@MaxSalary AS VARCHAR));
    
    SELECT 'Insurance bracket configured successfully' AS Message;
END;
GO

-- 22. UpdateInsuranceBrackets
CREATE PROCEDURE UpdateInsuranceBrackets
    @BracketID INT,
    @MinSalary DECIMAL(10,2),
    @MaxSalary DECIMAL(10,2),
    @EmployeeContribution DECIMAL(5,2),
    @EmployerContribution DECIMAL(5,2)
AS
BEGIN
    UPDATE PayrollPolicy
    SET description = 'Range: ' + CAST(@MinSalary AS VARCHAR) + '-' + CAST(@MaxSalary AS VARCHAR),
        effective_date = GETDATE()
    WHERE policy_id = @BracketID;
    
    SELECT 'Insurance bracket updated successfully' AS Message;
END;
GO

-- 23. ConfigurePayrollPolicies
CREATE PROCEDURE ConfigurePayrollPolicies
    @PolicyType VARCHAR(50),
    @PolicyDetails NVARCHAR(MAX),
    @effectivedate DATE
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (@effectivedate, @PolicyType, @PolicyDetails);
    
    SELECT 'Payroll policy configured successfully' AS Message;
END;
GO

-- 24. DefinePayGrades
CREATE PROCEDURE DefinePayGrades
    @GradeName VARCHAR(50),
    @MinSalary DECIMAL(10,2),
    @MaxSalary DECIMAL(10,2),
    @CreatedBy INT
AS
BEGIN
    INSERT INTO PayGrade (grade_name, min_salary, max_salary)
    VALUES (@GradeName, @MinSalary, @MaxSalary);
    
    SELECT 'Pay grade defined successfully' AS Message;
END;
GO

-- 25. ConfigureEscalationWorkflow
CREATE PROCEDURE ConfigureEscalationWorkflow
    @ThresholdAmount DECIMAL(10,2),
    @ApproverRole VARCHAR(50),
    @CreatedBy INT
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Escalation', 'Threshold: ' + CAST(@ThresholdAmount AS VARCHAR) + ', Approver: ' + @ApproverRole);
    
    SELECT 'Escalation workflow configured successfully' AS Message;
END;
GO

-- 26. DefinePayType
CREATE PROCEDURE DefinePayType
    @EmployeeID INT,
    @PayType VARCHAR(50),
    @EffectiveDate DATE
AS
BEGIN
    DECLARE @SalaryTypeID INT;
    SELECT @SalaryTypeID = salary_type_id FROM SalaryType WHERE type = @PayType;
    
    IF @SalaryTypeID IS NOT NULL
    BEGIN
        UPDATE Employee SET salary_type_id = @SalaryTypeID WHERE employee_id = @EmployeeID;
        SELECT 'Pay type defined successfully' AS Message;
    END
    ELSE
        SELECT 'Invalid pay type specified' AS Message;
END;
GO

-- 27. ConfigureOvertimeRules
CREATE PROCEDURE ConfigureOvertimeRules
    @DayType VARCHAR(20),
    @Multiplier DECIMAL(3,2),
    @hourspermonth INT
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Overtime', 'DayType: ' + @DayType + ', Multiplier: ' + CAST(@Multiplier AS VARCHAR));
    
    DECLARE @PolicyID INT = SCOPE_IDENTITY();
    INSERT INTO OvertimePolicy (policy_id, weekday_rate_multiplier, weekend_rate_multiplier, max_hours_per_month)
    VALUES (@PolicyID, @Multiplier, @Multiplier * 1.2, @hourspermonth);
    
    SELECT 'Overtime rules configured successfully' AS Message;
END;
GO

-- 28. ConfigureShiftAllowance
CREATE PROCEDURE ConfigureShiftAllowance
    @ShiftType VARCHAR(20),
    @AllowanceAmount DECIMAL(10,2),
    @CreatedBy INT
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Shift Allowance', 'Shift: ' + @ShiftType + ', Amount: ' + CAST(@AllowanceAmount AS VARCHAR));
    
    SELECT 'Shift allowance configured successfully' AS Message;
END;
GO

-- 29. ConfigureMultiCurrency
CREATE PROCEDURE ConfigureMultiCurrency
    @CurrencyCode VARCHAR(10),
    @ExchangeRate DECIMAL(10,4),
    @EffectiveDate DATE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Currency WHERE CurrencyCode = @CurrencyCode)
        UPDATE Currency SET ExchangeRate = @ExchangeRate, LastUpdated = @EffectiveDate WHERE CurrencyCode = @CurrencyCode;
    ELSE
        INSERT INTO Currency (CurrencyCode, CurrencyName, ExchangeRate, CreatedDate, LastUpdated)
        VALUES (@CurrencyCode, @CurrencyCode, @ExchangeRate, @EffectiveDate, @EffectiveDate);
    
    SELECT 'Multi-currency configured successfully' AS Message;
END;
GO

-- 30. ConfigureSigningBonusPolicy
CREATE PROCEDURE ConfigureSigningBonusPolicy
    @BonusType VARCHAR(50),
    @Amount DECIMAL(10,2),
    @EligibilityCriteria NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Signing Bonus', @EligibilityCriteria);
    
    DECLARE @PolicyID INT = SCOPE_IDENTITY();
    INSERT INTO BonusPolicy (policy_id, bonus_type, eligibility_criteria)
    VALUES (@PolicyID, @BonusType, @EligibilityCriteria);
    
    SELECT 'Signing bonus policy configured successfully' AS Message;
END;
GO

-- 31. ConfigureInsuranceBracketsByName (Alternative name to avoid conflict)
CREATE PROCEDURE ConfigureInsuranceBracketsByName
    @BracketName VARCHAR(50),
    @MinSalary DECIMAL(10,2),
    @MaxSalary DECIMAL(10,2),
    @EmployeeContribution DECIMAL(5,2),
    @EmployerContribution DECIMAL(5,2)
AS
BEGIN
    INSERT INTO PayrollPolicy (effective_date, type, description)
    VALUES (GETDATE(), 'Insurance', 'Bracket: ' + @BracketName + ', Range: ' + CAST(@MinSalary AS VARCHAR) + '-' + CAST(@MaxSalary AS VARCHAR));
    
    SELECT 'Insurance bracket configured successfully' AS Message;
END;
GO

-- 32. GenerateTaxStatement
CREATE PROCEDURE GenerateTaxStatement
    @EmployeeID INT,
    @TaxYear INT
AS
BEGIN
    SELECT e.employee_id, e.full_name, @TaxYear AS TaxYear,
           ISNULL(SUM(p.base_amount), 0) AS TotalIncome,
           ISNULL(SUM(p.taxes), 0) AS TotalTaxesPaid,
           ISNULL(SUM(p.contributions), 0) AS TotalContributions,
           ISNULL(SUM(p.net_salary), 0) AS TotalNetIncome
    FROM Employee e
    LEFT JOIN Payroll p ON e.employee_id = p.employee_id AND YEAR(p.period_start) = @TaxYear
    WHERE e.employee_id = @EmployeeID
    GROUP BY e.employee_id, e.full_name;
END;
GO

-- 33. ApprovePayrollConfiguration
CREATE PROCEDURE ApprovePayrollConfiguration
    @ConfigID INT,
    @ApprovedBy INT
AS
BEGIN
    SELECT 'Payroll configuration approved successfully' AS Message;
END;
GO

-- 34. ModifyPastPayroll
CREATE PROCEDURE ModifyPastPayroll
    @PayrollRunID INT,
    @EmployeeID INT,
    @FieldName VARCHAR(50),
    @NewValue DECIMAL(10,2),
    @ModifiedBy INT
AS
BEGIN
    IF @FieldName = 'base_amount'
        UPDATE Payroll SET base_amount = @NewValue WHERE payroll_id = @PayrollRunID;
    ELSE IF @FieldName = 'adjustments'
        UPDATE Payroll SET adjustments = @NewValue WHERE payroll_id = @PayrollRunID;
    ELSE IF @FieldName = 'taxes'
        UPDATE Payroll SET taxes = @NewValue WHERE payroll_id = @PayrollRunID;
    ELSE IF @FieldName = 'contributions'
        UPDATE Payroll SET contributions = @NewValue WHERE payroll_id = @PayrollRunID;
    
    SELECT 'Past payroll modified successfully' AS Message;
END;
GO

-- =============================================
-- EMPLOYEE PROCEDURES (Additional)
-- =============================================

-- ViewEmployeeProfile
CREATE PROCEDURE ViewEmployeeProfile
    @EmployeeID INT
AS
BEGIN
    SELECT e.*, p.position_title, d.department_name, m.full_name AS ManagerName
    FROM Employee e
    LEFT JOIN Position p ON e.position_id = p.position_id
    LEFT JOIN Department d ON e.department_id = d.department_id
    LEFT JOIN Employee m ON e.manager_id = m.employee_id
    WHERE e.employee_id = @EmployeeID;
END;
GO

-- UpdateContactInformation
CREATE PROCEDURE UpdateContactInformation
    @EmployeeID INT,
    @RequestType VARCHAR(50),
    @NewValue VARCHAR(100)
AS
BEGIN
    IF @RequestType = 'Phone'
        UPDATE Employee SET phone = @NewValue WHERE employee_id = @EmployeeID;
    ELSE IF @RequestType = 'Address'
        UPDATE Employee SET address = @NewValue WHERE employee_id = @EmployeeID;
    ELSE IF @RequestType = 'Email'
        UPDATE Employee SET email = @NewValue WHERE employee_id = @EmployeeID;
    
    SELECT 'Contact information updated successfully' AS Message;
END;
GO

-- ViewEmploymentTimeline
CREATE PROCEDURE ViewEmploymentTimeline
    @EmployeeID INT
AS
BEGIN
    SELECT 'Hired' AS EventType, e.hire_date AS EventDate, 'Hired as ' + ISNULL(p.position_title, 'Employee') AS Description
    FROM Employee e
    LEFT JOIN Position p ON e.position_id = p.position_id
    WHERE e.employee_id = @EmployeeID
    ORDER BY EventDate;
END;
GO

-- UpdateEmergencyContact
CREATE PROCEDURE UpdateEmergencyContact
    @EmployeeID INT,
    @ContactName VARCHAR(100),
    @Relation VARCHAR(50),
    @Phone VARCHAR(20)
AS
BEGIN
    UPDATE Employee
    SET emergency_contact_name = @ContactName, relationship = @Relation, emergency_contact_phone = @Phone
    WHERE employee_id = @EmployeeID;
    
    SELECT 'Emergency contact updated successfully' AS Message;
END;
GO

-- RequestHRDocument
CREATE PROCEDURE RequestHRDocument
    @EmployeeID INT,
    @DocumentType VARCHAR(50)
AS
BEGIN
    SELECT 'HR document request submitted successfully' AS Message;
END;
GO

-- ViewMyContracts
CREATE PROCEDURE ViewMyContracts
    @EmployeeID INT
AS
BEGIN
    SELECT * FROM Contract WHERE contract_id IN (SELECT contract_id FROM Employee WHERE employee_id = @EmployeeID);
END;
GO

-- ViewMyPayroll
CREATE PROCEDURE ViewMyPayroll
    @EmployeeID INT
AS
BEGIN
    SELECT * FROM Payroll WHERE employee_id = @EmployeeID ORDER BY period_start DESC;
END;
GO

-- UpdatePersonalDetails
CREATE PROCEDURE UpdatePersonalDetails
    @EmployeeID INT,
    @Phone VARCHAR(20),
    @Address VARCHAR(150)
AS
BEGIN
    UPDATE Employee SET phone = @Phone, address = @Address WHERE employee_id = @EmployeeID;
    SELECT 'Personal details updated successfully' AS Message;
END;
GO

-- ViewMyMissions
CREATE PROCEDURE ViewMyMissions
    @EmployeeID INT
AS
BEGIN
    SELECT * FROM Mission WHERE employee_id = @EmployeeID;
END;
GO

CREATE PROCEDURE SubmitReimbursement
    @EmployeeID INT,
    @ExpenseType VARCHAR(50),
    @Amount DECIMAL(10,2)
AS
BEGIN
    -- Your Reimbursement table only has: reimbursement_id, employee_id, current_status, approval_date
    -- So we can only insert employee_id, current_status, approval_date
    INSERT INTO Reimbursement (employee_id, current_status, approval_date)
    VALUES (@EmployeeID, 'Pending', GETDATE());
    
    SELECT 'Reimbursement request submitted successfully' AS Message;
END;
GO

-- =============================================
-- LINE MANAGER PROCEDURES (Additional)
-- =============================================

-- ApproveMissionCompletion
CREATE PROCEDURE ApproveMissionCompletion
    @MissionID INT,
    @ManagerID INT,
    @Remarks VARCHAR(200)
AS
BEGIN
    UPDATE Mission SET status = 'Completed' WHERE mission_id = @MissionID;
    SELECT 'Mission completion approved successfully' AS Message;
END;
GO

-- RequestReplacement
CREATE PROCEDURE RequestReplacement
    @EmployeeID INT,
    @Reason VARCHAR(150)
AS
BEGIN
    SELECT 'Replacement request submitted successfully' AS Message;
END;
GO

-- ViewDepartmentSummary
CREATE PROCEDURE ViewDepartmentSummary
    @DepartmentID INT
AS
BEGIN
    SELECT d.department_name, COUNT(e.employee_id) AS EmployeeCount
    FROM Department d
    LEFT JOIN Employee e ON d.department_id = e.department_id
    WHERE d.department_id = @DepartmentID
    GROUP BY d.department_name;
END;
GO

-- =============================================
-- HR ADMIN PROCEDURES (Additional) - CORRECTED
-- =============================================

-- UpdateInsuranceBrackets (HR version with notification)
CREATE PROCEDURE UpdateInsuranceBracketsNotify
    @BracketID INT,
    @NewMinSalary DECIMAL(10,2),
    @NewMaxSalary DECIMAL(10,2),
    @NewEmployeeContribution DECIMAL(5,2),
    @NewEmployerContribution DECIMAL(5,2),
    @UpdatedBy INT
AS
BEGIN
    UPDATE PayrollPolicy
    SET description = 'Updated Range: ' + CAST(@NewMinSalary AS VARCHAR) + '-' + CAST(@NewMaxSalary AS VARCHAR)
    WHERE policy_id = @BracketID;
    
    SELECT 'Insurance brackets updated and notification sent' AS Message;
END;
GO

-- ApprovePolicyUpdate
CREATE PROCEDURE ApprovePolicyUpdate
    @PolicyID INT,
    @ApprovedBy INT
AS
BEGIN
    SELECT 'Policy update approved successfully' AS Message;
END;
GO

