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
<div>

<button class="abrir" onclick="abrirModal()">Adicionar novo time</button>
<div id="modal">
  <div id="modal-content">
    <form action="./redirecionamento/verificaCategoria.php" method="post">
    <label for="nome">Nome da categoria:</label>
    <input type="text" name="nome" id="nome" required>

    <input type="submit" value="Cadastrar">

    <button class="fechar" onclick="fecharModal()">Fechar</button>
    </form>

  </div>
  <script>
  function abrirModal() {
    document.getElementById('modal').style.display = 'block';
  }

  function fecharModal() {
    document.getElementById('modal').style.display = 'none';
  }
</script>
</div>
</div>
  <div class="tabela-div">
    <table border=1px class="tabela">
      <tbody>
        <tr >
          <th>ID</th>
          <th>NOME</th>
          <th>CADASTRO</th>
          <th >ATIVO</th>
        </tr>

        <?php
        $listausuario = listarIndependente('*','categoria');
        foreach ($listausuario as $itemlinha) {
          $idcategoria = $itemlinha->idcategoria;
          $categoria = $itemlinha->categoria;
          $cadastro = $itemlinha->cadastro;
          $ativo = $itemlinha->ativo;

        ?>

          <tr>
          <th>
              <?php echo $idcategoria ?>
            </th>
            <th>
              <?php echo $categoria ?>
            </th>
            <th>
              <?php echo $cadastro  ?>
            </th>
            <th>
              <?php echo  $ativo ?>
            </th>
            <th>
              
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