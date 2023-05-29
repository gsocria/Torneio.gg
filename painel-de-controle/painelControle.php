<?php

include_once('./config/conexao.php');
include_once('./config/func.php');

$email = $_SESSION['email'];

if (!isset($email)) {
    header("location:index.php");
}


?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <link href="https://fonts.googleapis.com/css2?family=Michroma&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet">
    <title>Torneio.gg</title>
</head>

<body>

    <header>
        <div class="logo">
            <a href="#">

            </a>
            <div>

            </div>
        </div>
    </header>

    <div class="container">
        <div class="sidebar">
            <ul>
                <li>Seja bem vindo(a) <?php echo $_SESSION['nome'] ?></li>
                <li><a href="painelControle.php?page=pessoa">Usuarios</a></li>
                <li><a href="painelControle.php?page=torneios">Torneios</a></li>
                <li><a href="painelControle.php?page=categorias">Categorias</a></li>
                <li><a href="painelControle.php?page=times">Times</a></li>
                <li><a href="painelControle.php?page=confrontos">Confrontos</a></li>
                <li>
                    <!-- <label for="opcoes">Adicionar:</label>
                    <select id="opcoes">
                        <option>Selecione</option>
                        <option value="opcao1"><a href="painelControle.php?page=addTorneio">Torneios</a></option>
                        <option value="opcao2"><a href="painelControle.php?page=addCategoria">Categorias</a></option>
                        <option value="opcao3"><a href="painelControle.php?page=addTime">Times</a></option>
                    </select> -->
                </li>
            </ul>

            <ul class="sair">
                <li><a href="painelControle.php?page=logout">Sair</a></li>
            </ul>
        </div>
        <div class="content">


            <?php

            $routes = [
                'torneios' => 'torneios.php',
                'categorias' => 'categorias.php',
                'times' => 'times.php',
                'confrontos' => 'confrontos.php',
                'logout' => 'logout.php',
                'pessoa' => 'pessoa.php'
            ];

            if (isset($_GET['page']) && !empty($_GET['page'])) {
                $page = $_GET['page'];

                if (isset($routes[$page])) {
                    $file = $routes[$page];
                    include_once $file;
                } else {
                    echo 'Página não encontrada';
                }
            }
            ?>
        </div>
    </div>



</body>

</html>