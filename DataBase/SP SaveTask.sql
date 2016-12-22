USE [EJL86_DB]
GO

CREATE PROC [db_owner].[usp_SaveTask] (
	@ScheduleID		INT,
	@Description	NVARCHAR (MAX) 
) 
AS
	BEGIN
		INSERT INTO Task (ScheduleID, Description)
		VALUES(@ScheduleID, @Description);
	END
