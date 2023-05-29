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
  <title>Times</title>
</head>

<body>

  <div>

    <button class="abrir" onclick="abrirModal()">Adicionar novo time</button>
    <div id="modal">
      <div id="modal-content">
        <form action="./redirecionamento/verificaTime.php" method="post">
        <label for="nome">Nome do time:</label>
        <input type="text" name="nome" id="nome" required>
        <label for="gerente">Gerente:</label>
        <select name="gerente" id="gerente">
        <?php
         $listarGerente = listarGerenteTime();

         foreach($listarGerente as $listaItem){
          $idgerente = $listaItem-> idgerenteTime;
          $nome = $listaItem->nome;
         ?>

         <option value="<?php echo "$idgerente" ?>"> <?php echo "$nome" ?> </option>

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
          <th>NOME DO TIME</th>
          <th>GERENTE DO TIME</th>
          <th>CADASTRO</th>
          <th>ATIVO</th>
        </tr>
        <?php
        $listausuario = listarTime();
        foreach ($listausuario as $itemlinha) {
          $idtime = $itemlinha->idtime;
          $nomeTime = $itemlinha->nomeTime;
          $nomeGerente = $itemlinha->responsavelTime;
          $cadastro = $itemlinha->cadastro;
          $ativo = $itemlinha->ativo;

        ?>

          <tr>
            <th>
              <?php echo $idtime ?>
            </th>
            <th>
              <?php echo $nomeTime  ?>
            </th>
            <th>
              <?php echo $nomeGerente  ?>
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