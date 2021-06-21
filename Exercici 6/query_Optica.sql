SELECT t.id_compra, c.nom, e.nom, u.preu, m.nom, p.nom, a.carrer, c.recomanador_id
FROM compres AS t, clients AS c, empleats AS e, ulleres AS u, marques As m, proveidors as p, adreces as a
WHERE (t.client_id = c.id_client) AND (t.venedor_id = e.id_empleat) AND (t.ulleres_id = u.id_ulleres) AND (u.marca_id = m.id_marca) AND (m.proveidor_id = p.id_proveidor) AND (p.adreça_id = a.id_adreça);