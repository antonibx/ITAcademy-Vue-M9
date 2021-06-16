SELECT seients.id_seient, seients.avio_id, avions.capacitat, avions.model
FROM avions, seients
WHERE avions.id_avio = seients.avio_id;
