USE [EJL86_DB]
GO

CREATE PROC [db_owner].[usp_GetTasks](
	@ID		INT
)
AS
	BEGIN
	SELECT * FROM Task WHERE ScheduleID = @ID
END