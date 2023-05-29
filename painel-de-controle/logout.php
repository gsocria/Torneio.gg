<?php

include_once('./config/conexao.php');
include_once('./config/func.php');

session_destroy();
header("location:index.php")

?>