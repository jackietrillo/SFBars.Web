/*
	SFBars Standard Insert Script
	Date: 01/17/2015	
*/
USE SFBars

DELETE FROM BarTypeBar
DELETE FROM Bar
DELETE FROM BarType
DELETE FROM District
DELETE FROM Street
GO

SET IDENTITY_INSERT SFBars.dbo.District ON

DECLARE @DISTRICTBERNALHEIGHTS INT
DECLARE @DISTRICTCASTRO INT
DECLARE @DISTRICTFINANCIAL INT
DECLARE @DISTRICTFISHERMANWARF INT
DECLARE @DISTRICTHAIGHTASHBURY INT
DECLARE @DISTRICTMARINA INT
DECLARE @DISTRICTMISSION INT
DECLARE @DISTRICTNOEVALLEY INT
DECLARE @DISTRICTNORTHBEACH INT
DECLARE @DISTRICTRICHMOND INT
DECLARE @DISTRICTSOMA INT
DECLARE @DISTRICTSUNSET INT
DECLARE @DISTRICTTWINPEAKS INT

SET @DISTRICTBERNALHEIGHTS = 1
SET @DISTRICTCASTRO = 2
SET @DISTRICTFINANCIAL = 3
SET @DISTRICTFISHERMANWARF = 4
SET @DISTRICTHAIGHTASHBURY = 5
SET @DISTRICTMARINA = 6
SET @DISTRICTMISSION = 7
SET @DISTRICTNOEVALLEY = 8
SET @DISTRICTNORTHBEACH = 9
SET @DISTRICTRICHMOND = 10
SET @DISTRICTSOMA = 11
SET @DISTRICTSUNSET = 12
SET @DISTRICTTWINPEAKS = 13

--TODO Insert more districts
INSERT INTO District (DistrictId, Name) VALUES ( @DISTRICTCASTRO, 'Castro')
INSERT INTO District (DistrictId, Name) VALUES ( @DISTRICTMISSION, 'Mission')
INSERT INTO District (DistrictId, Name) VALUES ( @DISTRICTNOEVALLEY, 'Noe Valley')
INSERT INTO District (DistrictId, Name) VALUES ( @DISTRICTSOMA, 'SoMa')

SET IDENTITY_INSERT SFBars.dbo.District OFF

SET IDENTITY_INSERT SFBars.dbo.Street ON

INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 1, 'Castro Street', '', 37.761842, -122.435299, 'TableCell-CastroStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 2, 'Valencia Street', '', 37.763302, -122.421211, 'TableCell-ValenciaStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 3, 'Market Street', '', 37.763284, -122.434163, 'TableCell-MarketStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 4, 'Mission Street', '', 37.746857, -122.419400, 'TableCell-MissionStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 5, 'Church Steet', '', 37.767135, -122.428704, 'TableCell-ChurchStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 6, 'Hayes Street', '', 37.761842, -122.435299, 'TableCell-HayesStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 7, 'Haight Street', '', 37.761842, -122.435299, 'TableCell-HaightStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 8, '24 TH Street', '', 37.761842, -122.435299, 'TableCell-24THStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 9,  '18 TH Street', '', 37.761842, -122.435299, 'TableCell-18THStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 10, '11 TH Street', '', 37.761842, -122.435299, 'TableCell-11THStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 11, 'Turk Street', '', 37.761842, -122.435299, 'TableCell-TurkStreet.png')
INSERT INTO Street (StreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 12, 'Geary Street', '', 37.761842, -122.435299, 'TableCell-TurkStreet.png')

SET IDENTITY_INSERT SFBars.dbo.Street OFF

SET IDENTITY_INSERT SFBars.dbo.BarType ON

DECLARE @DANCECLUB INT
DECLARE @DIVEBAR INT
DECLARE @GAYBAR INT
DECLARE @HIPSTER INT
DECLARE @KARAOKE INT
DECLARE @LIVEMUSIC INT
DECLARE @LOUNGE INT
DECLARE @PUB INT
DECLARE @SPORTSBAR INT
DECLARE @WINEBAR INT

SET @DANCECLUB = 1
SET @DIVEBAR = 2
SET @GAYBAR = 3
SET @HIPSTER = 4
SET @KARAOKE = 5
SET @LIVEMUSIC = 6
SET @LOUNGE = 7
SET @PUB = 8
SET @SPORTSBAR = 9
SET @WINEBAR = 10

INSERT INTO BarType (BarTypeId, Name) VALUES (@DANCECLUB, 'Dance Club')
INSERT INTO BarType (BarTypeId, Name) VALUES (@DIVEBAR, 'Dive Bar')
INSERT INTO BarType (BarTypeId, Name) VALUES (@GAYBAR, 'Gay Bar')
INSERT INTO BarType (BarTypeId, Name) VALUES (@HIPSTER, 'Hipster')
INSERT INTO BarType (BarTypeId, Name) VALUES (@KARAOKE, 'Karaoke')
INSERT INTO BarType (BarTypeId, Name) VALUES (@LIVEMUSIC, 'Live Music')
INSERT INTO BarType (BarTypeId, Name) VALUES (@LOUNGE, 'Lounge')
INSERT INTO BarType (BarTypeId, Name) VALUES (@PUB, 'Pub')
INSERT INTO BarType (BarTypeId, Name) VALUES (@SPORTSBAR, 'Sport''s Bar')
INSERT INTO BarType (BarTypeId, Name) VALUES (@WINEBAR, 'Wine Bar')

SET IDENTITY_INSERT SFBars.dbo.BarType OFF

DECLARE @BARID INT
SET @BARID = 1010


--TODO Insert more bars (Stud, Boom Boom Room, Makeout Room, Oasis, Slate, Beauty Bar) 

-- Castro - Castro Street
SET IDENTITY_INSERT SFBars.dbo.Bar ON

INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 1, '440 Castro', 'Gay bar known for beards & booze', '440 Castro St', '(415) 621-8732', '5 PM - 2 AM', 'http://www.the440.com/', 'http://www.the440.com/calendar.html', 'http://www.facebook.com/440castro', 'http://www.yelp.com/biz/440-castro-san-francisco', 37.761841, -122.435054, 'TableCell-440Castro.png')
SET @BARID = @BARID + 1

INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 1, 'Badlands', 'Techno & ''80s hits play at this veteran gay club with a lively dance floor & lots of drink specials', '4121 18th St', '(415) 626-9320', '5 PM - 2 AM', 'http://www.sfbadlands.com', '', 'https://www.facebook.com/pages/Badlands/158245524202434', 'http://www.yelp.com/biz/sf-badlands-san-francisco', 37.760700, -122.435468, 'TableCell-Badlands.png')
SET @BARID = @BARID + 1

INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 1, 'Blush! Wine Bar', 'Dozens of vintages plus bistro fare', '476 Castro St', '(415) 621-2811', '5 PM - 2 AM', 'http://www.blushwinebar.com', 'http://www.blushwinebar.com/events', 'https://www.facebook.com/blushwinebar', 'http://www.yelp.com/biz/blush-san-francisco', 37.761281, -122.435206, 'TableCell-Blush.png')
SET @BARID = @BARID + 1

INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 1, 'QBar', 'Castro gay bar with a young male crowd', '456 Castro St', '(415) 864-2877', '5 PM - 2 AM', 'http://www.qbarsf.com', '', 'https://www.facebook.com/QbarSF', 'http://www.yelp.com/biz/q-bar-san-francisco?osq=qbar', 37.761622, -122.435285, 'TableCell-QBar.png')
SET @BARID = @BARID + 1

INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 1, 'Twin Peaks Tavern', 'Historical gay bar & Castro landmark ', '401 Castro Street', '(415) 864-9470', '8:00 AM – 2:00 AM', 'http://www.twinpeakstavern.com/', '', 'https://www.facebook.com/pages/Twin-Peaks-Tavern/107386915965070', 'http://www.yelp.com/biz/twin-peaks-tavern-san-francisco', 37.762353, -122.434964, 'TableCell-TwinPeaksTavern.png')
--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 1, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')

-- 18TH Street
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 9, 'Midnight Sun', 'Video Bar & longtime Castro fixture', '4067 18th St', '(415) 861-4186', '5 PM - 2 AM', 'http://www.midnightsunsf.com/', '', 'https://www.facebook.com/midnightsunsf', 'http://www.yelp.com/biz/midnight-sun-san-francisco', 37.760811, -122.434316, 'TableCell-MidnightSun.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 9, 'The Mix', 'Bar', '4086 18th St', '(415) 431-8616', '5 PM - 2 AM', 'http://www.sfmixbar.com', 'http://www.sfmixbar.com/eventsnpics.html', 'https://www.facebook.com/MixbarSF?rf=186687948020976', '', 37.761116, -122.434422, 'TableCell-TheMix.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 9, 'Toad Hall', 'Dance Club', '4146 18th St', '(415) 558-0893', '5 PM - 2 AM', 'http://www.toadhallbar.com', '', 'https://www.facebook.com/ToadHallBar', 'http://www.yelp.com/biz/the-mix-san-francisco', 37.760991, -122.435737, 'TableCell-ToadHall.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 9, 'Moby Dick', 'Storied Bar', '4049 18th St', '(415) 861-1199', '5 PM - 2 AM', 'http://www.mobydicksf.com/', 'http://www.mobydicksf.com/events.php', 'https://www.facebook.com/MobyDickBar', 'http://www.yelp.com/biz/moby-dick-san-francisco', 37.760851, -122.433694, 'TableCell-MobyDick.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 9, 'The Edge', 'Local gay bar with nightly themes', '4149 18th Street', '(415) 863-4027', '12 PM - 2 AM', 'http://www.edgesf.com/', 'http://www.edgesf.com/', 'https://www.facebook.com/EdgeSF', '', 37.760664, -122.435947, 'TableCell-TheEdge.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTCASTRO, 9, 'Harvey''s', 'Named for gay activist Harvey Milk, this bar offers drinks, food, trivia & comedy shows.', '500 Castro Street', '(415) 431-4278', '11 AM - 11 PM', 'http://www.harveyssf.com/', '', 'https://www.facebook.com/SFHarveys', 'http://www.yelp.com/biz/harveys-san-francisco', 37.760752, -122.435217, 'TableCell-Harveys.png')
SET @BARID = @BARID + 1
--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 1, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')

-- Mission Valencia Street
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'Elbo Room', 'Bar/Club with dancing, drinks and music', '647 Valencia St', '(415) 552-7788', '5 PM - 2 AM', 'http://www.elbo.com/', 'http://www.elbo.com/Calendar.php', 'https://www.facebook.com/pages/Elbo-Room/116330261711156', '', 37.762511, -122.421516, 'TableCell-ElboRoom.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'The Chapel', 'Live Music venue with full bar & food', '777 Valencia St', '(415) 551-5157', '7 PM - 2 AM', 'http://www.thechapelsf.com/', '', 'https://www.facebook.com/TheChapelSF', 'http://www.yelp.com/biz/elbo-room-san-francisco', 37.760522, -122.421200, 'TableCell-TheChapel.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'Amnesia', 'Club revered for big range of live music', '853 Valencia St', '(415) 970-0012', '5 PM - 2 AM', 'http://amnesiathebar.com', 'http://amnesiathebar.com/newp/calendar/', 'https://www.facebook.com/amnesiaSF', 'http://www.yelp.com/biz/amnesia-san-francisco', 37.759284, -122.421158, 'TableCell-Amnesia.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'Lexington Club', 'Lesbian bar with pool & jukebox or DJs', '3464 19th St', '(415) 863-2052', '3 PM - 2 AM', 'http://lexingtonclub.com/', 'http://lexingtonclub.com/upcoming-events/', 'https://www.facebook.com/lexingtonclub.sf', 'http://www.yelp.com/biz/lexington-club-san-francisco', 37.760360, -122.420884, 'TableCell-LexingtonClub.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'Casanova Lounge', 'Hipster-friendly lounge with funky decor', '527 Valencia St', '(415) 863-9328', '4 PM - 2 AM', 'http://www.casanovasf.com/', '', 'https://www.facebook.com/casanovaloungesf', 'http://www.yelp.com/biz/casanova-lounge-san-francisco', 37.764398, -122.421655, 'TableCell-CasanovaLounge.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'Blondie''s Bar', 'Loud music and lots of booze plus patio', '540 Valencia St', '(415) 864-2419', '4 PM - 2 AM', 'http://www.blondiesbarsf.com', '', 'https://www.facebook.com/blondiesbarsf', '', 37.764234, -122.422041, 'TableCell-BlondiesBar.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 2, 'Etcetera Wine Bar', 'Wine Bar & French Bites', '795 Valencia St', '(415) 926-5477', '5 PM - 1:30 AM', 'http://www.etceterawinebar.com/', '', 'https://www.facebook.com/pages/Etcetera-Wine-Bar/193426027388135', 'http://www.yelp.com/biz/etcetera-wine-bar-san-francisco', 37.760278, -122.421339, 'TableCell-Etcetera.png')
SET @BARID = @BARID + 1
--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 1, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')

-- Mission - Market Street
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'The Cafe', 'Dance Club with DJs and theme events', '2369 Market St', '(415) 861-3846', '5 PM - 2 AM', 'http://www.cafesf.com/', 'http://www.cafesf.com/events/boybar-fridays/', 'https://www.facebook.com/TheCafeSF', 'http://www.yelp.com/biz/the-caf%C3%A9-san-francisco-4?osq=cafe+sf', 37.762980, -122.434332, 'TableCell-TheCafe.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'The Mint Karaoke', 'Legendary Karaoke bar', '1942 Market St', '(415) 626-4726', '2:30 PM - 2 AM', 'http://www.themint.net/', 'http://www.themint.net/', 'https://www.facebook.com/pages/The-Mint-Karaoke-Lounge/107352429301675', 'http://www.yelp.com/biz/the-mint-san-francisco', 37.770267, -122.425843, 'TableCell-TheMint.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'Beaux', 'Gay bar with dance music all night', '2344 Market St', '(415) 658-7712', '4:00 PM - 2 AM', 'http://www.beauxsf.com/', 'http://www.beauxsf.com/?page_id=266', 'https://www.facebook.com/beauxsf', 'http://www.yelp.com/biz/beaux-san-francisco', 37.763626, -122.434230, 'TableCell-Beaux.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'Lucky 13', 'Raucous rock ''n'' roll bar', '2140 Market St', '(415) 487-1313', '11:00 AM - 2 AM', '', '', 'https://www.facebook.com/Lucky13SF', 'http://www.yelp.com/biz/lucky-13-san-francisco', 37.767104, -122.429855, 'TableCell-Lucky13.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'Blackbird', 'Inventive drinks in refined, loungey bar', '2124 Market St', '(415) 503-0630', '2 PM - 2 AM', 'http://www.blackbirdbar.com', 'http://www.blackbirdbar.com/blackbirdevents.php', 'https://www.facebook.com/BlackBirdSF', 'http://www.yelp.com/biz/blackbird-san-francisco', 37.767300, -122.429608, 'TableCell-Blackbird.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTSOMA, 3, 'Press Club', 'Stylish underground wine bar', '20 Yerba Buena Lane', '(415) 744-5000', '2 PM - 2 AM', 'http://www.pressclubsf.com', 'http://www.pressclubsf.com/events', 'https://www.facebook.com/PressClubSF', 'http://www.yelp.com/biz/press-club-san-francisco', 37.785984, -122.404503, 'TableCell-PressClub.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'The Showdown', 'DJs spin an eclectic mix of hip-hop & dance tunes at this SoMa hangout known for its happy hour.', '10 6th Street', '(415) 503-0684', '5 PM - 2 AM', 'http://showdownsf.com/', '', 'https://www.facebook.com/pages/Showdown/113069452044945?rf=513097312091717', 'http://www.yelp.com/biz/showdown-san-francisco-2', 37.781843, -122.410074, 'TableCell-TheShowdown.png')
SET @BARID = @BARID + 1

--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 1, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')

-- Mission - Mission Street
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 4, 'El Rio', 'Gay friendly neighborhood bar', '3158 Mission St', '(415) 282-3325', '5 PM - 2 AM', 'http://www.elriosf.com/', 'http://www.elriosf.com/calendar/', 'https://www.facebook.com/elriosf', 'http://www.yelp.com/biz/el-rio-san-francisco', 37.746794, -122.419396, 'TableCell-ElRio.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 4, 'Iron & Gold', 'Cozy cocktail bar with a vintage vibe', '3187 Mission St', '(415) 824-1447', '5 PM - 2 AM', 'http://www.ironandgoldsf.com/', 'https://www.google.com/calendar/embed?src=8e1ubg0vuljebv5a5ut8ennf3s%40group.calendar.google.com&ctz=America/Los_Angeles', 'https://www.facebook.com/pages/Iron-Gold/148296501945286', 'http://www.yelp.com/biz/iron-and-gold-san-francisco', 37.745738, -122.419282, 'TableCell-Iron&Gold.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 4, 'The Royal Cuckoo', 'The barkeeps spin vintage records at this dark bar with church pew seating & a throwback vibe', '3202 Mission Street', '(415) 550-8667', '5 PM - 2 AM', 'http://royalcuckoo.com/', 'http://royalcuckoo.com/live-music/', 'https://www.facebook.com/pages/The-Royal-Cuckoo-Organ-Lounge/141220122598547', 'http://www.yelp.com/biz/royal-cuckoo-san-francisco', 37.745399, -122.420356, 'TableCell-TheRoyalCuckoo.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 4, 'Sloane SF', 'Stylish, multilevel club with DJs', '1525 Mission Street', '(415) 621-7007 ', '9-30 PM - 2 AM', 'http://www.sloanesf.com/', 'http://www.sloanesf.com/rsvp-sloane-guestlist.html', 'https://www.facebook.com/pages/Nightclub-Sloane-SF/221619711290958?rf=391728257520313', 'http://www.yelp.com/biz/sloane-san-francisco-2?osq=sloan+sf', 37.773725, -122.417352, 'TableCell-SloanSF.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 4, 'The Armory Club', 'Porn company Kink.com''s dimly lit cocktail bar resembles an upscale Victorian parlor.', '1799 Mission Street', '(415) 431-5300', '5 PM - 2 AM', 'http://www.armoryclub.com/', '', 'https://www.facebook.com/TheArmoryClub', 'http://www.yelp.com/biz/the-armory-club-san-francisco-2', 37.768415, -122.419761, 'TableCell-TheArmoryClub.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 5, 'Pilsner Inn', 'Gay Pub and sports bar with a garden patio', '225 Church St', '(415) 621-7058', '1 PM - 2 AM', 'http://www.pilsnerinn.com/', '', 'https://www.facebook.com/pages/Pilsner-Inn/110907268932249', 'http://www.yelp.com/biz/pilsner-inn-san-francisco', 37.767116, -122.428722, 'TableCell-PilsnerInn.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 5, 'Churchills', 'Cool, comfy spot for seasonal cocktails', '198 Church St', '((415) 570-9198', '4 PM - 2 AM', 'http://www.churchillsf.com/', '',  'https://www.facebook.com/Churchillsf', 'http://www.yelp.com/biz/churchill-san-francisco-3', 37.767898, -122.429199, 'TableCell-Churchill.png')
SET @BARID = @BARID + 1
--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 1, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')

-- Mission Hayes Street
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 6, 'Sugar Lounge', 'Intimate lounge with sweet specialty drinks & free happy-hour snacks in a sleek space with sofas', '377 Hayes Street', '(415) 255-7144', '4 PM - 2 AM', 'http://sugarloungesf.com', 'http://sugarloungesf.com/calendar/', 'https://www.facebook.com/SugarLoungeSF?ref=br_tf', 'http://www.yelp.com/biz/sugar-lounge-san-francisco', 37.776854, -122.422521, 'TableCell-SugarLounge.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 6, 'Brass Tacks', 'Laid-back, yet stylish bar pours cocktails, wines on tap & craft beers under snazzy light fixtures. Laid-back, yet stylish bar pours cocktails, wines on tap & craft beers under snazzy light fixtures.', '488 Hayes Street', 'PHONENUMBER', '2 PM - 2 AM', 'http://brasstackssf.com/', '', 'https://www.facebook.com/brasstackswines/timeline', 'http://www.yelp.com/biz/brass-tacks-san-francisco-2?osq=brasstrack', 37.776921, -122.424409, 'TableCell-BrassTracks.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 6, 'Noir Lounge', 'Swanky wine bar & brewpub with a vintage Jazz-era vibe screens old films throughout', '581 Hayes Street', '(415) 431-6647', '3 PM - 1 AM', 'http://noir-sf.com', 'http://noir-sf.com/#!calendar/', 'https://www.facebook.com/NoirLoungeSF', 'http://www.yelp.com/biz/noir-lounge-san-francisco', 37.776418, -122.425914, 'TableCell-NoirLounge.png')
SET @BARID = @BARID + 1
--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 6, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')

-- SoMa 11TH Street
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTSOMA, 10, 'DNA Lounge', 'Multilevel SoMa nightclub', '375 11TH Street', '(415) 626-1409', 'Open 24 Hours', 'http://www.dnalounge.com', 'http://www.dnalounge.com/calendar/2015/01.html', 'https://www.facebook.com/dnalounge?ref=br_tf', 'http://www.yelp.com/biz/dna-lounge-san-francisco', 37.771075, -122.412686, 'TableCell-DNALounge.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTSOMA, 10, 'Beatbox', 'Venue for live music & more in a loftlike warehouse space with exposed brick & a wood dance floor', '314 11th Street', '(415) 500-2675', ' PM - AM', 'http://beatboxsf.com', 'http://beatboxsf.com/events/', 'https://www.facebook.com/BeatBoxSF', 'http://www.yelp.com/biz/beatbox-san-francisco', 37.771506, -122.413926, 'TableCell-BeatBox.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTSOMA, 10, 'Slim''s', 'Musician-owned live music club', '333 11TH Street', '(415) 255-0333', ' 5 PM - 2 AM', 'http://www.slimspresents.com/', 'http://www.slimspresents.com/calendar/', 'https://www.facebook.com/slimssf/info?tab=overview', 'http://www.yelp.com/biz/slims-san-francisco-2', 37.771520, -122.413250, 'TableCell-SLIMS.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTSOMA, 10, 'Audio Nightclub', 'Funky ''70s style informs this club with 2 bars, a sunken dance floor & cutting-edge light & sound', '316 11th Street', '(415) 481-0556', ' 9-30 PM - 2 AM', 'http://www.audiosf.com/', 'http://www.audiosf.com/events/', 'https://www.facebook.com/audiosf/info?tab=overview', 'http://www.yelp.com/biz/audio-san-francisco?osq=audio+sf', 37.771425, -122.413750, 'TableCell-Audio.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTSOMA, 3, 'Local Edition', 'An extensive cocktail menu is offered at this underground lounge with a vintage newspaper theme.', '691 Market Street', '(415) 795-1375', '5 PM - 2 AM', 'http://localeditionsf.com/?special=1', '', 'https://www.facebook.com/localeditionsf', 'http://www.yelp.com/biz/local-edition-san-francisco', 37.787621, -122.402910, 'TableCell-LocalEdition.png')
SET @BARID = @BARID + 1
INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) 
	VALUES ( @BARID, @DISTRICTMISSION, 3, 'Sutter Station Tavern', 'Low-key fixture for drinks & pub grub', '554 Market Street', '(415) 434-4768', ' 7 AM - 2 AM', 'http://www.upcidersf.com/', 'http://www.upcidersf.com/private_events.php', 'https://www.facebook.com/pages/Sutter-Station-Tavern-Cocktail-Lounge/108891659145000', 'http://www.yelp.com/biz/sutter-station-san-francisco?osq=sutter+station+tavern', 37.789989, -122.400916, 'TableCell-SutterStationTavern.png')

--SET @BARID = @BARID + 1
--INSERT INTO Bar (BarId, DistrictId, StreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, CalendarUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( @BARID, 1, 'NAME', 'DESCRIP', 'ADDRESS', 'PHONENUMBER', ' PM - AM', 'WEBSITE', 'FB', '', 0, 0, 'TableCell-XXX.png')


SET IDENTITY_INSERT SFBars.dbo.Bar OFF

-- Dance Clubs
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @DANCECLUB, BarId FROM Bar WHERE Name IN (
'Audio Nightclub'
, 'Beatbox'
, 'Blondie''s Bar'
, 'DNA Lounge'
, 'El Rio'
, 'Sloane SF'
, 'The Showdown'
, 'Toad Hall'
, 'The Cafe'
, 'The Showdown'
)

-- Dive Bar
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @DIVEBAR, BarId FROM Bar WHERE Name IN (
'Elbo Room'
, 'Lucky 13'
)

-- Gay Bars
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @GAYBAR, BarId FROM Bar WHERE Name IN (
'440 Castro'
, 'Badlands'
, 'Beaux'
, 'Blackbird'
, 'QBar'
, 'Twin Peaks Tavern'
, 'Midnight Sun'
, 'The Mix'
, 'Toad Hall'
, 'Moby Dick'
, 'The Edge'
, 'Harvey''s'
)

-- Hipster
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @HIPSTER, BarId FROM Bar WHERE Name IN (
 'Casanova Lounge'
, 'Churchills'
, 'Lexington Club'
, 'Noir Lounge'
, 'The Royal Cuckoo'
, 'The Armory Club'
)

-- Karaoke
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @KARAOKE, BarId FROM Bar WHERE Name IN (
 'The Mint Karaoke'
)

-- Lounge
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @LOUNGE, BarId FROM Bar WHERE Name IN (
 'Casanova Lounge'
, 'Local Edition'
, 'Iron & Gold'
, 'Noir Lounge'
, 'Blackbird'
, 'Sugar Lounge'
)

-- Live Music
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @LIVEMUSIC, BarId FROM Bar WHERE Name IN (
'Amnesia'
, 'The Chapel'
, 'Slim''s'
)

-- Pub
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @PUB, BarId FROM Bar WHERE Name IN (
 'Pilsner Inn'
 , 'Sutter Station Tavern'
)

-- Sports Bar
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @SPORTSBAR, BarId FROM Bar WHERE Name IN (
 'Pilsner Inn'
)

-- Wine Bar
INSERT INTO BarTypeBar( BarTypeId, BarId)
SELECT @WINEBAR, BarId FROM Bar WHERE Name IN (
 'Blush! Wine Bar'
, 'Brass Tacks'
, 'Etcetera Wine Bar'
, 'Press Club'
, 'Noir Lounge'
)


--select * from Bar where Descrip like '%sport%'


