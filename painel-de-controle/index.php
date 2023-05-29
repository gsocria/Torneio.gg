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
                <h2>Login</h2>
                <form action="./redirecionamento/loginRedirecionamento.php" method="post">
                    <label for="email">Email:</label>
                    <input type="text" id="email" name="email" required><br><br>
                    <label for="password">Senha:</label>
                    <input type="password" id="password" name="password" required><br><br>
                    <input type="submit" value="Entrar">
                    <div class="cadastro">
                        <p>Ainda nao tem uma conta? <a href="cadastro.php">Cadastrar</a></p>
                    </div>

                </form>
            </div>

        </div>

    </section>

</body>

</html>