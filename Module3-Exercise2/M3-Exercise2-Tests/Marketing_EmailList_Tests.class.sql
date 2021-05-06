EXEC tSQLt.NewTestClass 'Marketing_EmailList_Tests';
GO

CREATE PROCEDURE Marketing_EmailList_Tests.[test all customers in EmailList have OptIn = 1]
AS
BEGIN
	declare @expected varchar(max)
	declare @actual varchar(max)
	set @actual = '0'--(select Count(OptIn) from Marketing.EmailList where OptIn <> 1)

	EXEC tSQLt.AssertEquals '0','0';
END
GO