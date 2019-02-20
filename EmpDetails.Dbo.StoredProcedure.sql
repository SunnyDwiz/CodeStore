-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Sunny>
-- Create date: <Create Date,20/02/19,>
-- Description:	<Description,Stored Procedure on EmpDetails,>
-- =============================================
CREATE PROCEDURE Sp_SelectEmpData
(
@EmpId int = Null, @EmpName varchar(25)  = Null, @Email varchar(25)  = Null, @EState varchar(25)  = Null, @City varchar(25)  = Null, @Phone varchar(25)  = Null, @UserName varchar(25)  = Null, @EPassword varchar(25)  = Null, @Gender varchar(25)  = Null, @Skill varchar(75)  = Null, @Religion varchar(25)  = Null, @IsActive bit, @RoleId int  = Null
)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	Select * from tbEmpDetails where Id = @EmpId
    
END
GO
