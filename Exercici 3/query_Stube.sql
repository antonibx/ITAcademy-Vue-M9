SELECT usuaris.id_usuari, usuaris.nom, videos.titol, videos.descripcio
FROM usuaris, videos
WHERE usuaris.id_usuari = videos.usuari_id;
