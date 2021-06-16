SELECT amistats.id_amistat, usuaris.nom, amistats.usuari2_id
FROM amistats, usuaris, fotos
WHERE (amistats.usuari1_id = usuaris.id_usuari);