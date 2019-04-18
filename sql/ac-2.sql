CREATE TABLE Fabricante (
    Fabricante INT PRIMARY KEY NOT NULL,
    Nome_Marca VARCHAR (50) NOT NULL
);

CREATE TABLE Modelo (
    Modelo VARCHAR PRIMARY KEY NOT NULL,
    Nome_Modelo VARCHAR (50) NOT NULL,
    Cilindradas INT NOT NULL,
    CONSTRAINT Fabricante FOREIGN KEY (Modelo) REFERENCES Fabricante (Fabricante)
);

CREATE TABLE Cor (
    Cor VARCHAR PRIMARY KEY NOT NULL,
    Nome_Cor VARCHAR (50) NOT NULL
);

CREATE TABLE Motocicleta (
    Placa CHAR (8) PRIMARY KEY NOT NULL,
    Renavan INT NOT NULL,
    Ano_Fabricante INT NOT NULL,
    CONSTRAINT Modelo FOREIGN KEY (Placa) REFERENCES Modelo (Modelo)
);

CREATE TABLE Funcionario (
    CPF INT PRIMARY KEY NOT NULL,
    Nome VARCHAR (50),
    Data_Nascimento INT NOT NULL,
    Numero_CNH INT NOT NULL,
    RG INT NOT NULL
);

CREATE TABLE Entrega (
    Entrega INT PRIMARY KEY NOT NULL,
    Data_Entrega Date NOT NULL,
    CONSTRAINT Funcionario FOREIGN KEY (Entrega) REFERENCES Funcionario (CPF)
);