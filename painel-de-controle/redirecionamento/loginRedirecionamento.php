<?php
include_once('../config/conexao.php');
include_once('../config/func.php');

if (isset($_POST['email']) && isset($_POST['password'])) {
   $listarUsuario = login($_POST['email'], $_POST['password']);

   if (!empty($listarUsuario)) {
       foreach ($listarUsuario as $listarUsuarioItem) {
           $idpessoa = $listarUsuarioItem->idpessoa;
           $nome = $listarUsuarioItem->nome;
           $email = $listarUsuarioItem->email;
       }

       $_SESSION['idpessoa'] = $idpessoa;
       $_SESSION['nome'] = $nome;
       $_SESSION['email'] = $email;


       header("location:../painelControle.php");
       exit();
   } else {
       echo "Usuário não encontrado";
   }
} 



?>


