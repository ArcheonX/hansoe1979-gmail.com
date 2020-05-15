--USE [veraplus_ldms]
--GO
/****** Object:  View [dbo].[VW_Flat_Course_Employee]    Script Date: 5/3/2020 12:38:47 PM ******/
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
/****** Object:  View [dbo].[VW_Flat_Course_JobGrade]    Script Date: 5/3/2020 12:38:47 PM ******/
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
/****** Object:  View [dbo].[VW_Flat_Course_JobTitle]    Script Date: 5/3/2020 12:38:47 PM ******/
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
/****** Object:  View [dbo].[VW_M_Course_Display]    Script Date: 5/3/2020 12:38:47 PM ******/
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
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Flat_Course_JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_Flat_Course_JobTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "LDMS_M_Course"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 240
            End
            DisplayFlags = 280
            TopColumn = 10
         End
         Begin Table = "VW_Flat_Course_Employee"
            Begin Extent = 
               Top = 151
               Left = 187
               Bottom = 302
               Right = 357
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VW_Flat_Course_JobGrade"
            Begin Extent = 
               Top = 42
               Left = 497
               Bottom = 138
               Right = 667
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "VW_Flat_Course_JobTitle"
            Begin Extent = 
               Top = 6
               Left = 694
               Bottom = 102
               Right = 864
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 2340
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_M_Course_Display'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'VW_M_Course_Display'
GO
