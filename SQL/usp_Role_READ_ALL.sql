--USE [veraplus_ldms]
--GO

/****** Object:  StoredProcedure [dbo].[usp_Role_READ_ALL]    Script Date: 4/6/2020 11:08:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE OR ALTER PROCEDURE [dbo].[usp_Role_READ_ALL] 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT ROW_NUMBER() OVER(ORDER BY ID ASC)  as RowIndex,ID AS ID_Role,ISNULL(RoleName_EN,'') AS RoleName_EN,ISNULL(RoleName_TH,'') AS RoleName_TH,ISNULL(RoleDescription,'') AS RoleDescription 
	FROM LDMS_M_Role WITH (NOLOCK)  WHERE IsActive=1;
END
GO


