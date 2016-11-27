-- add large culture bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_CULTURE', 'GOODYHUT_LARGE_CULTURE', 'LARGE CULTURE BONUS 100', '40', 'GOODY_CULTURE_LARGE_MODIFIER');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'MODIFIER_PLAYER_GRANT_YIELD', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'YieldType', 'ARGTYPE_IDENTITY', 'YIELD_CULTURE');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_CULTURE_LARGE_MODIFIER', 'Amount', 'ARGTYPE_IDENTITY', '40');

-- add spy bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_GOLD', 'GOODYHUT_GRANT_SPY', 'NEW SPY IN YOUR CITY', '5', 'GOODYHUT_GOLD_GRANT_SPY');
INSERT INTO Modifiers (ModifierId, ModifierType)
  VALUES ('GOODYHUT_GOLD_GRANT_SPY', 'MODIFIER_PLAYER_GRANT_SPY');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
   VALUES ('GOODYHUT_GOLD_GRANT_SPY', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add ranged unit bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID, RequiresUnit)
  VALUES ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_RANGED_UNIT', 'NEW RANGED UNIT IN YOUR CITY', '10', 'GOODY_MILITARY_GRANT_RANGED_UNIT', '1');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_MILITARY_GRANT_RANGED_UNIT', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_RANGED_UNIT', 'UnitPromotionClassType', 'ARGTYPE_IDENTITY', 'PROMOTION_CLASS_RANGED');

-- add melee unit bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID, RequiresUnit)
  VALUES ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_MELEE_UNIT', 'NEW MELEE UNIT IN YOUR CITY', '10', 'GOODY_MILITARY_GRANT_MELEE_UNIT', '1');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_MILITARY_GRANT_MELEE_UNIT', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_MELEE_UNIT', 'UnitPromotionClassType', 'ARGTYPE_IDENTITY', 'PROMOTION_CLASS_MELEE');

-- add light cavalry unit bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID, RequiresUnit)
  VALUES ('GOODYHUT_MILITARY', 'GOODYHUT_GRANT_LIGHT_CAVALRY_UNIT', 'NEW CAVALRY UNIT IN YOUR CITY', '10', 'GOODY_MILITARY_GRANT_LIGHT_CAVALRY_UNIT', '1');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_MILITARY_GRANT_LIGHT_CAVALRY_UNIT', 'MODIFIER_SINGLE_CITY_GRANT_UNIT_BY_CLASS_IN_NEAREST_CITY', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_MILITARY_GRANT_LIGHT_CAVALRY_UNIT', 'UnitPromotionClassType', 'ARGTYPE_IDENTITY', 'PROMOTION_CLASS_LIGHT_CAVALRY');

-- add great merchant points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_GOLD', 'GOODYHUT_GREAT_MERCHANT_POINTS', '1 GREAT MERCHANT POINTS', '5', 'GOODY_GOLD_GREAT_MERCHANT_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_GOLD_GREAT_MERCHANT_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GOLD_GREAT_MERCHANT_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_MERCHANT');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GOLD_GREAT_MERCHANT_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add great engineer points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_MILITARY', 'GOODYHUT_GREAT_ENGINEER_POINTS', '1 GREAT ENGINEER POINTS', '10', 'GOODY_GREAT_ENGINEER_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_GREAT_ENGINEER_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GREAT_ENGINEER_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_ENGINEER');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GREAT_ENGINEER_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add great general points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_MILITARY', 'GOODYHUT_GREAT_GENERAL_POINTS', '1 GREAT GENERAL POINTS', '5', 'GOODY_GREAT_GENERAL_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_GREAT_GENERAL_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GREAT_GENERAL_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_GENERAL');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_GREAT_GENERAL_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- add great prophet points bonus to goody huts
INSERT INTO GoodyHutSubTypes (GoodyHut, SubTypeGoodyHut, Description, Weight, ModifierID)
  VALUES ('GOODYHUT_FAITH', 'GOODYHUT_GREAT_PROPHET_POINTS', '1 GREAT PROPHET POINTS', '5', 'GOODY_FAITH_GREAT_PROPHET_POINTS');
INSERT INTO Modifiers (ModifierId, ModifierType, RunOnce, Permanent)
  VALUES ('GOODY_FAITH_GREAT_PROPHET_POINTS', 'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS', '1', '1');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_FAITH_GREAT_PROPHET_POINTS', 'GreatPersonClassType', 'ARGTYPE_IDENTITY', 'GREAT_PERSON_CLASS_PROPHET');
INSERT INTO ModifierArguments (ModifierId, Name, Type, Value)
  VALUES ('GOODY_FAITH_GREAT_PROPHET_POINTS', 'Amount', 'ARGTYPE_IDENTITY', '1');

-- Culture
UPDATE GoodyHutSubTypes SET Weight = '20' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_RELIC';
UPDATE GoodyHutSubTypes SET Weight = '15' WHERE SubTypeGoodyHut = 'GOODYHUT_TWO_CIVIC_BOOSTS';
UPDATE GoodyHutSubTypes SET Weight = '45' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_CIVIC_BOOST';
UPDATE GoodyHutSubTypes SET Weight = '20' WHERE SubTypeGoodyHut = 'GOODHUT_LARGE_CULTURE';

-- Faith
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_FAITH';
UPDATE GoodyHutSubTypes SET Weight = '5' WHERE SubTypeGoodyHut = 'GOODHUT_GREAT_PROPHET_POINTS';

-- Gold
UPDATE GoodyHutSubTypes SET Weight = '55' WHERE SubTypeGoodyHut = 'GOODYHUT_LARGE_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '25' WHERE SubTypeGoodyHut = 'GOODYHUT_MEDIUM_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODYHUT_SMALL_GOLD';
UPDATE GoodyHutSubTypes SET Weight = '5' WHERE SubTypeGoodyHut = 'GOODHUT_GREAT_MERCHANT_POINTS';
UPDATE GoodyHutSubTypes SET Weight = '5' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SPY';

-- Military
UPDATE GoodyHutSubTypes SET Weight = '15' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SCOUT';
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_UPGRADE';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_EXPERIENCE';
UPDATE GoodyHutSubTypes SET Weight = '0' WHERE SubTypeGoodyHut = 'GOODYHUT_HEAL';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODHUT_GRANT_RANGED_UNIT';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODHUT_GRANT_MELEE_UNIT';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODHUT_GRANT_LIGHT_CAVALRY_UNIT';
UPDATE GoodyHutSubTypes SET Weight = '5' WHERE SubTypeGoodyHut = 'GOODHUT_GREAT_ENGINEER_POINTS';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODHUT_GREAT_GENERAL_POINTS';

-- Science
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH';
UPDATE GoodyHutSubTypes SET Weight = '30' WHERE SubTypeGoodyHut = 'GOODYHUT_TWO_TECH_BOOSTS';
UPDATE GoodyHutSubTypes SET Weight = '40' WHERE SubTypeGoodyHut = 'GOODYHUT_ONE_TECH_BOOST';

-- Survivors
UPDATE GoodyHutSubTypes SET Weight = '45' WHERE SubTypeGoodyHut = 'GOODYHUT_ADD_POP';
UPDATE GoodyHutSubTypes SET Weight = '25' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_BUILDER';
UPDATE GoodyHutSubTypes SET Weight = '10' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_TRADER';
UPDATE GoodyHutSubTypes SET Weight = '15' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SETTLER';
UPDATE GoodyHutSubTypes SET Weight = '5' WHERE SubTypeGoodyHut = 'GOODYHUT_GRANT_SPY';


-- change goody huts frequency, initially it was 128
UPDATE Improvements SET TilesPerGoody = '105' WHERE ImprovementType = 'IMPROVEMENT_GOODY_HUT';

-- Recalibrate the weights in the goodhut table
UPDATE GoodyHuts SET weight = (SELECT SUM(Weight)   FROM GoodyHutSubTypes   WHERE GoodyHuts.GoodyHutType = GoodyHut GROUP BY GoodyHut);
