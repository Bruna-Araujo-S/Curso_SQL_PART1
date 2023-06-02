SELECT * FROM TABELA_DE_CLIENTES;

SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES;


SELECT CIDADE, IDADE FROM TABELA_DE_CLIENTES ORDER BY CIDADE, IDADE;

SELECT CIDADE, SUM(IDADE) AS IDADE FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

SELECT CIDADE, SUM(IDADE) AS IDADE, SUM(LIMITE_DE_CREDITO) AS CREDITO FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

SELECT CIDADE, AVG(IDADE) AS IDADE, SUM(LIMITE_DE_CREDITO) AS CREDITO FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

SELECT CIDADE, COUNT(*) AS NUMERO_DE_CLIENTES FROM TABELA_DE_CLIENTES GROUP BY CIDADE;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO
FROM TABELA_DE_CLIENTES GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO
FROM TABELA_DE_CLIENTES 
WHERE  SUM(LIMITE_DE_CREDITO) >= 900000
GROUP BY ESTADO;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS CREDITO
FROM TABELA_DE_CLIENTES 
GROUP BY ESTADO
HAVING SUM(LIMITE_DE_CREDITO) >= 900000;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN
FROM TABELA_DE_PRODUTOS GROUP BY  EMBALAGEM;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN
FROM TABELA_DE_PRODUTOS 
WHERE PRECO_DE_LISTA >= 10
GROUP BY  EMBALAGEM;

SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAX, MIN(PRECO_DE_LISTA) AS PRECO_MIN
FROM TABELA_DE_PRODUTOS 
WHERE PRECO_DE_LISTA >= 10
GROUP BY  EMBALAGEM
HAVING MAX(PRECO_DE_LISTA) >= 20;



SELECT EMBALAGEM, COUNT(*) AS NUMERO_DE_CLIENTES FROM TABELA_DE_PRODUTOS 
WHERE SABOR = 'Laranja' GROUP BY EMBALAGEM;