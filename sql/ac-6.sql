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
    ,descontinuado INT
    ,idFornecedor INT
    ,idCor INT
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

/* INSERIR NA TABELA DE PRODUTOS */
INSERT INTO Produto(codigo, nome, estoque, descontinuado, idFornecedor, idCor) VALUES ('XT890A', 'Asus Zenfone', 5, 0, 3, 4);
INSERT INTO Produto(codigo, nome, estoque, descontinuado, idFornecedor, idCor) VALUES ('RQ765B', 'iPhone', 0, 1, 9, 4);
INSERT INTO Produto(codigo, nome, estoque, descontinuado, idFornecedor, idCor) VALUES ('WD528B', 'MotoX', 3, 0, 2, 7);
INSERT INTO Produto(codigo, nome, estoque, descontinuado, idFornecedor, idCor) VALUES ('TF897A', 'Xperia', 7, 0, 1, 1);
INSERT INTO Produto(codigo, nome, estoque, descontinuado, idFornecedor, idCor) VALUES ('RF212B', 'Moto Maxx', 2, 0, 2, 1);

SELECT a.codigo, a.nome, a.estoque, b.idFornecedor, b.contato, b.telefone
FROM Produto AS a
INNER JOIN Fornecedor AS b
ON a.idFornecedor = b.idFornecedor;

SELECT * FROM Fornecedor;