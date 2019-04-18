CREATE DATABASE Concessionaria;
USE Concessionaria;

CREATE TABLE Ano (
    idAno INT IDENTITY(1,1) PRIMARY KEY,
    ano INT NOT NULL
);

CREATE TABLE Modelo(
    idModelo INT IDENTITY(1,1) PRIMARY KEY,
    Descricao VARCHAR(50)
);

CREATE TABLE Fabricante(
    idFabricante INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(50),
    Cidade VARCHAR(50),
    Endereco VARCHAR(100),
    UF VARCHAR(2),
    Telefone VARCHAR(20),
    Contato VARCHAR(50)
);

CREATE TABLE Mes(
    idMes INT IDENTITY(15, 3) PRIMARY KEY,
    mes INT NOT NULL
);

CREATE TABLE Veiculo(
    idVeiculo INT IDENTITY(1, 1) PRIMARY KEY,
    descricao VARCHAR(50),
    valor FLOAT NOT NULL,
    CONSTRAINT idModelo FOREIGN KEY (idVeiculo) REFERENCES Modelo (idModelo),
    CONSTRAINT idFabricante FOREIGN KEY (idVeiculo) REFERENCES Fabricante (idFabricante),
    CONSTRAINT idAnoFabricacao FOREIGN KEY (idVeiculo) REFERENCES Ano (idAno),
    dataCompra DATE NOT NULL
    );

CREATE TABLE VendasAnuais(
    idVendas INT IDENTITY(1, 1) PRIMARY KEY,
    qnt INT NOT NULL,
    CONSTRAINT idVeiculo FOREIGN KEY (idvendas) REFERENCES Veiculo (idVeiculo),
    CONSTRAINT idAnodaVenda FOREIGN KEY (idvendas) REFERENCES Ano (idAno),
    CONSTRAINT idMesdaVenda FOREIGN KEY (idVendas) REFERENCES Mes (idMes) 
);
