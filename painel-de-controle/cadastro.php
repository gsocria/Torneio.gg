<?php
include_once('./config/func.php');

?>


<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login.css">
    <title>Torneio.gg</title>
</head>

<body>

    <section class="main">
        <div class="tudo">

            <div class="img">
                <img src="./img/fotor_2023-5-21_16_51_57.png" alt="">
            </div>

            <div class="login">
                <h2>Cadastrar</h2>
                <form action="./redirecionamento/cadastrarRedirecionamento.php" method="post">
                    <label for="nome">Nome:</label>
                    <input type="text" id="nome" name="nome" required><br><br>
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required><br><br>
                    <label for="genero">Gênero:</label>
                    <select name="genero" id="genero">
                        <?php
                        $listarGenero = listarIndependente('*', 'genero');
                        foreach ($listarGenero as $itemLinha) {
                            $idgenero = $itemLinha->idgenero;
                            $genero = $itemLinha->genero;
                        ?>
                        <option value="<?php echo "$idgenero" ?>"> <?php echo "$genero" ?> </option>

                        <?php } ?>
                    </select><br><br>
                    <label for="password">Senha:</label>
                    <input type="password" id="password" name="password" required><br><br>
                    <input type="submit" value="Cadastrar">
                    <div class="cadastro">
                        <p>Ja possui uma conta? <a href="index.php">fazer login</a></p>
                    </div>
                </form>
            </div>

        </div>

    </section>

</body>

</html>