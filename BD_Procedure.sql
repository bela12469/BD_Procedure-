CREATE TABLE produto(
id_produto SERIAL PRIMARY KEY,
nome VARCHAR NOT NULL,
)


CREATE TABLE vendas(
id_venda SERIAL PRIMARY KEY,
produto VARCHAR NOT NULL,
quantidade INT  NOT NULL,
data DATE,
fk_id_produto INT NOT NULL, 
CONSTRAINT fk_id_produto  FOREIGN KEY(fk_id_produto) REFERENCES produto (id_produto )


DELIMITER $$
CREATE PROCEDURE vendas_diarias(produto, quantidade, data)
   BEGIN
	SELECT * FROM vendas 
  END
DELIMITER;


CALL vendas_diarias (produto, quantidade, data)
