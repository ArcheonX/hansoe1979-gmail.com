CREATE TYPE dbo.CompetenceScore
AS TABLE
(
  ID_CompetenceKnowledgeTopic BIGINT,
  ID_CompetenceAnalytic INT,
  ID_CompetenceEmployee nvarchar(50),
  Score INT
);
GO