##SELECT amistats.id_amistat, usuaris.nom FROM amistats, usuaris WHERE amistats.usuari1_id = usuaris.id_usuari
##SELECT amistats.id_amistat, usuaris.nom FROM amistats, usuaris WHERE amistats.usuari2_id = usuaris.id_usuari;

SELECT amistats.id_amistat, usuaris.nom
FROM amistats, usuaris, fotos
WHERE (amistats.usuari1_id = usuaris.id_usuari);

## AND (amistats.usuari2_id = usuaris.id_usuari)
## usuaris.nom, fotos.url