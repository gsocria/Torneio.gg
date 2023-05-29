<?php
include_once('conexao.php');
include_once('func.php');
        $idPessoa = $_SESSION['idpessoa'] = $idpessoa;
        $_SESSION['nome'] = $nome;
        $_SESSION['email'] = $email;
if($idPessoa==2){
    session_destroy();
    header("location:index.php");
}else{
    echo'Voce está no painel de controle';
}


?>
