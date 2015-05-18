SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[prcGetRSSFeeds]
AS
    SELECT  RSSFeedID,
            FeedName,
            Checked,
            FeedBurner
    FROM    dbo.RSSFeeds

	-- v6GIT2
GO
