########## DADES AUTORS #############
INSERT INTO autors (id_autor, nom, direccio, num_llibres) values ("1", "Autor 1", "Carrer de Prova 1", "1");
INSERT INTO autors (id_autor, nom, direccio, num_llibres) values ("2", "Autor 2", "Carrer de Prova 2", "2");

######### DADES LLIBRES ################
INSERT INTO llibres (id_llibre, titol, disponibles, preu, autor_id) values ("1", "Llibre 1", "5", "30", "1");
INSERT INTO llibres (id_llibre, titol, disponibles, preu, autor_id) values ("2", "Llibre 2", "0", "50", "1");
INSERT INTO llibres (id_llibre, titol, disponibles, preu, autor_id) values ("3", "Llibre 3", "3", "40", "2");
INSERT INTO llibres (id_llibre, titol, disponibles, preu, autor_id) values ("4", "Llibre 4", "9", "20", "2");

########## DADES USUARIS #############
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("1", "Usuari A", "aa@prova.cat", "aa1234");
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("2", "Usuari B", "bb@prova.cat", "bb1234");

######### DADES FACTURES ################
INSERT INTO factures (id_factura, usuari_id, llibre_id) values ("1", "1", "3");
INSERT INTO factures (id_factura, usuari_id, llibre_id) values ("2", "2", "1");
