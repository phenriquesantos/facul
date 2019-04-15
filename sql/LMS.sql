CREATE TABLE Usuarios(
    idUsuario INT IDENTITY(1,1) PRIMARY KEY,
    Login VARCHAR(50) NOT NULL UNIQUE,
    Senha INT NOT NULL,
    DtExpiracao VARCHAR
);

CREATE TABLE Coordenador(
    idCoordenador INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idUsuario FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    Nome VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Celular INT UNIQUE
);

CREATE TABLE Aluno(
    idAluno INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idUsuario FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    Nome VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Celular INT UNIQUE,
    RA INT,
    Foto IMAGE
);

CREATE TABLE Professor(
    idProfessor INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idUsuario FOREIGN KEY (idUsuario) REFERENCES Usuarios(idUsuario),
    Email VARCHAR(100) UNIQUE,
    Celular INT UNIQUE,
    Apelido VARCHAR(50)
);

CREATE TABLE Disciplina(
    idDisciplina INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(50) UNIQUE,
    Datas GETDATE,
    Statu BINARY,
    PlanoDeEnsino VARCHAR(50),
    CargaHoraria INT,
    Competencias VARCHAR(50),
    Habilidades VARCHAR(50),
    Ementa VARCHAR(50),
    ConteudoProgramatico VARCHAR(50),
    BibliografiaBasica VARCHAR(50),
    BibliografiaComplementar VARCHAR(50),
    PorcentualPratico INT,
    PorcentualTeorico INT,
    CONSTRAINT idCoordenador FOREIGN KEY (idCoordenador) REFERENCES Coordenador(idCoordenador);
);

CREATE TABLE DisciplinaOfertada(
    idDisciplinaOfertada INT IDENTITY(1,1) PRIMARY KEY,
    DtInicioMatricula VARCHAR(50),
    DtFimMatricula VARCHAR(50),
    CONSTRAINT idDisciplina FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina),
    CONSTRAINT idCurso FOREIGN KEY (idCurso) REFERENCES Curso(idCurso),
    Ano INT,
    Semestre INT,
    Turma VARCHAR(50),
    CONSTRAINT idProfessor FOREIGN KEY(idProfessor) REFERENCES Professor(idProfessor),
    Metodologia VARCHAR(50),
    Recursos VARCHAR(50),
    CriterioAvaliacao VARCHAR(50),
    PlanoDeAulas VARCHAR(50)
);

CREATE TABLE Curso(
    idCurso INT IDENTITY(1,1) PRIMARY KEY,
    Nome VARCHAR(50) UNIQUE
);

CREATE TABLE SolicitacaoMatricula(
    idSolicitacaoMatricula INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idAluno FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    CONSTRAINT idDisciplinaOfertada FOREIGN KEY (idDisciplinaOfertada) REFERENCES DisciplinaOfertada(idDisciplinaOfertada),
    DtSolicitacao VARCHAR(50),
    CONSTRAINT idCoordenador FOREIGN KEY (idCoordenador) REFERENCES Coordenador(idCoordenador),
    Statu VARCHAR(50)
);

CREATE TABLE Atividade(
    idAtividade INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR(50) UNIQUE,
    Conteudo VARCHAR(100),
    Tipo VARCHAR(100),
    Extra VARCHAR(50),
    CONSTRAINT idProfessor FOREIGN KEY (idProfessor) REFERENCES Professor(idProfessor),
);

CREATE TABLE AtividadeVinculada(
    idAtividadeVinculada INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idAtividade FOREIGN KEY (idAtividade) REFERENCES Atividade(idAtividade),
    CONSTRAINT idProfessor FOREIGN KEy (idProfessor) REFERENCES Professor(idProfessor),
    CONSTRAINT idDisciplinaOfertada FOREIGN KEY (idDisciplinaOfertada) DisciplinaOfertada(idDisciplinaOfertada),
    Rotulo VARCHAR(50),
    Statu VARCHAR(50),
    DtInicioResposta VARCHAR(100),
    DtFimResposta VARCHAR(2)
);

CREATE TABLE Entrega(
    idEntrega INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idAluno FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    CONSTRAINT idAtividadeVinculada FOREIGN KEY (idAtividadeVinculada) REFERENCES AtividadeVinculada(idAtividadeVinculada),
    Titulo VARCHAR(50),
    Resposta VARCHAR(50),
    DtEntrega VARCHAR(100),
    Status VARCHAR(10),
    Nota FLOAT,
    DtAvaliacao VARCHAR(2),
    Obs VARCHAR(100)
);

CREATE TABLE Mensagem(
    idMensagem INT IDENTITY(1,1) PRIMARY KEY,
    CONSTRAINT idAluno FOREIGN KEY (idAluno) REFERENCES Aluno(idAluno),
    CONSTRAINT idProfessor FOREIGN KEY (idProfessor) REFERENCES Professor(idProfessor),
    Assunto VARCHAR(50),
    Referencia VARCHAR(50),
    Conteudo VARCHAR(100),
    Statu VARCHAR(100),
    DtEnvio VARCHAR(2)
    DtResposta VARCHAR(2),
    Resposta TEXT
);