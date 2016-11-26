-- add large culture bonus from goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, ModifierID)
  VALUES ('GOODYHUT_CULTURE', 'LOC_GOODYHUT_LARGE_CULTURE_DESCRIPTION', 'LOC_GOODYHUT_LARGE_CULTURE_DESCRIPTION', '25', 'GOODY_CULTURE_LARGE_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'MODIFIER_PLAYER_GRANT_YIELD', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'YieldType', 'ARGTYPE_IDENTITY', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'Amount', 'ARGTYPE_IDENTITY', '100');

-- update the weights for the goody huts
UPDATE GoodyHutSubTypes SET Weight = '15' WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '0' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_EXPERIENCE';
UPDATE GoodyHutSubTypes SET Weight = '0' WHERE SubTypeGoodyHut = 'GOODYHUT_HEAL';
UPDATE GoodyHutSubTypes SET Weight = '35' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_TRADER';
UPDATE GoodyHutSubTypes SET Weight = '35' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_RELIC';
UPDATE GoodyHutSubTypes SET Weight = '25' WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '35' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH';
UPDATE GoodyHutSubTypes SET Weight = '35' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_UPGRADE';
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SETTLER';

-- change goodies to be one to 25 tiles, not 128
UPDATE Improvements SET TilesPerGoody = '25' WHERE ImprovementType = 'IMPROVEMENT_GOODY_HUT';
