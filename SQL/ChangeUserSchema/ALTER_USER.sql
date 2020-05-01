ALTER TABLE LDMS_M_User ADD ID_Role INT NULL;
ALTER TABLE LDMS_M_User ADD [IsInstructor] tinyint NULL;
ALTER TABLE LDMS_M_User ADD [IsSectionHead] tinyint NULL;
ALTER TABLE LDMS_M_User ADD [ID_Section] int NULL;  
ALTER TABLE LDMS_M_User ADD [Password] nvarchar(1024) NULL; 
ALTER TABLE LDMS_M_User ADD [PasswordSalt] nvarchar(1024) NULL;
ALTER TABLE LDMS_M_User ADD [IsForceChangePass] tinyint NULL;
ALTER TABLE LDMS_M_User ADD [IsAllowGPP] tinyint NULL;
ALTER TABLE LDMS_M_User ADD [Is_FirstLogin] tinyint NULL;
ALTER TABLE LDMS_M_User ADD [Remark] nvarchar(200) NULL;  
ALTER TABLE LDMS_M_User ADD ID_User BIGINT IDENTITY(1,1) NOT NULL;
ALTER TABLE LDMS_M_User ADD [IsDeleted] tinyint NULL;
ALTER TABLE LDMS_M_User ADD [IsLocked] tinyint NULL;
ALTER TABLE [dbo].[LDMS_M_User] DROP CONSTRAINT [PK_LDMS_M_User] WITH ( ONLINE = OFF );
ALTER TABLE LDMS_M_User ADD CONSTRAINT PK_ID_User PRIMARY KEY (ID_User);
GO;

update LDMS_M_User
SET 
	ID_Role  = ISNULL(LDMS_M_UserRole.ID_Role,1),
	IsInstructor = ISNULL(LDMS_M_UserRole.IsInstructor,0),
	IsSectionHead = ISNULL(LDMS_M_UserRole.IsSectionHead,0),
	ID_Section = LDMS_M_UserRole.ID_Section,
	[Password] =LDMS_M_UserRole.[Password],
	PasswordSalt =LDMS_M_UserRole.PasswordSalt,
	IsForceChangePass = ISNULL(LDMS_M_UserRole.IsForceChangePass,0),
	IsAllowGPP = ISNULL(LDMS_M_UserRole.IsAllowGPP,0),
	Is_FirstLogin = ISNULL(LDMS_M_UserRole.Is_FirstLogin,0),
	Remark = LDMS_M_UserRole.Remark,
	IsDeleted = 0,
	IsLocked = 0
FROM LDMS_M_User  
INNER JOIN LDMS_M_UserRole on LDMS_M_User.EmployeeID = LDMS_M_UserRole.EmployeeID;

UPDATE LDMS_M_User
set [Password]= 'rQs8kl/WhNIouVUSK6YvXjzeXKA=',[PasswordSalt] ='H/O9luM+jQyw86vscWcpRA=='
WHERE [Password] IS NULL;

ALTER TABLE LDMS_M_User ALTER COLUMN ID_Role INT NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [IsInstructor] tinyint NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [IsSectionHead] tinyint NOT NULL; 
ALTER TABLE LDMS_M_User ALTER COLUMN [Password] nvarchar(1024) NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [PasswordSalt] nvarchar(1024) NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [IsForceChangePass] tinyint NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [IsAllowGPP] tinyint NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [Is_FirstLogin] tinyint NOT NULL; 
ALTER TABLE LDMS_M_User ALTER COLUMN [IsDeleted] tinyint NOT NULL;
ALTER TABLE LDMS_M_User ALTER COLUMN [IsLocked] tinyint NOT NULL; 
GO;

