DROP VIEW [dbo].[VW_M_Course_Display]
GO
/****** Object:  View [dbo].[VW_Flat_Course_JobTitle]    Script Date: 5/4/2020 10:41:48 PM ******/
DROP VIEW [dbo].[VW_Flat_Course_JobTitle]
GO
/****** Object:  View [dbo].[VW_Flat_Course_JobGrade]    Script Date: 5/4/2020 10:41:48 PM ******/
DROP VIEW [dbo].[VW_Flat_Course_JobGrade]
GO
/****** Object:  View [dbo].[VW_Flat_Course_Employee]    Script Date: 5/4/2020 10:41:48 PM ******/
DROP VIEW [dbo].[VW_Flat_Course_Employee]
GO
/****** Object:  View [dbo].[VW_Flat_Course_Employee]    Script Date: 5/4/2020 10:41:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[VW_Flat_Course_Employee]
AS
select display.ID_COURSE, ISNULL(left(display.[EmployeeID], LEN(display.[EmployeeID]) -2), '') as [EmployeeID]
from (
select distinct mainTable.ID_COURSE, innerdisplay.[EmployeeID] 
from [dbo].[LDMS_T_CourseEmployee] mainTable
cross apply (select concattable.[EmployeeID] + ', '
			from [dbo].[LDMS_T_CourseEmployee] concattable
			where mainTable.ID_COURSE = concattable.ID_COURSE
			order by concattable.ID_COURSE
			for xml path ('')) as innerdisplay ([EmployeeID]))display
GO
/****** Object:  View [dbo].[VW_Flat_Course_JobGrade]    Script Date: 5/4/2020 10:41:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create VIEW [dbo].[VW_Flat_Course_JobGrade]
AS
select display.ID_COURSE, ISNULL(left(display.[ID_JobGrade], LEN(display.[ID_JobGrade]) -2), '') as [ID_JobGrade]
from (
select distinct mainTable.ID_COURSE, innerdisplay.[ID_JobGrade] 
from [dbo].[LDMS_T_CourseJobGrade] mainTable
cross apply (select concattable.[ID_JobGrade] + ', '
			from [dbo].[LDMS_T_CourseJobGrade] concattable
			where mainTable.ID_COURSE = concattable.ID_COURSE
			order by concattable.ID_COURSE
			for xml path ('')) as innerdisplay ([ID_JobGrade]))display
GO
/****** Object:  View [dbo].[VW_Flat_Course_JobTitle]    Script Date: 5/4/2020 10:41:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[VW_Flat_Course_JobTitle]
AS
select display.ID_COURSE, ISNULL(left(display.[ID_JobTitle], LEN(display.[ID_JobTitle]) -2), '') as [ID_JobTitle]
from (
select distinct mainTable.ID_COURSE, innerdisplay.[ID_JobTitle] 
from [dbo].[LDMS_T_CourseJobTitle] mainTable
cross apply (select concattable.[ID_JobTitle] + ', '
			from [dbo].[LDMS_T_CourseJobTitle] concattable
			where mainTable.ID_COURSE = concattable.ID_COURSE
			order by concattable.ID_COURSE
			for xml path ('')) as innerdisplay ([ID_JobTitle]))display
GO
/****** Object:  View [dbo].[VW_M_Course_Display]    Script Date: 5/4/2020 10:41:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE VIEW [dbo].[VW_M_Course_Display]
AS
SELECT       dbo.LDMS_M_Course.CourseID, dbo.LDMS_M_Course.ID, dbo.LDMS_M_Course.CourseName, dbo.LDMS_M_Course.ID_LearnMethod, dbo.LDMS_M_Course.ID_CourseType, dbo.LDMS_M_Course.Objective, 
                         dbo.LDMS_M_Course.Description, dbo.LDMS_M_Course.OutLine, dbo.LDMS_M_Course.IsRefreshment, dbo.LDMS_M_Course.RefreshmentPeriod, dbo.LDMS_M_Course.RefreshmentUnit, dbo.LDMS_M_Course.ID_PlantTarget, 
                         dbo.LDMS_M_Course.ID_CenterTarget, dbo.LDMS_M_Course.ID_DivisionTarget, dbo.LDMS_M_Course.ID_DepartmentTarget, dbo.LDMS_M_Course.ID_SectionTarget, dbo.LDMS_M_Course.ID_DepartmentCreate, 
                         dbo.LDMS_M_Course.CreateBy, dbo.LDMS_M_Course.CreateDate, dbo.LDMS_M_Course.UpdateBy, dbo.LDMS_M_Course.UpdateDate, dbo.LDMS_M_Course.IsActive, dbo.VW_Flat_Course_Employee.EmployeeID AS TargetEmployeeID, 
                         dbo.VW_Flat_Course_JobGrade.ID_JobGrade AS TargetJobgrade, dbo.VW_Flat_Course_JobTitle.ID_JobTitle AS TargetJobTitle
FROM            dbo.LDMS_M_Course LEFT JOIN
                         dbo.VW_Flat_Course_Employee ON dbo.LDMS_M_Course.ID = dbo.VW_Flat_Course_Employee.ID_COURSE LEFT JOIN
                         dbo.VW_Flat_Course_JobGrade ON dbo.LDMS_M_Course.ID = dbo.VW_Flat_Course_JobGrade.ID_COURSE LEFT JOIN
                         dbo.VW_Flat_Course_JobTitle ON dbo.LDMS_M_Course.ID = dbo.VW_Flat_Course_JobTitle.ID_COURSE
GO\