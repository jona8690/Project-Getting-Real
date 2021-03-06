USE [EJL86_DB]
GO
/****** Object:  StoredProcedure [db_owner].[usp_SaveEmployee]    Script Date: 07/12/2016 03:19:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [db_owner].[usp_SaveEmployee] (
	@Firstname		NVARCHAR (MAX), 
	@Lastname		NVARCHAR (MAX), 
	@Password		NVARCHAR(MAX),
	@Email			NVARCHAR (MAX), 
	@Phone			NVARCHAR (15),
	@HouseNo		INT,
	@FloorNo		INT,
	@Entrance		NVARCHAR (12),
	@Streetname		NVARCHAR (MAX),
	@City			NVARCHAR (MAX),
	@PostCode		INT,
	@Permission		INT
) 
AS
	BEGIN
		INSERT INTO Employee (Firstname,Lastname,Password,Email,Phone,HouseNo,FloorNo,Entrance,Streetname,City,PostCode,Permission)
		VALUES (@Firstname,@Lastname,@Password, @Email,@Phone,@HouseNo,@FloorNo,@Entrance,@Streetname,@City,@PostCode,@Permission)
	END
