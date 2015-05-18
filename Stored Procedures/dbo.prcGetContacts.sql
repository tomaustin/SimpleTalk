SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetContacts]
AS
    SELECT  *
    FROM    Contacts

	-- version 2
	-- this is a bad practice!!!

GO
