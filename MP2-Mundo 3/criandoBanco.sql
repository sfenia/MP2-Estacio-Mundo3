CREATE DATABASE loja;

USE loja;

CREATE TABLE
	Pessoa (
		id_Pessoa INTEGER NOT NULL IDENTITY (1, 1) PRIMARY KEY,
		nome VARCHAR(255) NOT NULL,
		logradouro VARCHAR(255) NOT NULL,
		cidade VARCHAR(255) NOT NULL,
		estado CHAR(2) NOT NULL,
		telefone VARCHAR(11) NOT NULL,
		email VARCHAR(255) NOT NULL
	);

CREATE TABLE
	Produtos (
		idProdutos INTEGER NOT NULL IDENTITY (1, 1) PRIMARY KEY,
		nome VARCHAR(255) NOT NULL,
		quantidade INTEGER NOT NULL,
		precoVenda NUMERIC NOT NULL
	);

CREATE TABLE
	Usuarios (
		id_Usuario INTEGER NOT NULL IDENTITY (1, 1) PRIMARY KEY,
		login VARCHAR(50) NOT NULL,
		senha VARCHAR(50) NOT NULL
	);

CREATE TABLE
	Pessoa_Fisica (
		idPessoa_Fisica INTEGER NOT NULL PRIMARY KEY,
		cpf VARCHAR(11) NOT NULL,
		idPessoa INTEGER NULL,
		constraint fk_PessoaFisica_Pessoa foreign key (idPessoa) references dbo.Pessoa (id_Pessoa)
	);

CREATE TABLE
	Pessoa_Juridica (
		idPessoa_Juridica INTEGER NOT NULL PRIMARY KEY,
		cnpj varchar(14) NOT NULL,
		idPessoa INTEGER NULL,
		constraint fk_PessoaJuridica_Pessoa foreign key (idPessoa) references dbo.Pessoa (id_Pessoa)
	);

CREATE TABLE
	Movimento (
		idMovimento INTEGER NOT NULL IDENTITY (1, 1) PRIMARY KEY,
		idUsuario INTEGER NOT NULL,
		idPessoa INTEGER NOT NULL,
		idProduto INTEGER NOT NULL,
		quantidade INTEGER NOT NULL,
		tipo CHAR(1) NOT NULL,
		valorUnitario FLOAT NOT NULL,
		constraint fk_Movimento_Produto foreign key (idProduto) references dbo.Produtos (idProdutos),
		constraint fk_Movimento_Usuario foreign key (idUsuario) references dbo.Usuarios (id_Usuario),
		constraint fk_Movimento_Pessoa foreign key (idPessoa) references dbo.Pessoa (id_Pessoa)
	);
	
CREATE SEQUENCE dbo.CodigoPessoa
    START WITH 1  
    INCREMENT BY 1 ;  
