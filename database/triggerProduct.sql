USE [VegetablesShop]
GO
/****** Object:  Trigger [dbo].[updateStatus]    Script Date: 10/29/2021 11:14:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[updateStatus] ON [dbo].[tblProducts] AFTER UPDATE AS
BEGIN 
	UPDATE tblProducts
	SET availableID = 2
	WHERE quantity = 0
END