-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE carro (
modelo (varchar 100) Not Null,
ano Int Not Null,
numero_agencia (int 19) (chave estrangerira) Texto(1),
placa (varcha 8) Not Null,
id_carro Serial PRIMARY KEY,
tipo varchar(50) Not Null,
disponibilidade varchar(50)Not Null 
)

CREATE TABLE Entidade (
Clientes Texto(1),
Carro Texto(1),
Agencia Texto(1)
)

CREATE TABLE Clientes (
telefone (int 15) Texto(1),
cartao (varchar 20) Texto(1),
nome (varchar 50) Texto(1),
cnh (int 15) Texto(1),
id|_cliente Texto(1),
sobrenome Texto(1),
nome Texto(1),
endereço Texto(1),
cidade Texto(1),
estado Texto(1),
celular Texto(1),
email Texto(1),
id_pagamento Texto(1)
)

CREATE TABLE agencia (
contato (int 20) Texto(1),
endereco (varchar 80) Texto(1),
numero_agencia (varchar 10)(pk) Texto(1),
cidade Texto(1),
estado Texto(1)
)

CREATE TABLE Funcionario (
id_funcionario Serial PRIMARY KEY,
data_contratacao Date Not Null,
nome varchar(50) Not Null,
cargo Varchar(50) Not Null,
sobrenome varchar(80) Not Null,
salario Decimal(7,2) Not Null
Num_Agencia Serial
)

CREATE TABLE pagamento  (
id_pagamento Texto(1) PRIMARY KEY,
valor Texto(1),
data de pagamento Texto(1),
id_registra Texto(1),
comprovante Texto(1)
)

CREATE TABLE manutencao (
id_manutencao Texto(1),
data_manutencao Texto(1),
tipo_manutencao Texto(1),
descricao Texto(1),
km Texto(1),
custo Texto(1)
)

CREATE TABLE feedback (
id_feedback Texto(1),
data_feedback Texto(1),
comentario Texto(1),
avaliacao Texto(1)
)

CREATE TABLE Locacao (
id_locacao Texto(1),
data_locacao Texto(1),
data devolucao Texto(1),
valor_total Texto(1)
)

CREATE TABLE Faz (

)

CREATE TABLE Registra (

)

ALTER TABLE Clientes ADD FOREIGN KEY(id_pagamento) REFERENCES pagamento  (id_pagamento)
