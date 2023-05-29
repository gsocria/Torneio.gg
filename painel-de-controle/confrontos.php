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

<button class="abrir" onclick="abrirModal()">Adicionar novo confronto</button>
<div id="modal">
  <div id="modal-content">
    <form action="./redirecionamento/verificaConfronto.php" method="post">
      <label for="nome">Nome do torneio:</label>
      <input type="text" name="nome" id="nome" required>
      <label for="equipeA">Equipe A:</label>
      <select name="equipeA" id="equipeA">
        <?php

        $listarCategoria = listarIndependente('*', 'equipe');

        foreach ($listarCategoria as $listaItem) {
          $idtimeA = $listaItem->idtime;
          $nomeTimeA = $listaItem->nomeTime;
        ?>

          <option value="<?php echo "$idtimeA" ?>"> <?php echo "$nomeTimeA" ?> </option>

        <?php } ?>
      </select>


      <label for="equipeB">Equipe B:</label>
      <select name="equipeB" id="equipeB">
        <?php

        $listarCategoria = listarIndependente('*', 'equipe');

        foreach ($listarCategoria as $listaItem) {
          $idtimeB = $listaItem->idtime;
          $nomeTimeB = $listaItem->nomeTime;
        ?>

          <option value="<?php echo "$idtimeB" ?>"> <?php echo "$nomeTimeB" ?> </option>

        <?php } ?>
      </select>

      <label for="chave">Chave:</label>
      <select name="chave" id="chave">
        <?php

        $listarCategoria = listarIndependente('*', 'chaveamento');

        foreach ($listarCategoria as $listaItem) {
          $idchaveamento = $listaItem->idchaveamento;
          $chaveamento = $listaItem->chaveamento;
        ?>

          <option value="<?php echo "$idchaveamento" ?>"> <?php echo "$chaveamento" ?> </option>

        <?php } ?>
      </select>

      <input type="submit" value="Cadastrar">

      <button class="fechar" onclick="fecharModal()">Fechar</button>
    </form>

  </div>
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
  <div class="tabela-div">
    <table border=1px class="tabela">

      <tbody>
        <tr>
          <th>ID</th>
          <th>NOME DO TORNEIO</th>
          <th>EQUIPE A</th>
          <th>EQUIPE B</th>
          <th>CHAVE</th>
          <th>ENCERRADO</th>
          <th>CADASTRO</th>
        </tr>
        <?php
        $listausuario = listarConfronto();
        foreach ($listausuario as $itemlinha) {
          $idconfronto = $itemlinha->idconfronto;
          $nomeTorneio = $itemlinha->nomeTorneio;
          $equipeA = $itemlinha->timeA;
          $equipeB = $itemlinha->timeB;
          $chave = $itemlinha->chaveamento;
          $encerrado = $itemlinha->encerrado;
          $cadastro = $itemlinha->cadastro;



        ?>

          <tr>
            <th>
              <?php echo $idconfronto ?>
            </th>
            <th>
              <?php echo $nomeTorneio  ?>
            </th>
            <th>
              <?php echo  $equipeA ?>
            </th>
            <th>
              <?php echo  $equipeB ?>
            </th>
            <th>
              <?php echo  $chave ?>
            </th>
            <th>
              <?php echo  $encerrado ?>
            </th>
            <th>
              <?php echo  $cadastro ?>
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