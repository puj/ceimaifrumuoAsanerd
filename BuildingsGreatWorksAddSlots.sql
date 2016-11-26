-- change de number of slots from 1 to 6 in the palace
UPDATE Buildings_GreatWorks SET NumSlots = '6' WHERE BuildingType = 'BUILDING_PALACE';

-- add great works slot to certain buildings
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_FACTORY', 'GREATWORKSLOT_PALACE', '1');
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_SHIPYARD', 'GREATWORKSLOT_PALACE', '1');
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_ZOO', 'GREATWORKSLOT_PALACE', '1');
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_STABLE', 'GREATWORKSLOT_PALACE', '1');
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_BANK', 'GREATWORKSLOT_PALACE', '1');
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_UNIVERSITY', 'GREATWORKSLOT_PALACE', '1');
INSERT INTO Buildings_GreatWorks (BuildingType, GreatWorkSlotType, NumSlots)
  VALUES ('BUILDING_AIRPORT', 'GREATWORKSLOT_PALACE', '1');
