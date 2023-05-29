-- TABELA GENERO

INSERT INTO db_torneio.genero (genero, cadastro) VALUES ('Masculino','2023/05/17 22:00:00');
INSERT INTO db_torneio.genero (genero, cadastro) VALUES ('Feminino','2023/05/17 22:00:00');
INSERT INTO db_torneio.genero (genero, cadastro) VALUES ('Neutro','2023/05/17 22:00:00');

-- TABELA SETOR

INSERT INTO db_torneio.setor (setor, cadastro) VALUES ('Gerente','2023/05/17 22:00:00');
INSERT INTO db_torneio.setor (setor, cadastro) VALUES ('Diretor','2023/05/17 22:00:00');
INSERT INTO db_torneio.setor (setor, cadastro) VALUES ('Comentarista','2023/05/17 22:00:00');
INSERT INTO db_torneio.setor (setor, cadastro) VALUES ('Desenvolvedor','2023/05/17 22:00:00');
INSERT INTO db_torneio.setor (setor, cadastro) VALUES ('CEO','2023/05/17 22:00:00');

-- TABELA CATEGORIA

INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Call of Duty','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('League of legends','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('CSGO','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Fifa','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Minecraft','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Dota','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Fortnite','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Mortal Kombat','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Street Fighter','2023/05/17 22:00:00');
INSERT INTO db_torneio.categoria (categoria, cadastro) VALUES ('Valorant','2023/05/17 22:00:00');

-- TABELA PREMIACAO

INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$100,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$150,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$200,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$250,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$300,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$350,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('R$400,00', '2023/05/23 19:00:00');
INSERT INTO db_torneio.premiacao (premiacao,cadastro) VALUES ('Skin', '2023/05/23 19:00:00');

-- TABELA CHAVEAMENTO

INSERT INTO db_torneio.chaveamento (chaveamento,cadastro) VALUES ('CHAVE A','2023/05/15');
INSERT INTO db_torneio.chaveamento (chaveamento,cadastro) VALUES ('CHAVE B','2023/05/15');
INSERT INTO db_torneio.chaveamento (chaveamento,cadastro) VALUES ('CHAVE C','2023/05/15');
INSERT INTO db_torneio.chaveamento (chaveamento,cadastro) VALUES ('CHAVE D','2023/05/15');
INSERT INTO db_torneio.chaveamento (chaveamento,cadastro) VALUES ('CHAVE E','2023/05/15');

-- TABELA PESSOA

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Guilherme', 'guilherme@gmail.com', '010203', '2023-05-18 10:00:00', 'A'),
       (2, 'Carolina', 'carolina@gmail.com', '040506', '2023-05-18 11:00:00', 'A'),
       (3, 'Pedro', 'pedro@gmail.com', '070809', '2023-05-18 12:00:00', 'A'),
       (1, 'Maria', 'maria@gmail.com', '101112', '2023-05-18 13:00:00', 'A'),
       (2, 'João', 'joao@gmail.com', '131415', '2023-05-18 14:00:00', 'A'),
       (3, 'Ana', 'ana@gmail.com', '161718', '2023-05-18 15:00:00', 'A'),
       (1, 'Rafaela', 'rafaela@gmail.com', '192021', '2023-05-18 16:00:00', 'A'),
       (2, 'Lucas', 'lucas@gmail.com', '222324', '2023-05-18 17:00:00', 'A'),
       (3, 'Mariana', 'mariana@gmail.com', '252627', '2023-05-18 18:00:00', 'A'),
       (1, 'André', 'andre@gmail.com', '282930', '2023-05-18 19:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (2, 'Gabriel', 'gabriel@gmail.com', '343536', '2023-05-18 20:00:00', 'A'),
       (1, 'Fernanda', 'fernanda@gmail.com', '373839', '2023-05-18 21:00:00', 'A'),
       (3, 'Juliana', 'juliana@gmail.com', '404142', '2023-05-18 22:00:00', 'A'),
       (2, 'Marcos', 'marcos@gmail.com', '434445', '2023-05-18 23:00:00', 'A'),
       (1, 'Sandra', 'sandra@gmail.com', '464748', '2023-05-19 10:00:00', 'A'),
       (3, 'Rodrigo', 'rodrigo@gmail.com', '495051', '2023-05-19 11:00:00', 'A'),
       (2, 'Patrícia', 'patricia@gmail.com', '525354', '2023-05-19 12:00:00', 'A'),
       (1, 'Gustavo', 'gustavo@gmail.com', '555657', '2023-05-19 13:00:00', 'A'),
       (3, 'Isabela', 'isabela@gmail.com', '585960', '2023-05-19 14:00:00', 'A'),
       (2, 'Ricardo', 'ricardo@gmail.com', '616263', '2023-05-19 15:00:00', 'A'),
       (1, 'Bianca', 'bianca@gmail.com', '646566', '2023-05-19 16:00:00', 'A'),
       (3, 'Eduardo', 'eduardo@gmail.com', '676869', '2023-05-19 17:00:00', 'A'),
       (2, 'Amanda', 'amanda@gmail.com', '707172', '2023-05-19 18:00:00', 'A'),
       (1, 'Leonardo', 'leonardo@gmail.com', '737475', '2023-05-19 19:00:00', 'A'),
       (3, 'Vanessa', 'vanessa@gmail.com', '767778', '2023-05-19 20:00:00', 'A'),
       (2, 'Thiago', 'thiago@gmail.com', '798081', '2023-05-19 21:00:00', 'A'),
       (1, 'Carla', 'carla@gmail.com', '828384', '2023-05-19 22:00:00', 'A'),
       (3, 'Hugo', 'hugo@gmail.com', '858687', '2023-05-19 23:00:00', 'A'),
       (2, 'Beatriz', 'beatriz@gmail.com', '888990', '2023-05-20 10:00:00', 'A'),
       (1, 'Rafael', 'rafael@gmail.com', '919293', '2023-05-20 11:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (2, 'Gabriel Santos', 'gabriel.santos@gmail.com', '343536', '2023-05-18 20:00:00', 'A'),
       (1, 'Fernanda Silva', 'fernanda.silva@gmail.com', '373839', '2023-05-18 21:00:00', 'A'),
       (3, 'Juliana Pereira', 'juliana.pereira@gmail.com', '404142', '2023-05-18 22:00:00', 'A'),
       (2, 'Marcos Oliveira', 'marcos.oliveira@gmail.com', '434445', '2023-05-18 23:00:00', 'A'),
       (1, 'Sandra Santos', 'sandra.santos@gmail.com', '464748', '2023-05-19 10:00:00', 'A'),
       (3, 'Rodrigo Souza', 'rodrigo.souza@gmail.com', '495051', '2023-05-19 11:00:00', 'A'),
       (2, 'Patrícia Almeida', 'patricia.almeida@gmail.com', '525354', '2023-05-19 12:00:00', 'A'),
       (1, 'Gustavo Lima', 'gustavo.lima@gmail.com', '555657', '2023-05-19 13:00:00', 'A'),
       (3, 'Isabela Costa', 'isabela.costa@gmail.com', '585960', '2023-05-19 14:00:00', 'A'),
       (2, 'Ricardo Rodrigues', 'ricardo.rodrigues@gmail.com', '616263', '2023-05-19 15:00:00', 'A'),
       (1, 'Bianca Martins', 'bianca.martins@gmail.com', '646566', '2023-05-19 16:00:00', 'A'),
       (3, 'Eduardo Santos', 'eduardo.santos@gmail.com', '676869', '2023-05-19 17:00:00', 'A'),
       (2, 'Amanda Silva', 'amanda.silva@gmail.com', '707172', '2023-05-19 18:00:00', 'A'),
       (1, 'Leonardo Fernandes', 'leonardo.fernandes@gmail.com', '737475', '2023-05-19 19:00:00', 'A'),
       (3, 'Vanessa Sousa', 'vanessa.sousa@gmail.com', '767778', '2023-05-19 20:00:00', 'A'),
       (2, 'Thiago Oliveira', 'thiago.oliveira@gmail.com', '798081', '2023-05-19 21:00:00', 'A'),
       (1, 'Carla Ferreira', 'carla.ferreira@gmail.com', '828384', '2023-05-19 22:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Rafaela Oliveira', 'rafaela.oliveira@gmail.com', '909192', '2023-05-19 23:00:00', 'A'),
       (2, 'Camila Pereira', 'camila.pereira@gmail.com', '939495', '2023-05-20 10:00:00', 'A'),
       (3, 'Lucas Santos', 'lucas.santos@gmail.com', '969798', '2023-05-20 11:00:00', 'A'),
       (1, 'Marina Costa', 'marina.costa@gmail.com', '99100101', '2023-05-20 12:00:00', 'A'),
       (2, 'Pedro Almeida', 'pedro.almeida@gmail.com', '102103104', '2023-05-20 13:00:00', 'A'),
       (3, 'Mariana Rodrigues', 'mariana.rodrigues@gmail.com', '105106107', '2023-05-20 14:00:00', 'A'),
       (1, 'Daniel Souza', 'daniel.souza@gmail.com', '108109110', '2023-05-20 15:00:00', 'A'),
       (2, 'Larissa Silva', 'larissa.silva@gmail.com', '111112113', '2023-05-20 16:00:00', 'A'),
       (3, 'Vinicius Santos', 'vinicius.santos@gmail.com', '114115116', '2023-05-20 17:00:00', 'A'),
       (1, 'Aline Oliveira', 'aline.oliveira@gmail.com', '117118119', '2023-05-20 18:00:00', 'A'),
       (2, 'Ricardo Pereira', 'ricardo.pereira@gmail.com', '120121122', '2023-05-20 19:00:00', 'A'),
       (3, 'Ana Clara Silva', 'anaclara.silva@gmail.com', '123124125', '2023-05-20 20:00:00', 'A'),
       (1, 'Gabriela Costa', 'gabriela.costa@gmail.com', '126127128', '2023-05-20 21:00:00', 'A'),
       (2, 'Felipe Santos', 'felipe.santos@gmail.com', '129130131', '2023-05-20 22:00:00', 'A'),
       (3, 'Amanda Oliveira', 'amanda.oliveira@gmail.com', '132133134', '2023-05-20 23:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Ricardo Oliveira', 'ricardo.oliveira@gmail.com', '135136137', '2023-05-21 10:00:00', 'A'),
       (2, 'Carolina Santos', 'carolina.santos@gmail.com', '138139140', '2023-05-21 11:00:00', 'A'),
       (3, 'Pedro Almeida', 'pedro.almeida2@gmail.com', '141142143', '2023-05-21 12:00:00', 'A'),
       (1, 'Mariana Costa', 'mariana.costa2@gmail.com', '144145146', '2023-05-21 13:00:00', 'A'),
       (2, 'Lucas Pereira', 'lucas.pereira2@gmail.com', '147148149', '2023-05-21 14:00:00', 'A'),
       (3, 'Isabela Rodrigues', 'isabela.rodrigues@gmail.com', '150151152', '2023-05-21 15:00:00', 'A'),
       (1, 'Daniel Souza', 'daniel.souza2@gmail.com', '153154155', '2023-05-21 16:00:00', 'A'),
       (2, 'Larissa Silva', 'larissa.silva2@gmail.com', '156157158', '2023-05-21 17:00:00', 'A'),
       (3, 'Vinicius Santos', 'vinicius.santos2@gmail.com', '159160161', '2023-05-21 18:00:00', 'A'),
       (1, 'Aline Oliveira', 'aline.oliveira2@gmail.com', '162163164', '2023-05-21 19:00:00', 'A'),
       (2, 'Ricardo Pereira', 'ricardo.pereira2@gmail.com', '165166167', '2023-05-21 20:00:00', 'A'),
       (3, 'Ana Clara Silva', 'anaclara.silva2@gmail.com', '168169170', '2023-05-21 21:00:00', 'A'),
       (1, 'Gabriela Costa', 'gabriela.costa2@gmail.com', '171172173', '2023-05-21 22:00:00', 'A'),
       (2, 'Felipe Santos', 'felipe.santos2@gmail.com', '174175176', '2023-05-21 23:00:00', 'A'),
       (3, 'Amanda Oliveira', 'amanda.oliveira3@gmail.com', '177178179', '2023-05-22 10:00:00', 'A');


INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Luisa Oliveira', 'luisa.oliveira@gmail.com', '180181182', '2023-05-22 11:00:00', 'A'),
       (2, 'Bruno Santos', 'bruno.santos@gmail.com', '183184185', '2023-05-22 12:00:00', 'A'),
       (3, 'Carolina Almeida', 'carolina.almeida@gmail.com', '186187188', '2023-05-22 13:00:00', 'A'),
       (1, 'Fernando Costa', 'fernando.costa@gmail.com', '189190191', '2023-05-22 14:00:00', 'A'),
       (2, 'Patrícia Pereira', 'patricia.pereira@gmail.com', '192193194', '2023-05-22 15:00:00', 'A'),
       (3, 'Rafael Rodrigues', 'rafael.rodrigues@gmail.com', '195196197', '2023-05-22 16:00:00', 'A'),
       (1, 'Laura Souza', 'laura.souza@gmail.com', '198199200', '2023-05-22 17:00:00', 'A'),
       (2, 'Gustavo Silva', 'gustavo.silva@gmail.com', '201202203', '2023-05-22 18:00:00', 'A'),
       (3, 'Mariana Santos', 'mariana.santos@gmail.com', '204205206', '2023-05-22 19:00:00', 'A'),
       (1, 'Lucas Oliveira', 'lucas.oliveira@gmail.com', '207208209', '2023-05-22 20:00:00', 'A'),
       (2, 'Camila Pereira', 'camila.pereira2@gmail.com', '210211212', '2023-05-22 21:00:00', 'A'),
       (3, 'Pedro Almeida', 'pedro.almeida3@gmail.com', '213214215', '2023-05-22 22:00:00', 'A'),
       (1, 'Mariana Costa', 'mariana.costa3@gmail.com', '216217218', '2023-05-22 23:00:00', 'A'),
       (2, 'Lucas Pereira', 'lucas.pereira3@gmail.com', '219220221', '2023-05-23 10:00:00', 'A'),
       (3, 'Isabela Rodrigues', 'isabela.rodrigues2@gmail.com', '222223224', '2023-05-23 11:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Raphaela Oliveira', 'raphaela.oliveira1@gmail.com', '225226227', '2023-05-23 12:00:00', 'A'),
       (2, 'Pedro Santos', 'pedro.santos1@gmail.com', '228229230', '2023-05-23 13:00:00', 'A'),
       (3, 'Camila Almeida', 'camila.almeida1@gmail.com', '231232233', '2023-05-23 14:00:00', 'A'),
       (1, 'Fernando Costa', 'fernando.costa1@gmail.com', '234235236', '2023-05-23 15:00:00', 'A'),
       (2, 'Patrícia Pereira', 'patricia.pereira1@gmail.com', '237238239', '2023-05-23 16:00:00', 'A'),
       (3, 'Rafael Rodrigues', 'rafael.rodrigues1@gmail.com', '240241242', '2023-05-23 17:00:00', 'A'),
       (1, 'Laura Souza', 'laura.souza1@gmail.com', '243244245', '2023-05-23 18:00:00', 'A'),
       (2, 'Gustavo Silva', 'gustavo.silva1@gmail.com', '246247248', '2023-05-23 19:00:00', 'A'),
       (3, 'Mariana Santos', 'mariana.santos1@gmail.com', '249250251', '2023-05-23 20:00:00', 'A'),
       (1, 'Lucas Oliveira', 'lucas.oliveira1@gmail.com', '252253254', '2023-05-23 21:00:00', 'A'),
       (2, 'Camila Pereira', 'camila.pereira3@gmail.com', '255256257', '2023-05-23 22:00:00', 'A'),
       (3, 'Pedro Almeida', 'pedro.almeida4@gmail.com', '258259260', '2023-05-23 23:00:00', 'A'),
       (1, 'Mariana Costa', 'mariana.costa4@gmail.com', '261262263', '2023-05-24 10:00:00', 'A'),
       (2, 'Lucas Pereira', 'lucas.pereira4@gmail.com', '264265266', '2023-05-24 11:00:00', 'A'),
       (3, 'Isabela Rodrigues', 'isabela.rodrigues4@gmail.com', '267268269', '2023-05-24 12:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Giovanna Lima', 'giovanna.lima1@gmail.com', '270271272', '2023-05-24 13:00:00', 'A'),
       (2, 'Matheus Santos', 'matheus.santos1@gmail.com', '273274275', '2023-05-24 14:00:00', 'A'),
       (3, 'Larissa Almeida', 'larissa.almeida1@gmail.com', '276277278', '2023-05-24 15:00:00', 'A'),
       (1, 'Rafael Costa', 'rafael.costa1@gmail.com', '279280281', '2023-05-24 16:00:00', 'A'),
       (2, 'Bianca Pereira', 'bianca.pereira1@gmail.com', '282283284', '2023-05-24 17:00:00', 'A'),
       (3, 'Pedro Rodrigues', 'pedro.rodrigues1@gmail.com', '285286287', '2023-05-24 18:00:00', 'A'),
       (1, 'Amanda Souza', 'amanda.souza1@gmail.com', '288289290', '2023-05-24 19:00:00', 'A'),
       (2, 'Lucas Silva', 'lucas.silva1@gmail.com', '291292293', '2023-05-24 20:00:00', 'A'),
       (3, 'Camila Santos', 'camila.santos2@gmail.com', '294295296', '2023-05-24 21:00:00', 'A'),
       (1, 'Gabriel Oliveira', 'gabriel.oliveira2@gmail.com', '297298299', '2023-05-24 22:00:00', 'A'),
       (2, 'Letícia Pereira', 'leticia.pereira2@gmail.com', '300301302', '2023-05-24 23:00:00', 'A'),
       (3, 'João Almeida', 'joao.almeida2@gmail.com', '303304305', '2023-05-25 10:00:00', 'A'),
       (1, 'Maria Costa', 'maria.costa2@gmail.com', '306307308', '2023-05-25 11:00:00', 'A'),
       (2, 'Guilherme Silva', 'guilherme.silva2@gmail.com', '309310311', '2023-05-25 12:00:00', 'A'),
       (3, 'Laura Rodrigues', 'laura.rodrigues2@gmail.com', '312313314', '2023-05-25 13:00:00', 'A');


INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Gustavo Lima', 'gustavo.lima123@gmail.com', '315316317', '2023-05-25 14:00:00', 'A'),
       (2, 'Mariana Santos', 'mariana.santos456@gmail.com', '318319320', '2023-05-25 15:00:00', 'A'),
       (3, 'Pedro Almeida', 'pedro.almeida789@gmail.com', '321322323', '2023-05-25 16:00:00', 'A'),
       (1, 'Larissa Costa', 'larissa.costa123@gmail.com', '324325326', '2023-05-25 17:00:00', 'A'),
       (2, 'Lucas Pereira', 'lucas.pereira456@gmail.com', '327328329', '2023-05-25 18:00:00', 'A'),
       (3, 'Isabela Rodrigues', 'isabela.rodrigues789@gmail.com', '330331332', '2023-05-25 19:00:00', 'A'),
       (1, 'Rafaela Souza', 'rafaela.souza123@gmail.com', '333334335', '2023-05-25 20:00:00', 'A'),
       (2, 'Gabriel Silva', 'gabriel.silva456@gmail.com', '336337338', '2023-05-25 21:00:00', 'A'),
       (3, 'Letícia Santos', 'leticia.santos789@gmail.com', '339340341', '2023-05-25 22:00:00', 'A'),
       (1, 'Bruno Oliveira', 'bruno.oliveira123@gmail.com', '342343344', '2023-05-25 23:00:00', 'A'),
       (2, 'Carolina Pereira', 'carolina.pereira456@gmail.com', '345346347', '2023-05-26 10:00:00', 'A'),
       (3, 'Ricardo Almeida', 'ricardo.almeida789@gmail.com', '348349350', '2023-05-26 11:00:00', 'A'),
       (1, 'Amanda Costa', 'amanda.costa123@gmail.com', '351352353', '2023-05-26 12:00:00', 'A'),
       (2, 'Lucas Silva', 'lucas.silva456@gmail.com', '354355356', '2023-05-26 13:00:00', 'A'),
       (3, 'Isabela Rodrigues', 'isabela.rodrigues789@gmail.com', '357358359', '2023-05-26 14:00:00', 'A');


INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Rodrigo Ferreira', 'rodrigo.ferreira567@gmail.com', '360361362', '2023-05-26 15:00:00', 'A'),
       (2, 'Fernanda Lima', 'fernanda.lima890@gmail.com', '363364365', '2023-05-26 16:00:00', 'A'),
       (3, 'Pedro Alves', 'pedro.alves123@gmail.com', '366367368', '2023-05-26 17:00:00', 'A'),
       (1, 'Carolina Pereira', 'carolina.pereira456@gmail.com', '369370371', '2023-05-26 18:00:00', 'A'),
       (2, 'Gustavo Santos', 'gustavo.santos789@gmail.com', '372373374', '2023-05-26 19:00:00', 'A'),
       (3, 'Mariana Rodrigues', 'mariana.rodrigues123@gmail.com', '375376377', '2023-05-26 20:00:00', 'A'),
       (1, 'Rafaela Costa', 'rafaela.costa456@gmail.com', '378379380', '2023-05-26 21:00:00', 'A'),
       (2, 'Lucas Silva', 'lucas.silva789@gmail.com', '381382383', '2023-05-26 22:00:00', 'A'),
       (3, 'Isabela Santos', 'isabela.santos123@gmail.com', '384385386', '2023-05-26 23:00:00', 'A'),
       (1, 'Guilherme Oliveira', 'guilherme.oliveira456@gmail.com', '387388389', '2023-05-27 10:00:00', 'A'),
       (2, 'Amanda Pereira', 'amanda.pereira789@gmail.com', '390391392', '2023-05-27 11:00:00', 'A'),
       (3, 'Lucas Almeida', 'lucas.almeida123@gmail.com', '393394395', '2023-05-27 12:00:00', 'A'),
       (1, 'Isabela Costa', 'isabela.costa456@gmail.com', '396397398', '2023-05-27 13:00:00', 'A'),
       (2, 'Ricardo Silva', 'ricardo.silva789@gmail.com', '399400401', '2023-05-27 14:00:00', 'A'),
       (3, 'Larissa Santos', 'larissa.santos123@gmail.com', '402403404', '2023-05-27 15:00:00', 'A');


INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Rafaela Ferreira', 'rafaela.ferreira1234@gmail.com', '405406407', '2023-05-27 16:00:00', 'A'),
       (2, 'Lucas Lima', 'lucas.lima5678@gmail.com', '408409410', '2023-05-27 17:00:00', 'A'),
       (3, 'Isabela Alves', 'isabela.alves9012@gmail.com', '411412413', '2023-05-27 18:00:00', 'A'),
       (1, 'Pedro Costa', 'pedro.costa3456@gmail.com', '414415416', '2023-05-27 19:00:00', 'A'),
       (2, 'Carolina Santos', 'carolina.santos7890@gmail.com', '417418419', '2023-05-27 20:00:00', 'A'),
       (3, 'Gustavo Rodrigues', 'gustavo.rodrigues2345@gmail.com', '420421422', '2023-05-27 21:00:00', 'A'),
       (1, 'Mariana Ferreira', 'mariana.ferreira5678@gmail.com', '423424425', '2023-05-27 22:00:00', 'A'),
       (2, 'Lucas Lima', 'lucas.lima9012@gmail.com', '426427428', '2023-05-27 23:00:00', 'A'),
       (3, 'Isabela Almeida', 'isabela.almeida3456@gmail.com', '429430431', '2023-05-28 10:00:00', 'A'),
       (1, 'Pedro Costa', 'pedro.costa7890@gmail.com', '432433434', '2023-05-28 11:00:00', 'A'),
       (2, 'Carolina Santos', 'carolina.santos2345@gmail.com', '435436437', '2023-05-28 12:00:00', 'A'),
       (3, 'Gustavo Rodrigues', 'gustavo.rodrigues5678@gmail.com', '438439440', '2023-05-28 13:00:00', 'A'),
       (1, 'Mariana Ferreira', 'mariana.ferreira9012@gmail.com', '441442443', '2023-05-28 14:00:00', 'A'),
       (2, 'Lucas Lima', 'lucas.lima3456@gmail.com', '444445446', '2023-05-28 15:00:00', 'A'),
       (3, 'Isabela Almeida', 'isabela.almeida7890@gmail.com', '447448449', '2023-05-28 16:00:00', 'A');


INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Gabriel Fernandes', 'gabriel.fernandes5678@gmail.com', '450451452', '2023-05-28 17:00:00', 'A'),
       (2, 'Amanda Lima', 'amanda.lima9012@gmail.com', '453454455', '2023-05-28 18:00:00', 'A'),
       (3, 'Pedro Almeida', 'pedro.almeida3456@gmail.com', '456457458', '2023-05-28 19:00:00', 'A'),
       (1, 'Carolina Costa', 'carolina.costa7890@gmail.com', '459460461', '2023-05-28 20:00:00', 'A'),
       (2, 'Lucas Santos', 'lucas.santos2345@gmail.com', '462463464', '2023-05-28 21:00:00', 'A'),
       (3, 'Isabela Rodrigues', 'isabela.rodrigues5678@gmail.com', '465466467', '2023-05-28 22:00:00', 'A'),
       (1, 'Rafaela Ferreira', 'rafaela.ferreira9012@gmail.com', '468469470', '2023-05-28 23:00:00', 'A'),
       (2, 'Gustavo Lima', 'gustavo.lima3456@gmail.com', '471472473', '2023-05-29 10:00:00', 'A'),
       (3, 'Mariana Alves', 'mariana.alves7890@gmail.com', '474475476', '2023-05-29 11:00:00', 'A'),
       (1, 'Pedro Costa', 'pedro.costa2345@gmail.com', '477478479', '2023-05-29 12:00:00', 'A'),
       (2, 'Carolina Santos', 'carolina.santos5678@gmail.com', '480481482', '2023-05-29 13:00:00', 'A'),
       (3, 'Gustavo Rodrigues', 'gustavo.rodrigues9012@gmail.com', '483484485', '2023-05-29 14:00:00', 'A'),
       (1, 'Mariana Ferreira', 'mariana.ferreira3456@gmail.com', '486487488', '2023-05-29 15:00:00', 'A'),
       (2, 'Lucas Lima', 'lucas.lima7890@gmail.com', '489490491', '2023-05-29 16:00:00', 'A'),
       (3, 'Isabela Almeida', 'isabela.almeida2345@gmail.com', '492493494', '2023-05-29 17:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Marcelo Sousa', 'marcelo.sousa1234@gmail.com', '540541542', '2023-05-30 19:00:00', 'A'),
       (2, 'Patricia Mendes', 'patricia.mendes5678@gmail.com', '543544545', '2023-05-30 20:00:00', 'A'),
       (3, 'Roberto Santos', 'roberto.santos9012@gmail.com', '546547548', '2023-05-30 21:00:00', 'A'),
       (1, 'Camila Ferreira', 'camila.ferreira3456@gmail.com', '549550551', '2023-05-30 22:00:00', 'A'),
       (2, 'Fernando Lima', 'fernando.lima7890@gmail.com', '552553554', '2023-05-30 23:00:00', 'A'),
       (3, 'Giovanna Almeida', 'giovanna.almeida2345@gmail.com', '555556557', '2023-05-31 10:00:00', 'A'),
       (1, 'Felipe Costa', 'felipe.costa5678@gmail.com', '558559560', '2023-05-31 11:00:00', 'A'),
       (2, 'Juliana Rodrigues', 'juliana.rodrigues9012@gmail.com', '561562563', '2023-05-31 12:00:00', 'A'),
       (3, 'Ricardo Alves', 'ricardo.alves3456@gmail.com', '564565566', '2023-05-31 13:00:00', 'A'),
       (1, 'Carla Santos', 'carla.santos7890@gmail.com', '567568569', '2023-05-31 14:00:00', 'A'),
       (2, 'Henrique Lima', 'henrique.lima1234@gmail.com', '570571572', '2023-05-31 15:00:00', 'A'),
       (3, 'Aline Ferreira', 'aline.ferreira5678@gmail.com', '573574575', '2023-05-31 16:00:00', 'A'),
       (1, 'Marcos Costa', 'marcos.costa9012@gmail.com', '576577578', '2023-05-31 17:00:00', 'A'),
       (2, 'Vanessa Santos', 'vanessa.santos3456@gmail.com', '579580581', '2023-05-31 18:00:00', 'A'),
       (3, 'Rafaela Almeida', 'rafaela.almeida7890@gmail.com', '582583584', '2023-05-31 19:00:00', 'A');


INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES (1, 'Rafael Oliveira', 'rafael.oliveira2468@gmail.com', '585586587', '2023-05-31 20:00:00', 'A'),
       (2, 'Carolina Mendes', 'carolina.mendes8024@gmail.com', '588589590', '2023-05-31 21:00:00', 'A'),
       (3, 'Lucas Pereira', 'lucas.pereira1357@gmail.com', '591592593', '2023-05-31 22:00:00', 'A'),
       (1, 'Juliana Silva', 'juliana.silva4680@gmail.com', '594595596', '2023-05-31 23:00:00', 'A'),
       (2, 'Gustavo Santos', 'gustavo.santos7912@gmail.com', '597598599', '2023-06-01 10:00:00', 'A');

INSERT INTO db_torneio.pessoa (idgenero, nome, email, senha, cadastro, ativo)
VALUES 
    (1, 'Rafael Oliveira', 'rafael.oliveira024680@gmail.com', '585586587', '2023-05-31 20:00:00', 'A'),
    (2, 'Carolina Mendes', 'carolina.mendes080240@gmail.com', '588589590', '2023-05-31 21:00:00', 'A'),
    (3, 'Lucas Pereira', 'lucas.pereira013570@gmail.com', '591592593', '2023-05-31 22:00:00', 'A'),
    (1, 'Juliana Silva', 'juliana.silva046800@gmail.com', '594595596', '2023-05-31 23:00:00', 'A'),
    (2, 'Gustavo Santos', 'gustavo.santos079120@gmail.com', '597598599', '2023-06-01 10:00:00', 'A'),
    (1, 'Maria Rodrigues', 'maria.rodrigues137800@gmail.com', '600601602', '2023-06-01 11:00:00', 'A'),
    (2, 'Pedro Costa', 'pedro.costa426850@gmail.com', '603604605', '2023-06-01 12:00:00', 'A'),
    (3, 'Ana Pereira', 'ana.pereira739600@gmail.com', '606607608', '2023-06-01 13:00:00', 'A'),
    (1, 'Bruno Santos', 'bruno.santos582670@gmail.com', '609610611', '2023-06-01 14:00:00', 'A'),
    (2, 'Larissa Oliveira', 'larissa.oliveira499640@gmail.com', '612613614', '2023-06-01 15:00:00', 'A'),
    (3, 'Matheus Fernandes', 'matheus.fernandes694610@gmail.com', '615616617', '2023-06-01 16:00:00', 'A'),
    (1, 'Fernanda Lima', 'fernanda.lima587650@gmail.com', '618619620', '2023-06-01 17:00:00', 'A'),
    (2, 'Roberto Sousa', 'roberto.sousa198620@gmail.com', '621622623', '2023-06-01 18:00:00', 'A'),
    (3, 'Camila Almeida', 'camila.almeida731590@gmail.com', '624625626', '2023-06-01 19:00:00', 'A'),
    (1, 'Ricardo Nunes', 'ricardo.nunes564680@gmail.com', '627628629', '2023-06-01 20:00:00', 'A'),
    (2, 'Amanda Costa', 'amanda.costa814650@gmail.com', '630631632', '2023-06-01 21:00:00', 'A');



-- TABELA FUNCIONARIA 
INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (1, 1, '12345678901', 5000.00, '2022-01-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (2, 2, '98765432109', 4500.00, '2022-02-01', NULL, 'A');


INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (4, 3, '90123456789', 5500.00, '2022-04-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (5, 2, '34567890123', 4000.00, '2022-05-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (6, 1, '78901234567', 5500.00, '2022-06-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (7, 3, '23456789012', 6000.00, '2022-07-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (8, 1, '67890123456', 4500.00, '2022-08-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (9, 2, '01234567890', 5000.00, '2022-09-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (10, 3, '45678901234', 4000.00, '2022-10-01', NULL, 'A');
INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (1, 1, '12345678901', 5000.00, '2022-01-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (2, 2, '98765432109', 4500.00, '2022-02-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (3, 1, '56789012345', 6000.00, '2022-03-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (4, 3, '90123456789', 5500.00, '2022-04-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (5, 2, '34567890123', 4000.00, '2022-05-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (6, 1, '78901234567', 5500.00, '2022-06-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (7, 3, '23456789012', 6000.00, '2022-07-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (8, 1, '67890123456', 4500.00, '2022-08-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (9, 2, '01234567890', 5000.00, '2022-09-01', NULL, 'A');

INSERT INTO db_torneio.funcionario (idpessoa, idsetor, cpf, salario, admissao, demissao, ativo)
VALUES (10, 3, '45678901234', 4000.00, '2022-10-01', NULL, 'A');

-- TABELA GERENTE TIME

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (1, '12345678901', '2022-01-01 09:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (2, '98765432109', '2022-02-01 10:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (3, '56789012345', '2022-03-01 11:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (4, '90123456789', '2022-04-01 12:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (5, '34567890123', '2022-05-01 13:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (6, '78901234567', '2022-06-01 14:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (7, '23456789012', '2022-07-01 15:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (8, '67890123456', '2022-08-01 16:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (9, '01234567890', '2022-09-01 17:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (10, '45678901234', '2022-10-01 18:00:00', 'A');
INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (11, '11111111111', '2022-11-01 09:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (12, '22222222222', '2022-12-01 10:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (13, '33333333333', '2023-01-01 11:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (14, '44444444444', '2023-02-01 12:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (15, '55555555555', '2023-03-01 13:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (16, '66666666666', '2023-04-01 14:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (17, '77777777777', '2023-05-01 15:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (18, '88888888888', '2023-06-01 16:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (19, '99999999999', '2023-07-01 17:00:00', 'A');

INSERT INTO db_torneio.gerenteTime (idpessoa, cpf, cadastro, ativo)
VALUES (20, '00000000000', '2023-08-01 18:00:00', 'A');

-- TABELA DE TIMES

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (1, 'Team Liquid', '2022-01-01 09:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (2, 'Fnatic', '2022-02-01 10:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (3, 'SK Telecom T1', '2022-03-01 11:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (4, 'G2 Esports', '2022-04-01 12:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (5, 'Team SoloMid', '2022-05-01 13:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (6, 'Cloud9', '2022-06-01 14:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (7, 'FaZe Clan', '2022-07-01 15:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (8, 'Natus Vincere', '2022-08-01 16:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (9, 'Astralis', '2022-09-01 17:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (10, 'Team Envy', '2022-10-01 18:00:00', 'A');
INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (17, 'Time A', '2022-01-01 09:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (21, 'Time B', '2022-02-01 10:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (13, 'Time C', '2022-03-01 11:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (22, 'Time D', '2022-04-01 12:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (16, 'Time E', '2022-05-01 13:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (20, 'Time F', '2022-06-01 14:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (12, 'Time G', '2022-07-01 15:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (19, 'Time H', '2022-08-01 16:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (15, 'Time I', '2022-09-01 17:00:00', 'A');

INSERT INTO db_torneio.time (idgerenteTime, nomeTime, cadastro, ativo)
VALUES (18, 'Time J', '2022-10-01 18:00:00', 'A');


-- TABELA JOGADOR

INSERT INTO db_torneio.jogador (idpessoa, idtime, nomeJogador, cadastro)
VALUES
  (1, 8, 'PlayerX', '2023-05-20 10:00:00'),
  (2, 5, 'GamerZ', '2023-05-20 11:30:00'),
  (3, 2, 'ProGamer', '2023-05-20 13:45:00'),
  (4, 4, 'NinjaMaster', '2023-05-20 09:15:00'),
  (5, 10, 'SniperElite', '2023-05-20 14:30:00'),
  (6, 7, 'ShadowKnight', '2023-05-20 12:00:00'),
  (7, 6, 'RapidFire', '2023-05-20 15:15:00'),
  (8, 3, 'StealthAssassin', '2023-05-20 10:45:00'),
  (9, 1, 'SavageBeast', '2023-05-20 16:00:00'),
  (10, 9, 'CyberWarrior', '2023-05-20 11:00:00'),
  (11, 4, 'LoneWolf', '2023-05-20 17:30:00'),
  (12, 6, 'PhoenixRising', '2023-05-20 13:00:00'),
  (13, 10, 'DeathStroke', '2023-05-20 18:45:00'),
  (14, 3, 'FuriousFalcon', '2023-05-20 14:15:00'),
  (15, 5, 'MysticMage', '2023-05-20 19:30:00');

INSERT INTO db_torneio.jogador (idpessoa, idtime, nomeJogador, cadastro)
VALUES
  (16, 2, 'DarkShadow', '2023-05-20 10:00:00'),
  (17, 8, 'RageMaster', '2023-05-20 11:30:00'),
  (18, 5, 'FrostGamer', '2023-05-20 13:45:00'),
  (19, 9, 'SonicSpeed', '2023-05-20 09:15:00'),
  (20, 4, 'ThunderBolt', '2023-05-20 14:30:00'),
  (21, 7, 'SteelWarrior', '2023-05-20 12:00:00'),
  (22, 1, 'EagleEye', '2023-05-20 15:15:00'),
  (23, 6, 'MightyHammer', '2023-05-20 10:45:00'),
  (24, 10, 'CrimsonFury', '2023-05-20 16:00:00'),
  (25, 3, 'BlazingSun', '2023-05-20 11:00:00');


-- TABELA TORNEIO
INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (2, 6, 'Fortnite Championship', '2023-01-15 10:00:00', '2023-01-20 20:00:00', 50.00, '2023-01-10 08:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (4, 1, 'League of Legends Clash', '2023-02-10 14:00:00', '2023-02-15 22:00:00', 75.00, '2023-02-01 12:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (8, 7, 'Overwatch Showdown', '2023-03-20 18:00:00', '2023-03-25 23:59:59', 100.00, '2023-03-10 16:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (2, 6, 'Valorant Masters', '2023-04-05 09:00:00', '2023-04-10 18:00:00', 80.00, '2023-04-01 06:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (9, 5, 'Rocket League Rumble', '2023-05-15 16:00:00', '2023-05-20 22:00:00', 60.00, '2023-05-10 14:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (1, 8, 'Dota 2 Championship', '2023-06-10 10:00:00', '2023-06-15 20:00:00', 90.00, '2023-06-01 08:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (5, 3, 'Apex Legends Apex Games', '2023-08-10 12:00:00', '2023-08-15 23:59:59', 80.00, '2023-08-01 10:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (7, 4, 'Rainbow Six Siege Showdown', '2023-09-15 15:00:00', '2023-09-20 21:00:00', 70.00, '2023-09-01 13:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (3, 2, 'Street Fighter V World Challenge', '2023-10-20 16:00:00', '2023-10-25 22:00:00', 90.00, '2023-10-01 14:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (10, 7, 'FIFA 24 Champions Cup', '2023-11-10 18:00:00', '2023-11-15 23:59:59', 100.00, '2023-11-01 16:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (1, 6, 'Call of Duty Warzone Warpath', '2023-12-05 20:00:00', '2023-12-10 23:59:59', 75.00, '2023-12-01 18:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (9, 5, 'Super Smash Bros Ultimate Clash', '2024-01-15 12:00:00', '2024-01-20 21:00:00', 60.00, '2024-01-01 10:00:00', 'A');
INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (4, 3, 'Hearthstone Grand Masters', '2024-03-10 16:00:00', '2024-03-15 23:59:59', 70.00, '2024-03-01 14:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (8, 6, 'Gears of War Esports Showdown', '2024-04-15 18:00:00', '2024-04-20 21:00:00', 80.00, '2024-04-01 16:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (2, 5, 'Rainbow Six Siege Invitational', '2024-05-10 20:00:00', '2024-05-15 23:59:59', 90.00, '2024-05-01 18:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (7, 2, 'Smite World Championship', '2024-06-05 22:00:00', '2024-06-10 23:59:59', 75.00, '2024-06-01 20:00:00', 'A');

INSERT INTO db_torneio.torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro, ativo)
VALUES (5, 1, 'Mortal Kombat Klash', '2024-07-15 12:00:00', '2024-07-20 21:00:00', 60.00, '2024-07-01 10:00:00', 'A');


-- TABELA CONFRONTO

INSERT INTO db_torneio.confronto (idtorneio, idtimeA, idtimeB, idchaveamento, encerrado, cadastro)
VALUES
    (2, 8, 3, 2, 'N', '2023-05-20 10:00:00'),
    (3, 6, 1, 4, 'N', '2023-05-20 11:30:00'),
    (1, 5, 9, 3, 'N', '2023-05-20 13:45:00'),
    (7, 2, 10, 1, 'N', '2023-05-20 09:15:00'),
    (4, 4, 7, 5, 'N', '2023-05-20 14:30:00'),
    (6, 9, 6, 2, 'N', '2023-05-20 12:00:00'),
    (8, 1, 8, 1, 'N', '2023-05-20 15:15:00'),
    (5, 10, 3, 4, 'N', '2023-05-20 10:45:00'),
    (11, 7, 2, 3, 'N', '2023-05-20 16:00:00'),
    (13, 5, 10, 5, 'N', '2023-05-20 11:00:00'),
    (15, 3, 6, 1, 'N', '2023-05-20 17:30:00'),
    (9, 9, 4, 4, 'N', '2023-05-20 13:00:00'),
    (10, 2, 7, 2, 'N', '2023-05-20 18:45:00'),
    (12, 8, 1, 5, 'N', '2023-05-20 14:15:00'),
    (14, 6, 5, 3, 'N', '2023-05-20 19:30:00');


