-- add large culture bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_CULTURE', 'GOODY_LARGE_CULTURE', 'LOC_GOODYHUT_LARGE_CULTURE_DESCRIPTION', '40', 'GOODY_CULTURE_LARGE_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'MODIFIER_PLAYER_GRANT_YIELD', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'YieldType', 'ARGTYPE_IDENTITY', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'Amount', 'ARGTYPE_IDENTITY', '100');

-- add spy bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID, RequiresUnit)
  VALUES ('GOODYHUT_MILITARY', 'GOODY_GRANT_SPY', 'LOC_GOODYHUT_MILITARY_GRANT_SPY', '5', 'GOODY_MILITARY_GRANT_SPY', '1');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_MILITARY_GRANT_SPY', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_SPY', 'UnitType', 'ARGTYPE_IDENTITY', 'UNIT_SPY');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_SPY', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add great general bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID, RequiresUnit)
  VALUES ('GOODYHUT_MILITARY', 'GOODY_GRANT_GREAT_GENERAL', 'LOC_GOODYHUT_MILITARY_GRANT_GREAT_GENERAL', '5', 'GOODY_MILITARY_GRANT_GREAT_GENERAL', '1');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_MILITARY_GRANT_GREAT_GENERAL', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_GREAT_GENERAL', 'UnitType', 'ARGTYPE_IDENTITY', 'UNIT_MODERN_ART');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_GREAT_GENERAL', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add scynthian horse archer bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID, RequiresUnit)
  VALUES ('GOODYHUT_MILITARY', 'GOODY_GRANT_SCYTHIAN_HORSE_ARCHER', 'LOC_GOODYHUT_MILITARY_GRANT_SCYTHIAN_HORSE_ARCHER', '10', 'GOODY_MILITARY_GRANT_SCYTHIAN_HORSE_ARCHER', '1');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_MILITARY_GRANT_SCYTHIAN_HORSE_ARCHER', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_IN_NEAREST_CITY', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_SCYTHIAN_HORSE_ARCHER', 'UnitType', 'ARGTYPE_IDENTITY', 'UNIT_SCYTHIAN_HORSE_ARCHER');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_SCYTHIAN_HORSE_ARCHER', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add great merchant points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_GOLD', 'GOODY_GREAT_MERCHANT_POINTS', 'LOC_GOODYHUT_GOLD_GREAT_MERCHANT_POINTS', '15', 'GOODY_GOLD_GREAT_MERCHANT_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_GOLD_GREAT_MERCHANT_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GOLD_GREAT_MERCHANT_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_MERCHANT');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GOLD_GREAT_MERCHANT_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '10');

-- add great engineer points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_MILITARY', 'GOODY_GREAT_ENGINEER_POINTS', 'LOC_GOODYHUT_GREAT_ENGINEER_POINTS', '15', 'GOODY_GREAT_ENGINEER_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_GREAT_ENGINEER_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GREAT_ENGINEER_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_ENGINEER');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GREAT_ENGINEER_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '10');

-- add great prophet points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_FAITH', 'GOODY_GREAT_PROPHET_POINTS', 'LOC_GOODYHUT_FAITH_GREAT_PROPHET_POINTS', '10', 'GOODY_FAITH_GREAT_PROPHET_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_FAITH_GREAT_PROPHET_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_FAITH_GREAT_PROPHET_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_PROPHET');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_FAITH_GREAT_PROPHET_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '20');

-- update the weights for the goody huts
UPDATE GoodyHutSubTypes SET Weight = '15' WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '5' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_EXPERIENCE';
UPDATE GoodyHutSubTypes SET Weight = '0' WHERE SubTypeGoodyHut = 'GOODYHUT_HEAL';
UPDATE GoodyHutSubTypes SET Weight = '20' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_TRADER';
UPDATE GoodyHutSubTypes SET Weight = '25' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_RELIC';
UPDATE GoodyHutSubTypes SET Weight = '15' WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH';
UPDATE GoodyHutSubTypes SET Weight = '40' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_UPGRADE';
UPDATE GoodyHutSubTypes SET Weight = '20' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SETTLER';

-- change goodies to be one to 25 tiles, not 128
UPDATE Improvements SET TilesPerGoody = '105' WHERE ImprovementType = 'IMPROVEMENT_GOODY_HUT';
