SELECT b.Name, bt.Name FROM Bar b
INNER JOIN BarTypeBar btb ON b.BarId = btb.BarId
INNER JOIN BarType bt ON btb.BarTypeId = bt.BarTypeId

SELECT b.Name, d.Name FROM Bar b
INNER JOIN District d ON b.DistrictId = d.DistrictId
