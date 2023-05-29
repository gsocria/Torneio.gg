<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['nome']) && isset($_POST['gerente'])) {
    $nome = $_POST['nome'];
    $gerente = $_POST['gerente'];

    $cadastrar = cadastrarTime($nome, $gerente);

    if ($cadastrar) {
        echo $cadastrar;
        echo '<script>';
        echo 'alert("Time cadastrado com sucesso");';
        echo '</script>';
    }
}
