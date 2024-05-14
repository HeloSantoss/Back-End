CREATE DATABASE db_joins;

CREATE TABLE cliente(
codcli char(3) NOT NULL PRIMARY KEY,
nome	varchar(40) not null,
endereco VARCHAR(50) not null,
cidade varchar(20) not null,
estado char(2) not null,
cep char(9) not NULL

);

CREATE TABLE venda (
duplic char(6) not null primary key,
valor decimal(10,2) not null,
vencio date not null,
codcli char(3) not null,
foreign key(codcli) references cliente(codcli)
);

CREATE INDEX idx_codcli_venda on venda(codcli);

USE DB_JOINS;

-- LISTAGEM GERAL
SELECT * FROM CLIENTE;
SELECT * FROM VENDA; 

-- INSERÇÃO DE DADOS NA TABELA CLIENTE

INSERT INTO cliente VALUES (
  '250',
  'BANCO BARCA S/A',
  'R. VITO, 34',
  'SAO SEBASTIAO',
  'CE',
  '62380-000'
);
 
INSERT INTO cliente VALUES (
  '820',
  'MECANICA SAO PAULO',
  'R. DO MACUCO, 99',
  'SANTO ANTONIO',
  'ES',
  '29810-020'
);

INSERT INTO cliente VALUES (
  '170',
  'POSTO BRASIL LTDA.',
  'AV. IMPERIO, 85',
  'GUAGIRUS',
  'BA',
  '42837-000'
);

INSERT INTO cliente VALUES (
  '340',
  'TRANSP. CARGA PESADA LTDA.',
  'AV. DOS AUTONOMISTAS, 1000',
  'OSASCO',
  'SP',
  '06020-010'
);

INSERT INTO cliente VALUES (
  '100',
  'MICROS INFORMATICA S/A',
  'R. DAS PALMEIRAS, 4 - LOJA 2',
  'SAO PAULO',
  'SP',
  '01226-010'
);

INSERT INTO cliente VALUES (
  '750',
  'IMOBILIARIA PAVAO',
  'AV. BRASIL, 105',
  'RIO DO PRADO',
  'MG',
  '39940-111'
);

INSERT INTO cliente VALUES (
  '860',
  'ASSIS CONTABIL S/C LTDA.',
  'R. DO MONUMENTO, 550',
  'SANTO AMARO',
  'BA',
  '44200-090'
);

INSERT INTO cliente VALUES (
  '230',
  'SUPERMERCADO BOTAFOGO',
  'R. DA LAGOA, 999',
  'RIO DAS OSTRAS',
  'RJ',
  '28890-540'
);

INSERT INTO cliente VALUES (
  '150',
  'MARCONDES E IRMAO LTDA.',
  'R. DO ORATORIO, 66',
  'ROSARIO OESTE',
  'MT',
  '78470-010'
);

INSERT INTO cliente VALUES (
  '800',
  'DOCEIRA PAO DE ACUCAR',
  'R. MARTINS PENA, 200',
  'SANTO ANDRE',
  'SP',
  '09190-700'
);

INSERT INTO cliente VALUES (
  '990',
  'METALURGICA FOGO E FERRO',
  'R. ARTUR BERNARDES, 3500',
  'SANTO ANDRE',
  'SP',
  '09193-410'
);

INSERT INTO cliente VALUES (
  '500',
  'JOSE DANTAS E FILHOS S/C LTDA.',
  'AV. IPIRANGA, 1000',
  'LUCRECIA',
  'RN',
  '59805-010'
);

INSERT INTO cliente VALUES (
  '300',
  'PCTEC - MICROCOMPUTADORES S/A.',
  'R. CAIS DO PORTO, ARMAZEM 3',
  'SANTOS',
  'SP',
  '11000-005'
);

INSERT INTO cliente VALUES (
  '550',
  'ROTRAM COMERCIAL LTDA.',
  'R. DAS PALMEIRAS, 45 - CJ 10',
  'SAO PAULO',
  'SP',
  '01226-010'
);

-- INSERÇÃO DE DADOS NA TABELA VENDA

INSERT INTO venda VALUES (
  '230001',
  1300.00,
  '2001-06-10',
  '340'
);


INSERT INTO venda VALUES (
  '230099',
  1000.00,
  '2002-10-02',
  '820'
);

INSERT INTO venda VALUES (
  '997818',
  3000.00,
  '2001-11-11',
  '170'
);

INSERT INTO venda VALUES (
  '202550',
  9518.55,
  '2002-11-21',
  '750'
);

INSERT INTO venda VALUES (
  '113340',
  2002.00,
  '2001-11-25',
  '230'
);

INSERT INTO venda VALUES (
  '900450',
  1200.00,
  '2002-09-09',
  '340'
);

INSERT INTO venda VALUES (
  '202020',
  2390.00,
  '2001-11-11',
  '550'
);

INSERT INTO venda VALUES (
  '100200',
  3500.00,
  '2002-11-10',
  '230'
);

INSERT INTO venda VALUES (
  '345611',
  5090.67,
  '2002-12-12',
  '550'
);

INSERT INTO venda VALUES (
  '900855',
  2356.00,
  '2002-10-10',
  '340'
);

INSERT INTO venda VALUES (
  '100000',
  5060.88,
  '1999-05-15',
  '300'
);

INSERT INTO venda VALUES (
  '100335',
  2002.50,
  '2006-01-20',
  '990'
);

INSERT INTO venda VALUES (
  '101010',
  5060.88,
  '2000-03-15',
  '300'
);

INSERT INTO venda VALUES (
  '101210',
  9060.55,
  '2001-10-15',
  '300'
);

INSERT INTO venda VALUES (
  '112099',
  1000.00,
  '2005-06-22',
  '150'
);

INSERT INTO venda VALUES (
  '112299',
  1000.00,
  '2005-10-10',
  '150'
);

INSERT INTO venda VALUES (
  '121213',
  1000.00,
  '2002-02-15',
  '170'
);

INSERT INTO venda VALUES (
  '100334',
  2002.50,
  '2005-12-20',
  '990'
);

INSERT INTO venda VALUES (
  '100336',
  2002.50,
  '2006-02-20',
  '990'
);

INSERT INTO venda VALUES (
  '101110',
  3460.66,
  '2000-04-15',
  '300'
);

INSERT INTO venda VALUES (
  '111999',
  1250.00,
  '2005-04-15',
  '150'
);

INSERT INTO venda VALUES (
  '112199',
  1350.00,
  '2005-08-30',
  '150'
);

INSERT INTO venda VALUES (
  '121212',
  1300.00,
  '2002-01-15',
  '170'
);

INSERT INTO venda VALUES (
  '121214',
  1400.00,
  '2002-03-15',
  '170'
);

INSERT INTO venda VALUES (
  '121515',
  1000.00,
  '2003-10-15',
  '230'
);

INSERT INTO venda VALUES (
  '155099',
  1800.00,
  '2004-11-13',
  '250'
);

INSERT INTO venda VALUES (
  '155299',
  1900.00,
  '2003-11-15',
  '250'
);

INSERT INTO venda VALUES (
  '210001',
  6000.00,
  '1999-12-04',
  '100'
);

INSERT INTO venda VALUES (
  '231015',
  1800.00,
  '2005-10-10',
  '550'
);

INSERT INTO venda VALUES (
  '400400',
  6000.00,
  '2003-06-15',
  '340'
);

INSERT INTO venda VALUES (
  '460460',
  1902.50,
  '2004-02-20',
  '100'
);

INSERT INTO venda VALUES (
  '460660',
  1902.50,
  '2004-04-24',
  '100'
);

INSERT INTO venda VALUES (
  '121616',
  1600.00,
  '2003-11-15',
  '230'
);

INSERT INTO venda VALUES (
  '155199',
  1000.00,
  '2003-10-15',
  '250'
);

INSERT INTO venda VALUES (
  '155999',
  1000.00,
  '2004-10-14',
  '250'
);

INSERT INTO venda VALUES (
  '230002',
  1300.00,
  '2005-10-09',
  '550'
);

INSERT INTO venda VALUES (
  '250013',
  2002.00,
  '2002-10-03',
  '820'
);

INSERT INTO venda VALUES (
  '451300',
  1750.00,
  '1999-05-21',
  '800'
);

INSERT INTO venda VALUES (
  '460560',
  1902.50,
  '2004-03-22',
  '100'
);

INSERT INTO venda VALUES (
  '500005',
  5060.88,
  '1999-05-15',
  '990'
);

INSERT INTO venda VALUES (
  '600099',
  1300.00,
  '2001-10-13',
  '860'
);

INSERT INTO venda VALUES (
  '600299',
  1500.00,
  '2002-05-12',
  '860'
);

INSERT INTO venda VALUES (
  '653099',
  1350.88,
  '2003-09-13',
  '750'
);

INSERT INTO venda VALUES (
  '653999',
  1255.99,
  '2003-09-14',
  '750'
);

INSERT INTO venda VALUES (
  '751299',
  1570.00,
  '2005-05-12',
  '800'
);

INSERT INTO venda VALUES (
  '752252',
  1675.00,
  '2006-12-15',
  '820'
);

INSERT INTO venda VALUES (
  '950888',
  2002.50,
  '2006-10-07',
  '500'
);

INSERT INTO venda VALUES (
  '950890',
  2002.50,
  '2006-10-09',
  '500'
);

INSERT INTO venda VALUES (
  '600199',
  1400.00,
  '2002-11-15',
  '860'
);

INSERT INTO venda VALUES (
  '600999',
  1200.00,
  '2001-09-14',
  '860'
);

INSERT INTO venda VALUES (
  '653199',
  1432.77,
  '2004-08-15',
  '750'
);

INSERT INTO venda VALUES (
  '750299',
  1560.00,
  '2004-03-12',
  '800'
);

INSERT INTO venda VALUES (
  '750300',
  1565.00,
  '2004-05-11',
  '800'
);

INSERT INTO venda VALUES (
  '752253',
  1675.00,
  '2006-11-22',
  '820'
);

INSERT INTO venda VALUES (
  '950889',
  2002.50,
  '2006-10-08',
  '500'
);

INSERT INTO venda VALUES (
  '950891',
  2002.50,
  '2006-10-10',
  '500'
);

INSERT INTO venda VALUES (
  '202055',
  2390.00,
  '2004-11-11',
  '550'
);

INSERT INTO venda VALUES (
  '111818',
  3000.00,
  '2006-09-11',
  '170'
);

INSERT INTO venda VALUES (
  '302056',
  2490.00,
  '2006-10-20',
  '550'
);

INSERT INTO venda VALUES (
  '222550',
  9518.55,
  '2005-11-21',
  '750'
);

INSERT INTO venda VALUES (
  '235100',
  1500.00,
  '2005-06-12',
  '500'
);

INSERT INTO venda VALUES (
  '203052',
  9008.33,
  '2005-08-22',
  '550'
);

INSERT INTO venda VALUES (
  '999820',
  3110.22,
  '2005-05-11',
  '170'
);

INSERT INTO venda VALUES (
  '223345',
  2112.11,
  '2006-03-08',
  '230'
);

INSERT INTO venda VALUES (
  '922452',
  1211.98,
  '2006-03-09',
  '340'
);

INSERT INTO venda VALUES (
  '111211',
  3535.00,
  '2006-11-15',
  '230'
);

INSERT INTO venda VALUES (
  '907754',
  2056.90,
  '2005-10-30',
  '340'
);

INSERT INTO venda VALUES (
  '222228',
  2390.00,
  '2006-10-07',
  '170'
);

INSERT INTO venda VALUES (
  '347711',
  5092.55,
  '2006-11-20',
  '170'
);

INSERT INTO venda VALUES (
  '209967',
  9008.33,
  '2006-10-05',
  '550'
);


select venda.duplic, cliente.nome
from cliente, venda
where cliente.codcli = venda.codcli
order by cliente.nome;

select venda.duplic, cliente.nome
from cliente inner join venda on cliente.codcli = venda.codcli
--ordem crescente
order by cliente.nome;


select ven.duplic, cli.nome
from cliente cli inner join venda ven on cli.codcli = ven.codcli
--ordem decrescente
order by cli.nome DESC

SELECT*from cliente;
select*from venda;

select cliente.nome, count (*) as qide
FROM cliente inner join venda on cliente.codcli = venda.codcli
group by cliente.nome;



--- Exercicios 

--Exibir duplicatas em carteira do cliente PCTEC - MICROCOMPUTADORES S/A. Na listagem devem constar o nome docliente, número da duplicata e o valor correspondente.
SELECT venda.duplic, cliente.nome, venda.valor
FROM cliente
INNER JOIN venda ON cliente.codcli = venda.codcli
WHERE cliente.nome = 'PCTEC - MICROCOMPUTADORES S/A';


--Exibir os nomes dos clientes e a data de vencimento de todas as
--plicatas pendentes no mês de novembro de 2004. A listagem deve
--r apresentada em ordem cronológica de vencimento.
SELECT cliente.nome, venda.vencio
FROM cliente
INNER JOIN venda ON cliente.codcli = venda.codcli
WHERE YEAR(venda.vencio) = 2004 AND MONTH(venda.vencio) = 11
ORDER BY venda.vencio;


--Apresentar o nome dos clientes e todas as duplicatas que possuem vencimento no mês de outubro de qualquer ano.
SELECT cliente.nome, venda.duplic, venda.vencio
FROM cliente
INNER JOIN venda ON cliente.codcli = venda.codcli
WHERE MONTH(venda.vencio) = 10
ORDER BY cliente.nome, venda.vencio;

--Consultar o nome do cliente, a quantidade de títulos em carteira por
--iente e o total que cada cliente deve.
SELECT cliente.nome, COUNT(venda.duplic) AS quantidade_titulos, SUM(venda.valor) AS total_devido
FROM cliente
LEFT JOIN venda ON cliente.codcli = venda.codcli
GROUP BY cliente.nome;

--Apresentação da mesma consulta anterior, agora definindo um
--elido para a coluna onde é exibido a soma das duplicatas.
SELECT cliente.nome, COUNT(venda.duplic) AS quantidade_titulos, SUM(venda.valor) AS total_devido_apelido
FROM cliente
LEFT JOIN venda ON cliente.codcli = venda.codcli
GROUP BY cliente.nome;

--identificada pelos apelidos CLIENTE (para o campo NOME) e VENCIDOS
SELECT cliente.nome AS CLIENTE, COUNT(venda.duplic) AS VENCIDOS
FROM cliente
INNER JOIN venda ON cliente.codcli = venda.codcli
WHERE venda.vencio < '2003-12-31'
GROUP BY cliente.nome;


--
SELECT 
    cliente.nome AS Cliente,
    venda.duplic AS Duplicata,
    venda.valor AS Valor_Duplicata,
    (venda.valor * 0.10) AS Juros,
    (venda.valor * 1.10) AS Total_a_Cobrar
FROM 
    cliente
INNER JOIN 
    venda ON cliente.codcli = venda.codcli
WHERE 
    venda.vencio < '1999-12-31' AND
    venda.vencio < CURRENT_DATE()
ORDER BY 
    cliente.nome;


