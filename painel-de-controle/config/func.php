<?php
include_once('conexao.php');
session_start();

function login($usuario, $senha)
{
    $conn = conectar();
    try {
        $conn->beginTransaction();
        if (isset($usuario) && !empty($usuario) && isset($senha) && !empty($senha)) {

            $sqlLista = $conn->prepare("SELECT idpessoa, nome, email FROM pessoa WHERE email=? AND senha=? ");
            $sqlLista->bindValue(1, $usuario, PDO::PARAM_STR);
            $sqlLista->bindValue(2, $senha, PDO::PARAM_STR);
            $sqlLista->execute();

            $conn->commit();

            if ($sqlLista->rowCount() > 0) {
                return $sqlLista->fetchAll(PDO::FETCH_OBJ);
            } else {
                return 'Vazio';
            };
        } else {
            return 'nUsuario';
        };
    } catch (PDOException $e) {
        echo 'Exception -> ';
        return ($e->getMessage());
        $conn->rollback();
    };
    $conn = null;
}

function verificarEmail($email){
    $conn = conectar();
    try {
        $verificar = $conn->prepare("SELECT COUNT(*) AS total FROM pessoa WHERE email = ?");
        $verificar->bindValue(1,$email,PDO::PARAM_STR);
        $verificar->execute();

        $resultado = $verificar->fetch(PDO::FETCH_ASSOC);

        return $resultado['total'] > 0;
    } catch (PDOException $e){
        return false;
    }
}



function cadastrar($genero,$nome,$email,$senha){

    if(verificarEmail($email)){
        echo 'Email ja cadastrado';
        return false;
    }

    $conn = conectar();

    date_default_timezone_set('America/Sao_Paulo');
    $dataAtual = date("Y-m-d H:i:s");

    try{
        $conn->beginTransaction();
        if (isset($email) && !empty($email) && isset($senha) && !empty($senha)){
            $inserir = $conn->prepare("INSERT INTO pessoa (idgenero,nome,email,senha,cadastro) VALUES (?,?,?,?,?);");
            $inserir->bindValue(1,$genero,PDO::PARAM_INT);
            $inserir->bindValue(2,$nome,PDO::PARAM_STR);
            $inserir->bindValue(3,$email,PDO::PARAM_STR);
            $inserir->bindValue(4,$senha,PDO::PARAM_STR);
            $inserir->bindValue(5,$dataAtual,PDO::PARAM_STR);
            $inserir->execute();

            $conn->commit();

            if ($inserir->rowCount() > 0){
                return 'Usuario cadastrado';
            } else {
                return 'Cadastro invalido!';
            }

        } else {
            return'Dados invalidos';
        }
    } catch(PDOException $e) {
        $conn->rollBack();
        return 'Exception -> ' . $e->getMessage();
    }
}

function listarIndependente($info,$tabela){
    $conn = conectar();
    $lista = $conn->query("SELECT $info FROM $tabela");

    if ($lista->rowCount() > 0) {
        return $lista->fetchAll(PDO::FETCH_OBJ);
    } else {
        return 'Vazio';
    }

}

function listarPessoa() {
    $conn = conectar();
    $query = "SELECT p.idpessoa, p.nome, p.email, g.genero, p.cadastro, p.ativo 
    FROM pessoa p
    INNER JOIN genero g ON p.idgenero = g.idgenero
    ORDER BY p.idpessoa ASC;";

    $lista = $conn->query($query);
    
    if ($lista->rowCount() > 0) {
        return $lista->fetchAll(PDO::FETCH_OBJ);
    } else {
        return 'Vazio';
    }
}


function listarGerenteTime() {
    $conn = conectar();
    $query = "SELECT g.idgerenteTime, p.nome
    FROM gerenteTime g
    INNER JOIN pessoa p ON g.idpessoa = p.idpessoa;
    ORDER BY g.idgerenteTime ASC;";

    $lista = $conn->query($query);
    
    if ($lista->rowCount() > 0) {
        return $lista->fetchAll(PDO::FETCH_OBJ);
    } else {
        return 'Vazio';
    }
}



function listarTime() {
    $conn = conectar();
    $query = "SELECT e.idtime, e.nomeTime, p.nome as responsavelTime, e.cadastro, e.ativo 
              FROM equipe e 
              INNER JOIN gerenteTime g ON e.idgerenteTime = g.idgerenteTime 
              INNER JOIN pessoa p ON g.idpessoa = p.idpessoa";

    $lista = $conn->query($query);
    
    if ($lista->rowCount() > 0) {
        return $lista->fetchAll(PDO::FETCH_OBJ);
    } else {
        return 'Vazio';
    }
}


function cadastrarTime($nome,$gerente){
    $conn = conectar();

    date_default_timezone_set('America/Sao_Paulo');
    $dataAtual = date("Y-m-d H:i:s");

    try{
        $conn->beginTransaction();

        if(isset($nome) && isset($gerente)){
            $inserir = $conn->prepare("INSERT INTO equipe (nomeTime,idgerenteTime,cadastro) VALUES (?,?,?);");
            $inserir->bindValue(1,$nome,PDO::PARAM_STR);
            $inserir->bindValue(2,$gerente,PDO::PARAM_INT);
            $inserir->bindValue(3,$dataAtual,PDO::PARAM_STR);
            $inserir->execute();

            $conn->commit();

            if ($inserir->rowCount() > 0){
                return 'Usuario cadastrado';
            } else {
                return 'Cadastro invalido!';
            }

        } else {
            echo 'Dados invalidos!';
        }

    } catch(PDOException $e) {
        $conn -> rollBack();
        return 'Exception -> ' . $e->getMessage();
    }
}



function listarTorneios() {
    $conn = conectar();
    $query = "SELECT t.idtorneio, t.nomeTorneio, c.categoria, p.premiacao, t.dataInicio, t.dataTermino,t.valorTaxa, t.cadastro, t.ativo
    FROM torneio t
    INNER JOIN categoria c ON t.idcategoria = c.idcategoria
    INNER JOIN premiacao p ON t.idpremiacao = p.idpremiacao
    ORDER BY t.idtorneio ASC;";

    $lista = $conn->query($query);
    
    if ($lista->rowCount() > 0) {
        return $lista->fetchAll(PDO::FETCH_OBJ);
    } else {
        return 'Vazio';
    }
}

function cadastrarTorneio($nome, $categoria, $premiacao, $dataInicio, $dataTermino, $valorTaxa)
{
    $conn = conectar();

    date_default_timezone_set('America/Sao_Paulo');
    $dataAtual = date("Y-m-d H:i:s");

    try {
        $conn->beginTransaction();

        if (isset($categoria) && isset($premiacao) && isset($nome) && isset($dataInicio) && isset($dataTermino) && isset($valorTaxa) && isset($dataAtual)) {

            $inserir = $conn->prepare("INSERT INTO torneio (idcategoria, idpremiacao, nomeTorneio, dataInicio, dataTermino, valorTaxa, cadastro) VALUES (?,?,?,?,?,?,?);");
            $inserir->bindValue(1, $categoria, PDO::PARAM_INT);
            $inserir->bindValue(2, $premiacao, PDO::PARAM_INT);
            $inserir->bindValue(3, $nome, PDO::PARAM_STR);
            $inserir->bindValue(4, $dataInicio, PDO::PARAM_STR);
            $inserir->bindValue(5, $dataTermino, PDO::PARAM_STR);
            $inserir->bindValue(6, $valorTaxa, PDO::PARAM_INT);
            $inserir->bindValue(7, $dataAtual, PDO::PARAM_STR);
            $inserir->execute();

            $conn->commit();

            if ($inserir->rowCount() > 0) {
                return 'Torneio cadastrado';
            } else {
                return 'Cadastro inválido!';
            }
        } else {
            return 'Dados inválidos!';
        }
    } catch (PDOException $e) {
        $conn->rollBack();
        return 'Exception -> ' . $e->getMessage();
    }
}

function cadastrarConfronto($nome, $equipeA, $equipeB, $chave)
{
    $conn = conectar();

    date_default_timezone_set('America/Sao_Paulo');
    $dataAtual = date("Y-m-d H:i:s");

    try {
        $conn->beginTransaction();

        if (isset($nome) && isset($equipeA) && isset($equipeB) && isset($chave)) {

            $inserir = $conn->prepare("INSERT INTO confronto (idtorneio, idtimeA, idtimeB, idchaveamento cadastro) VALUES (?,?,?,?,?);");
            $inserir->bindValue(1, $nome, PDO::PARAM_INT);
            $inserir->bindValue(2, $equipeA, PDO::PARAM_INT);
            $inserir->bindValue(3, $equipeB, PDO::PARAM_INT);
            $inserir->bindValue(4, $chave, PDO::PARAM_INT);
            $inserir->bindValue(5, $dataAtual, PDO::PARAM_STR);
            $inserir->execute();

            $conn->commit();

            if ($inserir->rowCount() > 0) {
                return 'Torneio cadastrado';
            } else {
                return 'Cadastro inválido!';
            }
        } else {
            return 'Dados inválidos!';
        }
    } catch (PDOException $e) {
        $conn->rollBack();
        return 'Exception -> ' . $e->getMessage();
    }
}


function listarConfronto() {
    $conn = conectar();
    $query = "SELECT c.idconfronto, t.nomeTorneio, equipeA.nomeTime as timeA, equipeB.nomeTime as timeB, ch.chaveamento, c.encerrado, c.cadastro
    FROM confronto c
    INNER JOIN torneio t ON c.idtorneio = t.idtorneio
    INNER JOIN equipe equipeA ON c.idtimeA = equipeA.idtime
    INNER JOIN equipe equipeB ON c.idtimeB = equipeB.idtime
    INNER JOIN chaveamento ch ON c.idchaveamento = ch.idchaveamento
    ORDER BY c.idconfronto ASC;";

    $lista = $conn->query($query);
    
    if ($lista->rowCount() > 0) {
        return $lista->fetchAll(PDO::FETCH_OBJ);
    } else {
        return 'Vazio';
    }
}


function cadastrarCategoria($nome)
{
    $conn = conectar();

    date_default_timezone_set('America/Sao_Paulo');
    $dataAtual = date("Y-m-d H:i:s");

    try {
        $conn->beginTransaction();

        if (isset($nome) ) {

            $inserir = $conn->prepare("INSERT INTO categoria (categoria,cadastro) VALUES (?,?);");
            $inserir->bindValue(1, $nome, PDO::PARAM_STR);
            $inserir->bindValue(2, $dataAtual, PDO::PARAM_STR);
            $inserir->execute();

            $conn->commit();

            if ($inserir->rowCount() > 0) {
                return 'Torneio cadastrado';
            } else {
                return 'Cadastro inválido!';
            }
        } else {
            return 'Dados inválidos!';
        }
    } catch (PDOException $e) {
        $conn->rollBack();
        return 'Exception -> ' . $e->getMessage();
    }
}

function delete($tabela, $nomeid, $id)
{
    $conn = conectar();
    try {

        $conn->beginTransaction();

        $query = $conn->prepare("DELETE FROM $tabela WHERE $nomeid = ? ");
        $query->bindValue(1, $id, PDO::PARAM_INT);
        $query->execute();

        $conn->commit();

        if ($query->rowCount() > 0) {
            echo 'Deletado com sucesso!';
        } else {
            echo 'Nao foi possivel deletar!';
        }
    } catch (PDOException $e) {
        echo 'Erro ao deletar o registro';
        return ($e->getMessage());
        $conn->rollBack();
    }
    $conn = null;
}

