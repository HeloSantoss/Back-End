--Exercicio 1
ALTER TABLE pedidos
ADD COLUMN contato_id INT,
ADD CONSTRAINT fk_contato_id FOREIGN KEY (contato_id) REFERENCES contatos (id_contato);

SELECT 
    pedidos.*,
    contatos.*
FROM 
    pedidos
JOIN 
    contatos ON pedidos.contato_id = contatos.id_contato;

--Exercicio 2
SELECT 
    p.*,
    pedidos.*,
    contato.*
FROM 
    pedidos
JOIN 
    pizza p ON pedidos.pizza= p.id
JOIN 
    contato ON pedidos.contato_id = contato.id;

-- Exercicio 3

CREATE TABLE funcionario (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    salario NUMERIC(10, 2),
    funcao_id INTEGER REFERENCES funcao(id)
);

CREATE TABLE funcao (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100)
);
--para mostrar quem são
SELECT 
    f.nome AS funcionario,
    fc.nome AS funcao
FROM 
    funcionario f
JOIN 
    funcao fc ON f.funcao_id = fc.id;
	ABORT
	
	
--Exercicio 4 (FAZER DE NOVO)

SELECT 
    c.*,
    f.nome AS funcionario_responsavel
FROM 
    contatos c
JOIN 
    funcionario f ON c.funcionario_id = f.id;

--Exercico 5

SELECT * FROM contatos

--Exercicio 6
-- criar no banco 


-- Exercico 7
SELECT * FROM pedidos


--Exercico 8	

ALTER TABLE public.funcionario
ADD COLUMN supervisor VARCHAR(100);


-- 9
--sem resposta


--10 não há

-- SEGUNDA PARTE DA LISTA

--Exercico 1
SELECT * FROM contatos


--Exercico 2
SELECT *
FROM contatos
WHERE cadastro = '2024-04-02';


--EXercico 4
SELECT FROM 
    pedidos
WHERE 
    contato_id = (
        SELECT id 
        FROM contatos 
        WHERE nome = 'helo'
    );
	
	
	
--Exercicio 5
--Exercicio 6
--Exercicio 7
--Exercicio 8




