USE [EJL86_DB]
GO
/****** Object:  StoredProcedure [db_owner].[DeleteCustomer]    Script Date: 08/12/2016 02:43:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [db_owner].[DeleteEmployee](
	@ID		INT
)
AS
	BEGIN
	DELETE FROM Employee WHERE ID = @ID
	END