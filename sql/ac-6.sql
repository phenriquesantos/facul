/* CRIAR TABELAS */
CREATE TABLE Cor(
    idCor INT IDENTITY
    ,Descricao VARCHAR(255)
	,CONSTRAINT pk_cor PRIMARY KEY (idCor)
);

CREATE TABLE Fornecedor(
    idFornecedor INT IDENTITY
    ,nome VARCHAR(150)
    ,telefone VARCHAR(20)
    ,contato VARCHAR(100)
	,CONSTRAINT pk_fornecedor PRIMARY KEY (idFornecedor)
);

CREATE TABLE Produto(
    codigo VARCHAR(30) PRIMARY KEY
    ,nome VARCHAR(150)
    ,estoque INT
    idFornecedor INT,
    idCor INT,
    ,CONSTRAINT idFornecedor FOREIGN KEY(idFornecedor) REFERENCES Fornecedor(idFornecedor)
    ,CONSTRAINT idCor FOREIGN KEY(idCor) REFERENCES Cor(idCor)
);

/* INSERIR NA TABELA COR */
INSERT INTO Cor(Descricao) VALUES ('Branco');
INSERT INTO Cor(Descricao) VALUES ('Preto');
INSERT INTO Cor(Descricao) VALUES ('Azul');
INSERT INTO Cor(Descricao) VALUES ('Vermelho');
INSERT INTO Cor(Descricao) VALUES ('Amarelo');

/* INSERIR NO FORNECEDOR */
INSERT INTO Fornecedor(nome, telefone, contato) VALUES ('Sony', '8498-8732', 'Allan');
INSERT INTO Fornecedor(nome, telefone, contato) VALUES ('Motorola', '7987-9900', 'Cristina');
INSERT INTO Fornecedor(nome, telefone, contato) VALUES ('Asus', '5476-1120', 'Felipe');
INSERT INTO Fornecedor(nome, telefone, contato) VALUES ('Nokia', '6755-5656', 'Fábio');
