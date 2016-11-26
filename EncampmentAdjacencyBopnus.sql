-- G1 gold bonus to Encampments from adjacent camps and pastures
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES ('DISTRICT_ENCAMPMENT', 'Pasture_Gold');
INSERT INTO District_Adjacencies (DistrictType, YieldChangeId) VALUES ('DISTRICT_ENCAMPMENT', 'Camp_Gold');
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement)
  VALUES ("Pasture_Gold",	"LOC_DISTRICT_PASTURE_GOLD",	"YIELD_GOLD",	"1",	"1",	"IMPROVEMENT_PASTURE");
INSERT INTO Adjacency_YieldChanges (ID, Description, YieldType, YieldChange, TilesRequired, AdjacentImprovement)
    VALUES ("Camp_Gold",	"LOC_DISTRICT_PASTURE_GOLD",	"YIELD_GOLD",	"1",	"1",	"IMPROVEMENT_CAMP");
