<?php
 include_once'conexao.php';
 session_start();
 function login($usuario, $senha)
 {
     $conn = conectar();
     try {
         $conn->beginTransaction();
         if (isset($usuario) && !empty($usuario) && isset($senha) && !empty($senha)) {
             
             $sqlLista = $conn->prepare("SELECT idpessoa, nome, email FROM pessoa WHERE email=? AND senha = ? ");
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
     } catch (PDOExecption $e) {
         echo 'Exception -> ';
         return ($e->getMessage());
         $conn->rollback();
     };
     $conn = null;
 }
