########## DADES USUARIS #############
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("1", "Usuari A", "aa@prova.cat", "aa1234");
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("2", "Usuari B", "bb@prova.cat", "bb1234");
INSERT INTO usuaris (id_usuari, nom, correu, contrassenya) values ("3", "Usuari C", "cc@prova.cat", "cc1234");

######### DADES VIDEOS ################
INSERT INTO videos (id_video, titol, descripcio, url, identificador, usuari_id) values ("1", "Video 1", "Primer video de l'usuari B", "https://www.youtube.com/watch?v=12", "v1-uB", "2");
INSERT INTO videos (id_video, titol, descripcio, url, identificador, usuari_id) values ("2", "Video 2", "Segon video de l'usuari B", "https://www.youtube.com/watch?v=22", "v2-uB", "2");
INSERT INTO videos (id_video, titol, descripcio, url, identificador, usuari_id) values ("3", "Video 3", "Tercer video de l'usuari B", "https://www.youtube.com/watch?v=32", "v3-uB", "2");
INSERT INTO videos (id_video, titol, descripcio, url, identificador, usuari_id) values ("4", "Video 4", "Quart video de l'usuari B", "https://www.youtube.com/watch?v=43", "v4-uB", "2");
INSERT INTO videos (id_video, titol, descripcio, url, identificador, usuari_id) values ("5", "Video 5", "Primer video de l'usuari C", "https://www.youtube.com/watch?v=13", "v1-uC", "3");
INSERT INTO videos (id_video, titol, descripcio, url, identificador, usuari_id) values ("6", "Video 6", "Primer video de l'usuari A", "https://www.youtube.com/watch?v=11", "v1-uA", "1");