SELECT factures.id_factura, usuaris.nom, llibres.titol, autors.nom, llibres.preu
FROM factures, usuaris, llibres, autors
WHERE (factures.usuari_id = usuaris.id_usuari) AND (factures.llibre_id = llibres.id_llibre) AND (llibres.autor_id = autors.id_autor);
