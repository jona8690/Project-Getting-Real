USE [EJL86_DB]
GO
/****** Object:  StoredProcedure [db_owner].[UpdateEmployee]    Script Date: 07/12/2016 03:16:59 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [db_owner].[UpdateEmployee] (
	@ID				INT,
	@Firstname		NVARCHAR (MAX) = NULL, 
	@Lastname		NVARCHAR (MAX) = NULL,
	@Password		NVARCHAR (MAX) = NULL, 
	@Email			NVARCHAR (MAX) = NULL, 
	@Phone			NVARCHAR (15) = NULL,
	@HouseNo		INT = NULL,
	@FloorNo		INT = NULL,
	@Entrance		NVARCHAR (12) = NULL,
	@Streetname		NVARCHAR (MAX) = NULL,
	@City			NVARCHAR (MAX) = NULL,
	@PostCode		INT = NULL,
	@Permission		INT = NULL
)
AS
	BEGIN
	UPDATE Employee SET 
		Firstname = COALESCE(@Firstname, Firstname),
		Lastname = COALESCE(@Lastname, Lastname),
		Password = COALESCE(@Password, Password),
		Email = COALESCE(@Email, Email),
		Phone = COALESCE(@Phone, Phone),
		HouseNo = COALESCE(@HouseNo, HouseNo),
		Entrance = COALESCE(@Entrance, Entrance),
		Streetname = COALESCE(@Streetname, Streetname),
		City = COALESCE(@City, City),
		PostCode = COALESCE(@PostCode, PostCode),
		Permission = COALESCE(@Permission, Permission)
	WHERE ID = @ID
END
