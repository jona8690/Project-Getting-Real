USE [EJL86_DB]
GO
/****** Object:  StoredProcedure [db_owner].[usp_SaveTask]    Script Date: 15/12/2016 11:12:48 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROC [db_owner].[usp_SaveScheduleEmployees] (
	@ScheduleID		INT,
	@EmployeeID		INT
) 
AS
	BEGIN
		INSERT INTO Schedule_Employees (ScheduleID, EmployeeID)
		VALUES(@ScheduleID, @EmployeeID);
	END
