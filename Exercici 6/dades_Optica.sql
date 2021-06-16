########## DADES USUARIS #############
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("1", "Usuari A", "aa@prova.cat", "aa1234");
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("2", "Usuari B", "bb@prova.cat", "bb1234");
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("3", "Usuari C", "cc@prova.cat", "cc1234");
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("4", "Usuari D", "dd@prova.cat", "dd1234");

########## DADES FOTOS #############
INSERT INTO fotos (id_foto, ubicacio, url, usuari_id) values ("1", "Barcelona", "http://fotos.cat/1", "2");
INSERT INTO fotos (id_foto, ubicacio, url, usuari_id) values ("2", "Girona", "http://fotos.cat/1", "2");

######### DADES AMISTATS ################
INSERT INTO amistats (id_amistat, usuari1_id, usuari2_id) values ("1", "2", "3");
INSERT INTO amistats (id_amistat, usuari1_id, usuari2_id) values ("2", "1", "2");
