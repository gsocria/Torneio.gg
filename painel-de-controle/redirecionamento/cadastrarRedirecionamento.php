<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['nome']) && isset($_POST['email']) && isset($_POST['genero']) && isset($_POST['password'])) {
    $nome = $_POST['nome'];
    $email = $_POST['email'];
    $genero = $_POST['genero'];
    $senha = $_POST['password'];

    $cadastrar = cadastrar($genero, $nome, $email, $senha);

    if($cadastrar){
        header("location:../index.php");
    } else {

        header("location:../cadastro.php"); 
    }
} else {
    echo 'Nao foi possivel realizar o cadastro, verifique as informaçoes!';
}
?>

