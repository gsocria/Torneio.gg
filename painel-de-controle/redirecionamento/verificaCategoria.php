<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['nome'])) {
    $nome = $_POST['nome'];



    $cadastrar = cadastrarCategoria($nome);

    $_SESSION['cadastrado'] = $cadastrar;

    if ($cadastrar) {
        header("location:../painelControle.php?page=categorias");
    } else {
        echo "<script>javascript:alert('Não foi possível cadastrar o torneio');</script>";
    }

}