--Criando tabelas
CREATE TABLE carros (
    id SERIAL PRIMARY KEY,
    modelo VARCHAR(100),
    disponivel BOOLEAN
);

CREATE TABLE clientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    data_aluguel DATE
);

CREATE TABLE funcionarios (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    agencia VARCHAR(100)
);

CREATE TABLE pagamentos (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER,
    valor DECIMAL(10, 2),
    data_pagamento DATE
);

CREATE TABLE carros_manutencao (
    id SERIAL PRIMARY KEY,
    carro_id INTEGER,
    descricao VARCHAR(255)
);

CREATE TABLE alugueis (
    id SERIAL PRIMARY KEY,
    cliente_id INTEGER,
    carro_id INTEGER
);

CREATE TABLE alugueis_funcionarios (
    id SERIAL PRIMARY KEY,
    funcionario_id INTEGER,
    carro_id INTEGER
);



--Abrindo tabelas criadas


-- 1. Selecione todos os carros disponíveis na locadora.
SELECT * FROM carros WHERE disponivel = true;

-- 2. Liste todos os clientes que alugaram um carro nos últimos 3 meses.
SELECT * FROM clientes WHERE data_aluguel >= current_date - interval '3 months';

-- 3. Mostre os funcionários que estão cadastrados na agência "X".
SELECT * FROM funcionarios WHERE agencia = 'X';

-- 4. Exiba os pagamentos realizados por um cliente específico.
SELECT * FROM pagamentos WHERE cliente_id = [ID_do_cliente_específico];

-- 5. Liste os carros que precisam de manutenção.
SELECT * FROM carros_manutencao;

-- 6. Escreva uma consulta para encontrar os clientes que alugaram carros mais de uma vez usando uma subconsulta correlacionada.
SELECT * 
FROM clientes c 
WHERE (
    SELECT COUNT(*) 
    FROM alugueis 
    WHERE cliente_id = c.id
) > 1;

-- 7. Identifique os carros alugados por clientes que vivem na mesma cidade que um determinado funcionário.
SELECT DISTINCT ca.*
FROM alugueis_funcionarios af
JOIN carros_alugados ca ON af.carro_id = ca.id
WHERE af.funcionario_id = [ID_do_funcionário_específico];



--Atualizando ativ

-- Atualize o preço do aluguel de todos os carros da marca "Toyota".
UPDATE carros SET preco_aluguel = [novo_preço] WHERE marca = 'Toyota';

-- Modifique a data de retorno de um carro alugado por um cliente.
UPDATE alugueis SET data_retorno = [nova_data] WHERE carro_id = [ID_do_carro] AND cliente_id = [ID_do_cliente];

-- Atualize o status de manutenção de um carro após ter sido consertado.
UPDATE carros_manutencao SET status = 'Consertado' WHERE carro_id = [ID_do_carro];



--Para as alterações

-- Adicione uma nova coluna à tabela de Carro para armazenar o status de disponibilidade.
ALTER TABLE carros ADD COLUMN disponibilidade BOOLEAN;

-- Modifique o tipo de dados de uma coluna na tabela de Pagamento.
ALTER TABLE pagamentos ALTER COLUMN valor TYPE DECIMAL(12, 2);

-- Remova uma coluna não utilizada da tabela de Cliente.
ALTER TABLE clientes DROP COLUMN coluna_nao_utilizada;


--Join

-- Liste todos os aluguéis de carros, incluindo o nome do cliente, modelo do carro e data de aluguel.
SELECT c.nome AS nome_cliente, car.modelo AS modelo_carro, a.data_aluguel
FROM alugueis a
JOIN clientes c ON a.cliente_id = c.id
JOIN carros car ON a.carro_id = car.id;

-- Mostre os pagamentos feitos por clientes, incluindo o nome do cliente e o valor pago.
SELECT c.nome AS nome_cliente, p.valor AS valor_pago
FROM pagamentos p
JOIN clientes c ON p.cliente_id = c.id;

-- Exiba os feedbacks deixados pelos clientes, juntamente com o nome do cliente e o modelo do carro alugado.
SELECT c.nome AS nome_cliente, car.modelo AS modelo_carro, f.feedback
FROM feedbacks f
JOIN clientes c ON f.cliente_id = c.id
JOIN alugueis a ON f.aluguel_id = a.id
JOIN carros car ON a.carro_id = car.id;


--Inner Join

-- Liste os carros disponíveis na agência "X".
SELECT carros.*
FROM carros
INNER JOIN agencias ON carros.agencia_id = agencias.id
WHERE agencias.nome = 'X' AND carros.disponivel = true;

-- Mostre todos os aluguéis de carros feitos por clientes que estão na cidade "Y".
SELECT alugueis.*
FROM alugueis
INNER JOIN clientes ON alugueis.cliente_id = clientes.id
WHERE clientes.cidade = 'Y';

-- Exiba os funcionários que trabalham em agências que têm pelo menos um carro da marca "Toyota".
SELECT funcionarios.*
FROM funcionarios
INNER JOIN agencias ON funcionarios.agencia_id = agencias.id
INNER JOIN carros ON agencias.id = carros.agencia_id
WHERE carros.marca = 'Toyota';


--- LEFT JOIN

-- Liste todos os carros e, se disponível, mostre o feedback associado a cada carro.
SELECT carros.*, feedbacks.feedback
FROM carros
LEFT JOIN feedbacks ON carros.id = feedbacks.carro_id;

-- Mostre todos os clientes, incluindo aqueles que ainda não alugaram nenhum carro.
SELECT clientes.*, COUNT(alugueis.id) AS total_alugueis
FROM clientes
LEFT JOIN alugueis ON clientes.id = alugueis.cliente_id
GROUP BY clientes.id;

-- Exiba todas as agências e, se houver, o número total de carros disponíveis em cada agência.
SELECT agencias.*, COUNT(carros.id) AS total_carros_disponiveis
FROM agencias
LEFT JOIN carros ON agencias.id = carros.agencia_id AND carros.disponivel = true
GROUP BY agencias.id;



--Right Join
-- Liste todos os feedbacks deixados pelos clientes, incluindo aqueles que não estão associados a nenhum aluguel de carro.
SELECT feedbacks.*, clientes.nome AS nome_cliente
FROM feedbacks
RIGHT JOIN clientes ON feedbacks.cliente_id = clientes.id;

-- Mostre todos os carros, incluindo aqueles que ainda não foram alugados por nenhum cliente.
SELECT carros.*, alugueis.data_aluguel
FROM carros
LEFT JOIN alugueis ON carros.id = alugueis.carro_id;

-- Exiba todas as manutenções realizadas, incluindo aquelas que não estão associadas a nenhum carro específico.
SELECT manutencoes.*, carros.modelo
FROM manutencoes
RIGHT JOIN carros ON manutencoes.carro_id = carros.id;


-- Escreva uma consulta para encontrar os clientes que alugaram carros mais de uma vez.
SELECT *
FROM clientes
WHERE id IN (
    SELECT cliente_id
    FROM alugueis
    GROUP BY cliente_id
    HAVING COUNT(*) > 1
);

-- Identifique os carros mais alugados por clientes que deram feedback positivo.
SELECT carros.*
FROM carros
INNER JOIN (
    SELECT carro_id, COUNT(*) AS total_feedback_positivo
    FROM feedbacks
    WHERE feedback = 'positivo'
    GROUP BY carro_id
) AS feedbacks_positivos ON carros.id = feedbacks_positivos.carro_id
ORDER BY feedbacks_positivos.total_feedback_positivo DESC
LIMIT 1;


-- Calcule o total de pagamentos recebidos pela locadora em um determinado período.
SELECT SUM(valor) AS total_pagamentos
FROM pagamentos
WHERE data_pagamento BETWEEN '2024-01-01' AND '2024-12-31';

-- Determine a média de dias que os carros passam em manutenção antes de serem novamente disponibilizados para aluguel.
SELECT AVG(DATEDIFF(data_disponibilidade, data_manutencao)) AS media_dias_manutencao
FROM carros_manutencao;


--Agregação simples
SELECT COUNT(*) AS total_carros_disponiveis
FROM carros
WHERE disponivel = true;


SELECT SUM(valor) AS total_arrecadado
FROM pagamentos
WHERE data_pagamento >= current_date - interval '3 months';

SELECT AVG(preco_aluguel) AS preco_medio_aluguel_por_dia
FROM carros
WHERE disponivel = true;	

--agregação com agrupamento

SELECT modelo, COUNT(*) AS total_carros
FROM carros
GROUP BY modelo;

SELECT EXTRACT(MONTH FROM data_pagamento) AS mes, SUM(valor) AS total_alugueis
FROM pagamentos
GROUP BY mes
ORDER BY mes;

SELECT metodo_pagamento, SUM(valor) AS total_pagamentos
FROM pagamentos
GROUP BY metodo_pagamento;


--Agregações com Filtros:

SELECT COUNT(*) AS total_carros_disponiveis
FROM carros
WHERE disponivel = true AND agencia = 'X';

SELECT SUM(valor) AS total_arrecadado
FROM pagamentos p
JOIN clientes c ON p.cliente_id = c.id
WHERE c.cidade = 'Y';


SELECT AVG(DATEDIFF(data_retorno, data_aluguel)) AS media_dias_alugados
FROM alugueis a
JOIN carros c ON a.carro_id = c.id
WHERE c.marca = 'Toyota';


--Agregações com Condições Complexas:

SELECT COUNT(*) AS total_alugueis_excedidos
FROM alugueis a
JOIN carros c ON a.carro_id = c.id
WHERE a.valor_aluguel > [valor_determinado];

SELECT SUM(valor) AS total_pagamentos
FROM pagamentos
WHERE cliente_id IN (
    SELECT cliente_id
    FROM alugueis
    GROUP BY cliente_id
    HAVING COUNT(*) > 1
);

SELECT AVG(DATEDIFF(data_disponibilidade, data_manutencao)) AS media_dias_manutencao
FROM carros_manutencao
WHERE custo_manutencao > [valor_determinado];


