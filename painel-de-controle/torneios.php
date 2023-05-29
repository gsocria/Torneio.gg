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

    <button class="abrir" onclick="abrirModal()">Adicionar novo torneio</button>
    <div id="modal">
      <div id="modal-content">
        <form action="./redirecionamento/verificaTorneio.php" method="post">
          <label for="nome">Nome do torneio:</label>
          <input type="text" name="nome" id="nome" required>
          <label for="categoria">Categoria:</label>
          <select name="categoria" id="categoria">
            <?php

            $listarCategoria = listarIndependente('*', 'categoria');

            foreach ($listarCategoria as $listaItem) {
              $idcategoria = $listaItem->idcategoria;
              $categoria = $listaItem->categoria;
            ?>

              <option value="<?php echo "$idcategoria" ?>"> <?php echo "$categoria" ?> </option>

            <?php } ?>
          </select>


          <label for="premiacao">Premiação:</label>
          <select name="premiacao" id="premiacao">

            <?php

            $listarPremiacao = listarIndependente('*', 'premiacao');

            foreach ($listarPremiacao as $listaItem) {
              $idpremiacao = $listaItem->idpremiacao;
              $premiacao = $listaItem->premiacao;
            ?>

              <option value="<?php echo "$idpremiacao" ?>"> <?php echo "$premiacao" ?> </option>

            <?php } ?>
          </select>

          <label for="dataInicio">Data de inicio da inscrição:</label>
          <input type="date" name="dataInicio" id="dataInicio" required>
          <label for="dataTermino">Data do final da inscrição:</label>
          <input type="date" name="dataTermino" id="dataTermino" required>
          <label for="valorTaxa">Taxa de entrada</label>
          <input type="text" name="valorTaxa" id="valorTaxa" placeholder="Digite apenas o valor!" required>


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
          <th>NOME</th>
          <th>CATEGORIA</th>
          <th>PREMIAÇÃO</th>
          <th>INICIO DE INSCRIÇÃO</th>
          <th>FINAL DA INSCRIÇÃO</th>
          <th>TAXA DE ENTRADA</th>
          <th>CADASTRO</th>
          <th>ATIVO</th>
        </tr>

        <?php
        $listausuario = listarTorneios();
        foreach ($listausuario as $itemlinha) {
          $idtorneio = $itemlinha->idtorneio;
          $nomeTorneio = $itemlinha->nomeTorneio;
          $idcategoria = $itemlinha->categoria;
          $idpremiacao = $itemlinha->premiacao;
          $dataInicio = $itemlinha->dataInicio;
          $dataTermino = $itemlinha->dataTermino;
          $valorTaxa = $itemlinha->valorTaxa;
          $cadastro = $itemlinha->cadastro;
          $ativo = $itemlinha->ativo;



        ?>

          <tr>
            <th>
              <?php echo $idtorneio ?>
            </th>
            <th>
              <?php echo $nomeTorneio ?>
            </th>
            <th>
              <?php echo $idcategoria  ?>
            </th>
            <th>
              <?php echo  $idpremiacao ?>
            </th>
            <th>
              <?php echo  $dataInicio ?>
            </th>
            <th>
              <?php echo  $dataTermino ?>
            </th>
            <th>
              <?php echo  $valorTaxa ?>
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