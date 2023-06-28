/*EX1*/
SELECT * FROM lpecom_livres;

/*EX2*/
SELECT * FROM lpecom_livres WHERE prix > 20;

/*EX3*/
SELECT * FROM lpecom_livres ORDER BY prix DESC;

/*EX4*/
SELECT MAX(prix) AS prix_max FROM lpecom_livres;

/*EX5*/
SELECT * FROM lpecom_livres WHERE prix >= 20 AND prix <= 22;

/*EX6*/
SELECT * FROM lpecom_livres WHERE isbn_10 <> '2092589547';

/*EX7*/
SELECT DISTINCT e.id_etudiant
FROM lpecom_etudiants e
INNER JOIN lpecom_examens ex ON e.id_etudiant = ex.id_etudiant;

/*EX8*/
SELECT COUNT(DISTINCT e.id_etudiant) AS nombre_etudiants
FROM lpecom_etudiants e
INNER JOIN lpecom_examens ex ON e.id_etudiant = ex.id_etudiant;

/*EX9*/
SELECT AVG(note) AS moyenne_exam
FROM lpecom_examens
WHERE id_examen = 45;

/*EX10*/
SELECT MAX(note) AS meilleure_note
FROM lpecom_examens
WHERE id_examen = 87;

/*EX11*/
SELECT DISTINCT e.id_etudiant
FROM lpecom_etudiants e
INNER JOIN lpecom_examens ex ON e.id_etudiant = ex.id_etudiant
WHERE (ex.id_examen = 45 AND ex.note > 11) OR (ex.id_examen = 87 AND ex.note > 12);

/*EX12*/
SELECT ex.*, e.prenom, e.nom
FROM lpecom_examens ex
INNER JOIN lpecom_etudiants e ON ex.id_etudiant = e.id_etudiant;

/*EX13*/
SELECT ex.*, e.prenom, e.nom
FROM lpecom_examens ex
INNER JOIN lpecom_etudiants e ON ex.id_etudiant = e.id_etudiant
WHERE e.id_etudiant IS NOT NULL;

/*EX14*/
SELECT e.nom, e.prenom, AVG(ex.note) AS moyenne
FROM lpecom_etudiants e
INNER JOIN lpecom_examens ex ON e.id_etudiant = ex.id_etudiant
WHERE e.id_etudiant = 30
GROUP BY e.nom, e.prenom;

/*EX15*/
SELECT ex.*, e.prenom, e.nom
FROM lpecom_examens ex
INNER JOIN lpecom_etudiants e ON ex.id_etudiant = e.id_etudiant
ORDER BY ex.note DESC
LIMIT 3;
