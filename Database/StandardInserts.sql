DELETE FROM SFBar
DELETE FROM SFStreet
GO

SET IDENTITY_INSERT SFBars.dbo.SFStreet ON

INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 1, 'Castro Street', '', 37.761842, -122.435299, 'TableCell-CastroStreet.png')
INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 2, 'Valencia Street', '', 37.763302, -122.421211, 'TableCell-ValenciaStreet.png')
INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 3, 'Market Street', '', 37.763284, -122.434163, 'TableCell-MarketStreet.png')
INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 4, 'Mission Street', '', 37.746857, -122.419400, 'TableCell-MissionStreet.png')
INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 5, 'Church Steet', '', 37.767135, -122.428704, 'TableCell-ChurchStreet.png')
INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 6, 'Hayes Street', '', 37.761842, -122.435299, 'TableCell-HayesStreet.png')
INSERT INTO SFStreet (SFStreetId, Name, Descrip, Latitude, Longitude, ImageUrl) VALUES ( 7, 'Haight Street', '', 37.761842, -122.435299, 'TableCell-HaightStreet.png')

SET IDENTITY_INSERT SFBars.dbo.SFStreet OFF

SET IDENTITY_INSERT SFBars.dbo.SFBar ON

INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 1, 1, 'Badlands', 'Dance Club', '4121 18th St', '(415) 626-9320', '5 PM - 2 AM', 'http://www.sfbadlands.com', 'https://www.facebook.com/pages/Badlands/158245524202434', '', 37.760938, -122.435424, 'TableCell-Badlands.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 2, 1, 'The Mix', 'Bar', '4086 18th St', '(415) 431-8616', '5 PM - 2 AM', 'http://www.sfmixbar.com', '', '', 37.761399, -122.434498, 'TableCell-TheMix.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 3, 1, 'QBar', 'Castro gay bar with a young male crowd', '456 Castro St', '(415) 864-2877', '5 PM - 2 AM', 'http://www.qbarsf.com', 'https://www.facebook.com/QbarSF', '', 37.761842, -122.435299, 'TableCell-QBar.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 4, 1, 'Toad Hall', 'Dance Club', '4146 18th St', '(415) 558-0893', '5 PM - 2 AM', 'http://www.toadhallbar.com', 'https://www.facebook.com/ToadHallBar', '', 37.761035, -122.435747, 'TableCell-ToadHall.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 5, 1, '440 Castro', 'Wine Bar', '440 Castro St', '(415) 621-8732', '5 PM - 2 AM', 'http://www.440castro.com', 'http://www.facebook.com/440castro', '', 37.761903, -122.435063, 'TableCell-440Castro.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 6, 1, 'Moby Dick', 'Storied Bar', '4049 18th St', '(415) 861-1199', '5 PM - 2 AM', 'http://www.mobydicksf.com/', 'https://www.facebook.com/MobyDickBar', '', 37.761506, -122.435219, 'TableCell-MobyDick.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 7, 1, 'Midnight Sun', 'Video Bar & longtime Castro fixture', '4067 18th St', '(415) 861-4186', '5 PM - 2 AM', 'http://www.midnightsunsf.com/', 'https://www.facebook.com/midnightsunsf', '', 37.761506, -122.435219, 'TableCell-MidnightSun.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 8, 1, 'Blush! Wine Bar', 'Dozens of vintages plus bistro fare', '476 Castro St', '(415) 621-2811', '5 PM - 2 AM', 'http://www.blushwinebar.com', '', '', 37.761506, -122.435219, 'TableCell-Blush.png')

INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 9, 2, 'Elbo Room', 'Bar/Club with dancing, drinks and music', '647 Valencia St', '(415) 552-7788', '5 PM - 2 AM', 'http://www.elbo.com/', '', '', 37.763302, -122.421211, 'TableCell-ElboRoom.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 10, 2, 'The Chapel', 'Live Music venue with full bar & food', '777 Valencia St', '(415) 551-5157', '7 PM - 2 AM', 'http://www.thechapelsf.com/', 'https://www.facebook.com/TheChapelSF', '', 37.760584, -122.421198, 'TableCell-TheChapel.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 11, 2, 'Amnesia', 'Club revered for big range of live music', '853 Valencia St', '(415) 970-0012', '5 PM - 2 AM', 'http://amnesiathebar.com/newp/calendar/', 'https://www.facebook.com/amnesiaSF', '', 37.759422, -122.421158, 'TableCell-Amnesia.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 12, 2, 'Lexington Club', 'Lesbian bar with pool & jukebox or DJs', '3464 19th St', '(415) 863-2052', '3 PM - 2 AM', 'http://lexingtonclub.com/', 'https://www.facebook.com/lexingtonclub.sf', 'http://www.yelp.com/biz/lexington-club-san-francisco    ', 37.760366, -122.420883, 'TableCell-LexingtonClub.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 13, 2, 'Casanova Lounge', 'Hipster-friendly lounge with funky decor', '527 Valencia St', '(415) 863-9328', '4 PM - 2 AM', 'https://www.facebook.com/casanovaloungesf', 'https://www.facebook.com/casanovaloungesf', '', 37.764405, -122.421655, 'TableCell-CasanovaLounge.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 14, 2, 'Blondie''s Bar', 'Loud music and lots of booze plus patio', '540 Valencia St', '(415) 864-2419', '4 PM - 2 AM', 'http://www.blondiesbarsf.com', 'https://www.facebook.com/blondiesbarsf', '', 37.764254, -122.422036, 'TableCell-BlondiesBar.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 15, 2, 'Etcetera Wine Bar', 'Wine Bar & French Bites', '795 Valencia St', '(415) 926-5477', '5 PM - 1:30 AM', 'http://www.etceterawinebar.com/', 'https://www.facebook.com/pages/Etcetera-Wine-Bar/193426027388135', '', 37.760300, -122.421328, 'TableCell-Etcetera.png')

INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 16, 3, 'The Cafe', 'Dance Club with DJs and theme events', '2369 Market St', '(415) 861-3846', '5 PM - 2 AM', 'http://www.cafesf.com/', 'https://www.facebook.com/TheCafeSF', '', 37.763284, -122.434163, 'TableCell-TheCafe.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 17, 3, 'The Mint Karaoke', 'Legendary Karaoke bar', '1942 Market St', '(415) 626-4726', '2:30 PM - 2 AM', 'http://www.themint.net/', 'https://www.facebook.com/pages/The-Mint-Karaoke-Lounge/107352429301675', '', 37.770308, -122.425858, 'TableCell-TheMint.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 18, 3, 'Beaux', 'Gay bar with dance music all night', '2344 Market St', '(415) 658-7712', '4:00 PM - 2 AM', 'http://www.beauxsf.com/', 'https://www.facebook.com/beauxsf', '', 37.763682, -122.434288, 'TableCell-Beaux.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 19, 3, 'Lucky 13', 'Raucous rock ''n'' roll bar', '2140 Market St', '(415) 487-1313', '11:00 AM - 2 AM', 'https://www.facebook.com/Lucky13SF', 'https://www.facebook.com/Lucky13SF', 'http://www.yelp.com/biz/lucky-13-san-francisco', 37.763682, -122.434288, 'TableCell-Lucky13.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 20, 3, 'Blackbird', 'Inventive drinks in refined, loungey bar', '2124 Market St', '(415) 503-0630', '2 PM - 2 AM', 'http://www.blackbirdbar.com', 'https://www.facebook.com/BlackBirdSF', 'http://www.yelp.com/biz/blackbird-san-francisco', 37.767322, -122.429612, 'TableCell-Blackbird.png')

INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 21, 4, 'El Rio', 'Gay friendly neighborhood bar', '3158 Mission St', '(415) 282-3325', '5 PM - 2 AM', 'http://www.elriosf.com/', 'https://www.facebook.com/elriosf', '', 37.746857, -122.419400, 'TableCell-ElRio.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 22, 4, 'Iron & Gold', 'Cozy cocktail bar with a vintage vibe', '3187 Mission St', '(415) 824-1447', '5 PM - 2 AM', 'http://www.ironandgoldsf.com/', 'https://www.facebook.com/pages/Iron-Gold/148296501945286', '', 37.745733, -122.419252, 'TableCell-ElRio.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 23, 4, 'Iron & Gold', 'Cozy cocktail bar with a vintage vibe', '3187 Mission St', '(415) 824-1447', '5 PM - 2 AM', 'http://www.ironandgoldsf.com/', 'https://www.facebook.com/pages/Iron-Gold/148296501945286', '', 37.745733, -122.419252, 'TableCell-ElRio.png')

INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 24, 5, 'Pilsner Inn', 'Gay Pub and sports bar with a garden patio', '225 Church St', '(415) 621-7058', '', 'http://www.pilsnerinn.com/', 'https://www.facebook.com/pages/Pilsner-Inn/110907268932249', '', 37.767135, -122.428704, 'TableCell-PilsnerInn.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 25, 5, 'Churchill', 'Cool, comfy spot for seasonal cocktails', '198 Church St', '((415) 570-9198', '', 'http://www.churchillsf.com/', 'https://www.facebook.com/Churchillsf', 'http://www.yelp.com/biz/churchill-san-francisco-3', 37.767898, -122.429197, 'TableCell-Churchill.png')

INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 26, 6, 'QBar', 'Dance Club', '456 Castro Street, San Francisco, CA 94114', '(415) 864-2877', '', 'http://www.qbar.com', 'https://www.facebook.com/QbarSF', '', 37.761842, -122.435299, 'TableCell-QBar.png')
INSERT INTO SFBar (SFBarId, SFStreetId, Name, Descrip, Address, Phone, Hours, WebsiteUrl, FacebookUrl, YelpUrl, Latitude, Longitude, ImageUrl) VALUES ( 27, 7, 'QBar', 'Dance Club', '456 Castro Street, San Francisco, CA 94114', '(415) 864-2877', '', 'http://www.qbar.com', 'https://www.facebook.com/QbarSF', '', 37.761842, -122.435299, 'TableCell-QBar.png')

SET IDENTITY_INSERT SFBars.dbo.SFBar OFF
GO