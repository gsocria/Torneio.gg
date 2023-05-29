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