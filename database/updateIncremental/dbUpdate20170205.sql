use swgresource;
ALTER TABLE tResourceTypeCreature ADD COLUMN missionLevel SMALLINT;
ALTER TABLE tResourceTypeCreature ADD COLUMN galaxy SMALLINT DEFAULT 0 NOT NULL;
ALTER TABLE tResourceTypeCreature ADD COLUMN enteredBy VARCHAR(31);
ALTER TABLE tSchematic ADD COLUMN galaxy SMALLINT DEFAULT 0 NOT NULL;
ALTER TABLE tSchematic ADD COLUMN enteredBy VARCHAR(31);

ALTER TABLE tResourceTypeCreature DROP PRIMARY KEY;
ALTER TABLE tResourceTypeCreature ADD PRIMARY KEY (resourceType, speciesName, galaxy);
