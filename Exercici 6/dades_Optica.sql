########## DADES ULLERES #############
INSERT INTO ulleres (id_ulleres, marca_id, montura_tipus, montura_color, esquerra_graduacio, esquerra_color, dreta_graduacio, dreta_color, preu) values ("1", "1", "flotant", "verd", "3", "transparent", "1", "transparent", "100");
INSERT INTO ulleres (id_ulleres, marca_id, montura_tipus, montura_color, esquerra_graduacio, esquerra_color, dreta_graduacio, dreta_color, preu) values ("2", "2", "pasta", "groc", "2", "transparent", "2", "transparent", "200");

########## DADES MARQUES #############
INSERT INTO marques (id_marca, nom, proveidor_id) values ("1", "RayBan", "1");
INSERT INTO marques (id_marca, nom, proveidor_id) values ("2", "Afflelou", "2");

######### DADES PROVEIDORS ################
INSERT INTO proveidors (id_proveidor, nom, adreça_id, telefon, fax) values ("1", "GafasBaratas.com", "1", "931112233", "931112233");
INSERT INTO proveidors (id_proveidor, nom, adreça_id, telefon, fax) values ("2", "Cul de Got", "2", "932223344", "932223344");

########## DADES ADRECES #############
INSERT INTO adreces (id_adreça, carrer, numero, pis, porta, ciutat, codi_postal, pais) values ("1", "Compte Borras", "3", "2n", "A", "Barcelona", "08001", "Catalunya");
INSERT INTO adreces (id_adreça, carrer, numero, pis, porta, ciutat, codi_postal, pais) values ("2", "Gran Via", "345", "1r", "C", "Girona", "08002", "Catalunya");

########## DADES CLIENTS #############
INSERT INTO clients (id_client, nom, direccio_id, telefon, correu, registre, recomanador_id) values ("1", "Joan", "1", "930000000", "joan@correu.cat", "10/06/2021", "2");
INSERT INTO clients (id_client, nom, direccio_id, telefon, correu, registre, recomanador_id) values ("2", "Marc", "2", "930000001", "marc@correu.cat", "21/05/2021", "1");

######### DADES EMPLEATS ################
INSERT INTO empleats (id_empleat, nom, posicio, sou) values ("1", "Manel", "Becari", "100");
INSERT INTO empleats (id_empleat, nom, posicio, sou) values ("2", "Maria", "Optometrista", "2000");

######### DADES COMPRES ################
INSERT INTO compres (id_compra, ulleres_id, client_id, venedor_id) values ("1", "1", "1", "1");
INSERT INTO compres (id_compra, ulleres_id, client_id, venedor_id) values ("2", "2", "2", "2");
