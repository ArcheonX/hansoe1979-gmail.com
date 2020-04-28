-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
/*
declare @p1 dbo.UserSectionType
insert into @p1 values(N'ET00001',117,1)
insert into @p1 values(N'ST0003',116,1)
insert into @p1 values(N'ST0004',119,1)
insert into @p1 values(N'ST002',0,0)
insert into @p1 values(N'STD001',0,0)
insert into @p1 values(N'STT00001',0,0)
exec [dbo].[usp_LDMS_M_User_UpdateSection] @UserSectionTable=@p1,@updateBy=N'STT00001'
*/
-- =============================================
CREATE OR ALTER PROCEDURE usp_LDMS_M_User_UpdateSection
	-- Add the parameters for the stored procedure here
	@UserSectionTable UserSectionType readonly,
	@updateBy nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	--IF EXISTS ( select count(EmployeeID) , [ID_Section] 
	--FROM [LDMS_M_User] 
	--WHERE [IsSectionHead] =1 and not exists 
	--(select Employee_ID from @UserSectionTable udt where udt.ID_Section = [LDMS_M_User].ID_Section and udt.Employee_ID = [LDMS_M_User].EmployeeID AND udt.Is_Header=1)
	--GROUP BY [ID_Section]
	--HAVING count(EmployeeID)>1)
	--BEGIN
	--	RAISERROR (101,-1,-1, 'One Section Allow One Header');  
	--END
	--ELSE
    -- Insert statements for procedure here
	UPDATE	[LDMS_M_User]
	SET   
		[IsSectionHead] = udt.Is_Header
       ,[ID_Section] = udt.ID_Section 
       ,[IsActive] = 1
	   ,[UpdateBy] = @updateBy
	   ,[UpdateDate] = getdate()
	FROM  [LDMS_M_User] JOIN @UserSectionTable udt ON [LDMS_M_User].EmployeeID = udt.Employee_ID 
END
GO
