<?php
include_once('./config/conexao.php');
include_once('./config/func.php');

?>

<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Torneios</title>
</head>

<body>

    <div class="tabela-div">
        <table border=1px class="tabela">
            <tbody>
                <tr>
                    <th>ID</th>
                    <th>NOME</th>
                    <th>EMAIL</th>
                    <th>SENHA</th>
                    <th>CADASTRO</th>
                    <th>ATIVO</th>
                </tr>

                <?php
                $listausuario = listarPessoa();
                foreach ($listausuario as $itemlinha) {
                    $idpessoa = $itemlinha->idpessoa;
                    $nome = $itemlinha->nome;
                    $email = $itemlinha->email;
                    $genero = $itemlinha->genero;
                    $cadastro = $itemlinha->cadastro;
                    $ativo = $itemlinha->ativo;



                ?>

                    <tr>
                        <th>
                            <?php echo $idpessoa ?>
                        </th>
                        <th>
                            <?php echo $nome ?>
                        </th>
                        <th>
                            <?php echo $email  ?>
                        </th>
                        <th>
                            <?php echo  $genero ?>
                        </th>
                        <th>
                            <?php echo  $cadastro ?>
                        </th>
                        <th>
                            <?php echo  $ativo ?>
                        </th>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>