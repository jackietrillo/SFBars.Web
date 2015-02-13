-- Bars and their bar type
SELECT b.Name, bt.Name FROM Bar b
INNER JOIN BarTypeBar btb ON b.BarId = btb.BarId
INNER JOIN BarType bt ON btb.BarTypeId = bt.BarTypeId

-- Bars and their district
SELECT b.Name, d.Name AS District FROM Bar b
INNER JOIN District d ON b.DistrictId = d.DistrictId

-- Bars that are not mapped to a bar type
SELECT * FROM Bar WHERE BarId NOT IN (SELECT BarId FROM BarTypeBar)

-- Bars that do not have a music type
SELECT * FROM Bar WHERE MusicTypeId IS NULL OR MusicTypeId NOT IN (SELECT MusicTypeId FROM MusicType)


SELECT * FROM TopList
SELECT * FROM MusicType
SELECT * FROM [Event]
SELECT * FROM [Party]
