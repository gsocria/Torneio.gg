<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['nome']) && isset($_POST['categoria']) && isset($_POST['premiacao']) && isset($_POST['dataInicio']) && isset($_POST['dataTermino']) && isset($_POST['valorTaxa'])) {
    $nome = $_POST['nome'];
    $categoria = $_POST['categoria'];
    $premiacao = $_POST['premiacao'];
    $dataInicio = $_POST['dataInicio'];
    $dataTermino = $_POST['dataTermino'];
    $valorTaxa = $_POST['valorTaxa'];

    $dataInicioFormatada = date('Y-m-d', strtotime($dataInicio));
    $dataTerminoFormatada = date('Y-m-d', strtotime($dataTermino));

    $cadastrar = cadastrarTorneio($nome, $categoria, $premiacao, $dataInicioFormatada, $dataTerminoFormatada, $valorTaxa);

    $_SESSION['cadastrado'] = $cadastrar;

    if ($cadastrar) {
        header("location:../painelControle.php?page=torneios");
    } else {
        echo "<script>javascript:alert('Não foi possível cadastrar o torneio');</script>";
    }

}
