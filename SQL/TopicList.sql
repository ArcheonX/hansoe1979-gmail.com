CREATE TYPE dbo.TopicList
AS TABLE
(
  ID_Topic BIGINT,
  ID_Course INT,
  TopicName nvarchar(100)
);
GO