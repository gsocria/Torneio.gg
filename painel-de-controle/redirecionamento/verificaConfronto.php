<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['nome']) && isset($_POST['equipeA']) && isset($_POST['equipeB']) && isset($_POST['chave'])) {
    $nome = $_POST['nome'];
    $equipeA = $_POST['equipeA'];
    $equipeB = $_POST['equipeB'];
    $chave = $_POST['chave'];


    $cadastrar = cadastrarConfronto($nome, $equipeA, $equipeB, $chave);

    $_SESSION['cadastrado'] = $cadastrar;

    if ($cadastrar) {
        header("location:../painelControle.php?page=confrontos");
    } else {
        echo "<script>javascript:alert('Não foi possível cadastrar o torneio');</script>";
    }

}