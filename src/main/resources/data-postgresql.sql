
INSERT INTO CATEGORY (NAME) VALUES ('Comment faire si');
INSERT INTO CATEGORY (NAME) VALUES ('Procédure administrative');
INSERT INTO CATEGORY (NAME) VALUES ('Autorisation');
INSERT INTO CATEGORY (NAME) VALUES ('Permis');

INSERT INTO TARGET (NAME) VALUES ('Particuliers');
INSERT INTO TARGET (NAME) VALUES ('Associations');
INSERT INTO TARGET (NAME) VALUES ('Entreprises');

INSERT INTO STATUT (NAME) VALUES ('draft');
INSERT INTO STATUT (NAME) VALUES ('published');

INSERT INTO PROCEDURE (TITLE, DESCRIPTION, VERSION, CATEGORY_ID, TARGET_ID, STATUT_ID) VALUES (
  'Créer une association',
  'Comment faire si je veux créer une association',
  '1.0',
  1,
  2,
  1
);

INSERT INTO INPUT (PLACEMENT, NAME, COUNT) VALUES (
  1,
  'Un numéro Tahiti',
  1
);

INSERT INTO INPUT (PLACEMENT, NAME, COUNT) VALUES (
  2,
  'Un statut',
  1
);

INSERT INTO PROCEDURE_INPUT (PROCEDURE_ID, INPUT_ID) VALUES (1,1);
INSERT INTO PROCEDURE_INPUT (PROCEDURE_ID, INPUT_ID) VALUES (1,2);

INSERT INTO STEP (PLACEMENT, TITLE, DESCRIPTION) VALUES (
  1,
  'Rédaction des status',
  'Rédiger les statuts'
);

INSERT INTO STEP (PLACEMENT, TITLE, DESCRIPTION) VALUES (
  2,
  'Déclaration initiale',
  'au JOPF'
);

INSERT INTO STEP (PLACEMENT, TITLE, DESCRIPTION) VALUES (
  3,
  'Immatriculation',
  'numéro tahiti'
);

INSERT INTO PROCEDURE_STEP (PROCEDURE_ID, STEP_ID) VALUES (1,1);
INSERT INTO PROCEDURE_STEP (PROCEDURE_ID, STEP_ID) VALUES (1,2);
INSERT INTO PROCEDURE_STEP (PROCEDURE_ID, STEP_ID) VALUES (1,3);

INSERT INTO OUTPUT (TITLE, DESCRIPTION) VALUES (
  'Créer une association',
  'A la fin de cette procédure, votre association est créée.'
);

INSERT INTO PROCEDURE_OUTPUT (PROCEDURE_ID, OUTPUT_ID) VALUES (1,1);
