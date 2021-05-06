EXEC tSQLt.NewTestClass 'LostAndFound_CalculateShipping_Tests';
GO

CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test same states returns $10 shipping]
AS
BEGIN
  DECLARE @shipping int

  SET @shipping = (SELECT shipping FROM LostAndFound.CalculateShipping('StateABC','StateABC'));

  EXEC tSQLt.AssertEquals @Expected = 10.0, @Actual = @shipping;
END
GO


CREATE PROCEDURE LostAndFound_CalculateShipping_Tests.[test different states returns $25 shipping]
AS
BEGIN
  DECLARE @shipping int

  SET @shipping = (SELECT shipping FROM LostAndFound.CalculateShipping('StateXYZ','StateABC'));

  EXEC tSQLt.AssertEquals @Expected = 25.0, @Actual = @shipping;
END
GO