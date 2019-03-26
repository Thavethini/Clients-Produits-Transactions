USE libraire;
SOURCE C:\Users\x\Documents\SQL\ClientsProduitsTransactions-db\libraire_schema.sql
SOURCE C:\Users\x\Documents\SQL\ClientsProduitsTransactions-db\libraire_data.sql

SELECT * FROM customers WHERE client_id not like "c\_%";

SELECT COUNT(*), categ FROM products GROUP BY categ;

SELECT categ, AVG(price) FROM products GROUP BY categ;

SELECT MAX(price) from products;
SELECT MIN(price) from products;


SELECT MAX(price), categ FROM products GROUP BY categ;

SELECT Min(price), categ FROM products GROUP BY categ;

SELECT * FROM products WHERE categ = 0 AND id_prod NOT LIKE '0\_%';
SELECT * FROM products WHERE categ = 1 AND id_prod NOT LIKE '0_%';
SELECT * FROM products WHERE categ = 1 AND id_prod NOT LIKE '1\_%';
SELECT * FROM products WHERE categ = 2 AND id_prod NOT LIKE '2\_%';

SELECT * FROM products WHERE (categ=0 AND id_prod NOT LIKE "0\_%") OR (categ=2 AND id_prod NOT LIKE "2\_%") OR (categ=1 AND id_prod NOT LIKE "1\_%");

SELECT * FROM products INNER JOIN transactions ON transactions.id_prod = products.id_prod WHERE price = "-1" LIMIT 10;
