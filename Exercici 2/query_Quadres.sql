SELECT compradors.nom, compradors.cognom, compradors.DNI, quadres.id_quadre, quadres.preu, quadres.autor
FROM quadres, compradors
WHERE quadres.id_quadre = compradors.quadre_id;
