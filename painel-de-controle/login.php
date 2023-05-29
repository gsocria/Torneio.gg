
<?php
include_once('conexao.php');
include_once('func.php');



if (isset($_POST['username']) && isset($_POST['password'])){

   $listarUsuaro = login($_POST['username'],$_POST['password']);
        foreach($listarUsuaro as $listarUsuaroItem){
            $idpessoa = $listarUsuaroItem->idpessoa;
            $nome = $listarUsuaroItem->nome;
            $email = $listarUsuaroItem->email;
        }
        $_SESSION['idpessoa'] = $idpessoa;
        $_SESSION['nome'] = $nome;
        $_SESSION['email'] = $email;

    //$username = $_SESSION['username'];
    //$password = $_SESSION['password'];
    header("location:painel.php");
}else{
    echo"Usuario não encontrado";
}

?>
