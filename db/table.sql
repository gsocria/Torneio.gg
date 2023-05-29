CREATE DATABASE db_torneio;

-- TABELAS INDEPENDENTES

CREATE TABLE
    db_torneio.genero(
        idgenero INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        genero VARCHAR(20) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idgenero)
    );

CREATE TABLE
    db_torneio.setor(
        idsetor INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        setor VARCHAR(40) NOT NULL,
        cadastro DATETIME,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idsetor)
    );

CREATE TABLE
    db_torneio.categoria(
        idcategoria INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        categoria VARCHAR(40) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idcategoria)
    );

CREATE TABLE
    db_torneio.premiacao(
        idpremiacao INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        premiacao VARCHAR(40) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idpremiacao)
    );

CREATE TABLE
    db_torneio.chaveamento(
        idchaveamento INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        chaveamento VARCHAR(40) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idchaveamento)
    );

-- TABELA PESSOA

CREATE TABLE
    db_torneio.pessoa(
        idpessoa INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idgenero INTEGER UNSIGNED NOT NULL,
        nome VARCHAR(80) NOT NULL,
        email VARCHAR(80) NOT NULL,
        senha VARCHAR(55) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idpessoa, idgenero),
        CONSTRAINT pessoa_fk_idgenero FOREIGN KEY (idgenero) REFERENCES db_torneio.genero (idgenero) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- TABELA FUNCIONARIO

CREATE TABLE
    db_torneio.funcionario(
        idfuncionario INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idpessoa INTEGER UNSIGNED NOT NULL,
        idsetor INTEGER UNSIGNED NOT NULL,
        cpf VARCHAR(15) NOT NULL,
        salario DECIMAL NOT NULL,
        admissao DATE NOT NULL,
        demissao DATE,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (
            idfuncionario,
            idpessoa,
            idsetor
        ),
        CONSTRAINT funcionario_fk_idpessoa FOREIGN KEY (idpessoa) REFERENCES db_torneio.pessoa(idpessoa) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT funcionario_fk_idsetor FOREIGN KEY (idsetor) REFERENCES db_torneio.setor(idsetor) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- TABELA GERENTE TIME

CREATE TABLE
    db_torneio.gerenteTime(
        idgerenteTime INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idpessoa INTEGER UNSIGNED NOT NULL,
        cpf VARCHAR(15) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idgerenteTime, idpessoa),
        CONSTRAINT gerenteTime_fk_idpessoa FOREIGN KEY (idpessoa) REFERENCES db_torneio.pessoa (idpessoa) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
    );

-- TABELA TIME

CREATE TABLE
    db_torneio.equipe(
        idtime INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idgerenteTime INTEGER UNSIGNED NOT NULL,
        nomeTime VARCHAR(80) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idtime, idgerenteTime), 
        CONSTRAINT time_fk_idgerenteTime FOREIGN KEY (idgerenteTime) REFERENCES db_torneio.gerenteTime (idgerenteTime) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
    );

-- TABELA JOGADOR

CREATE TABLE
    db_torneio.jogador(
        idjogador INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idpessoa INTEGER UNSIGNED NOT NULL,
        idtime INTEGER UNSIGNED NOT NULL,
        nomeJogador VARCHAR(80) NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (idjogador, idpessoa, idtime),
        CONSTRAINT jogador_fk_idpessoa FOREIGN KEY (idpessoa) REFERENCES db_torneio.pessoa(idpessoa) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT jogador_fk_idtime FOREIGN KEY (idtime) REFERENCES db_torneio.time(idtime) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- TABALE TORNEIO

CREATE TABLE
    db_torneio.torneio(
        idtorneio INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idcategoria INTEGER UNSIGNED NOT NULL,
        idpremiacao INTEGER UNSIGNED NOT NULL,
        nomeTorneio VARCHAR(80) NOT NULL,
        dataInicio DATETIME NOT NULL,
        dataTermino DATETIME NOT NULL,
        valorTaxa DECIMAL NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (
            idtorneio,
            idcategoria,
            idpremiacao
        ),
        CONSTRAINT torneio_fk_idcategoria FOREIGN KEY (idcategoria) REFERENCES db_torneio.categoria (idcategoria) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT torneio_fk_idpremiacao FOREIGN KEY (idpremiacao) REFERENCES db_torneio.premiacao (idpremiacao) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- TABELA CONFRONTO

CREATE TABLE
    db_torneio.confronto(
        idconfronto INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idtorneio INTEGER UNSIGNED NOT NULL,
        idtimeA INTEGER UNSIGNED NOT NULL,
        idtimeB INTEGER UNSIGNED NOT NULL,
        idchaveamento INTEGER UNSIGNED NOT NULL,
        encerrado CHAR(1) DEFAULT 'N',
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP NOT NULL,
        PRIMARY KEY (
            idconfronto,
            idtorneio,
            idtimeA,
            idtimeB,
            idchaveamento
        ),
        CONSTRAINT confronto_fk_idtorneio FOREIGN KEY (idtorneio) REFERENCES db_torneio.torneio (idtorneio) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT confronto_fk_idtimeA FOREIGN KEY (idtimeA) REFERENCES db_torneio.time (idtime) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT confronto_fk_idtimeB FOREIGN KEY (idtimeB) REFERENCES db_torneio.time (idtime) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT confronto_fk_idchaveamento FOREIGN KEY (idchaveamento) REFERENCES db_torneio.chaveamento (idchaveamento) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- TABELAS PLACAR

CREATE TABLE
    db_torneio.placarPrimeiraPartida(
        idplacarPrimeiraPartida INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idconfronto INTEGER UNSIGNED NOT NULL,
        timeSelecionado DECIMAL NOT NULL,
        ponto CHAR(1) DEFAULT 1,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (
            idplacarPrimeiraPartida,
            idconfronto
        ),
        CONSTRAINT placarPrimeiraPartida_fk_idconfronto FOREIGN KEY (idconfronto) REFERENCES db_torneio.confronto (idconfronto) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    db_torneio.placarSegundaPartida(
        idplacarSegundaPartida INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idconfronto INTEGER UNSIGNED NOT NULL,
        timeSelecionado DECIMAL NOT NULL,
        ponto CHAR(1) DEFAULT 1,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (
            idplacarSegundaPartida,
            idconfronto
        ),
        CONSTRAINT placarSegundaPartida_fk_idconfronto FOREIGN KEY (idconfronto) REFERENCES db_torneio.confronto (idconfronto) ON DELETE CASCADE ON UPDATE CASCADE
    );

CREATE TABLE
    db_torneio.placarTerceiraPartida(
        idplacarTerceiraPartida INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idconfronto INTEGER UNSIGNED NOT NULL,
        timeSelecionado DECIMAL NOT NULL,
        ponto CHAR(1) DEFAULT 1,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (
            idplacarTerceiraPartida,
            idconfronto
        ),
        CONSTRAINT placarTerceiraPartida_fk_idconfronto FOREIGN KEY (idconfronto) REFERENCES db_torneio.confronto (idconfronto) ON DELETE CASCADE ON UPDATE CASCADE
    );

-- TABELA PARTICIPANTES TORNEIO

CREATE TABLE
    db_torneio.participanteTorneio(
        idparticipanteTorneio INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
        idtorneio INTEGER UNSIGNED NOT NULL,
        idtime INTEGER UNSIGNED NOT NULL,
        cadastro DATETIME NOT NULL,
        alteracao TIMESTAMP,
        ativo CHAR(1) DEFAULT 'A',
        PRIMARY KEY (
            idparticipanteTorneio,
            idtorneio,
            idtime
        ),
        CONSTRAINT participantTorneio_fk_idtorneio FOREIGN KEY (idtorneio) REFERENCES db_torneio.torneio (idtorneio) ON DELETE CASCADE ON UPDATE CASCADE,
        CONSTRAINT participantTorneio_fk_idtime FOREIGN KEY (idtime) REFERENCES db_torneio.time (idtime) ON DELETE CASCADE ON UPDATE CASCADE
    )