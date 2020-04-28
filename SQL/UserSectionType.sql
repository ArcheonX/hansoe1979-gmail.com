CREATE TYPE dbo.UserSectionType
AS TABLE
(
  Employee_ID nvarchar(50),
  ID_Section INT,
  Is_Header tinyint
);
GO