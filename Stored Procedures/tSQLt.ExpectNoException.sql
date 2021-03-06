SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
---Build+
CREATE PROCEDURE [tSQLt].[ExpectNoException]
  @Message NVARCHAR(MAX) = NULL
AS
BEGIN
 IF(EXISTS(SELECT 1 FROM #ExpectException))
 BEGIN
   RAISERROR('Each test can only contain one call to tSQLt.ExpectException or tSQLt.ExpectNoException.',16,10);
 END;
 
 INSERT INTO #ExpectException(ExpectException, FailMessage)
 VALUES(0, @Message);
END;
---Build-
GO
