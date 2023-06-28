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