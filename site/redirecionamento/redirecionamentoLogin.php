<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['email-login']) && isset($_POST['senha-login'])) {

    $email = $_POST['email-login'];
    $senha = $_POST['senha-login'];


   $listarUsuario = login($email,$senha);

   if (!empty($listarUsuario)) {
       foreach ($listarUsuario as $listarUsuarioItem) {
           $idpessoa = $listarUsuarioItem->idpessoa;
           $nome = $listarUsuarioItem->nome;
           $email = $listarUsuarioItem->email;
       }

       $_SESSION['idpessoa'] = $idpessoa;
       $_SESSION['nome'] = $nome;
       $_SESSION['email'] = $email;


       header("location:../logado.php");
       exit();
   } else {
       echo "Usuário não encontrado";
   }
} 



?>