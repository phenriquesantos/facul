/* ALTERAÇÕES NA TABELA */

ALTER TABLE Disciplina ADD Docente VARCHAR(50) NULL;

ALTER TABLE Disciplina DROP Docente;

/* INSERT NAS TABELAS  */

INSERT INTO Usuario (Login, Senha, DtExpiracao) VALUES ('anacristina', '@ana#2018', 31/12/2020);

INSERT INTO Coordernador (1, 'Ana Cristina', 'ana.cristina@faculdadeimapcta.com.br', 11999887766) VALUES ('Ana Cristina', 'ana.cristina', 1199887766);

INSERT INTO Professor (1, 'ana.cristina@faculdadeimapcta.com.br', 11999887766, 'cris');