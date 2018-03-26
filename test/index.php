<?php

    $db = new PDO('mysql:host=localhost;dbname=base_test', 'root', '');
    $req = $db->query('SELECT id, nom FROM test');
    $donne = $req->fetchall();

?>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <link rel="stylesheet" href="app_test.css">
    <script src="js/jquery.js"></script> 
    
   <script src="desc.js"></script>
  <title>Document</title>
  
  
</head>
<body>
  

    <div class="page" id="page">
      <h1>liste de personne</h1>
      <button class="supre" type="reset">Reset</button>
    </div>

    <div class="slidebar">
        <form action="" method="POST">
          <input type="text" name="search" id="search">
          <input type="submit" id="search_btn" value="">
        </form>
        <?php foreach ($donne as $key) : ?>
          <a href="<?= $key['id'] ?>" class="sidebar-item"><?= $key['nom'] ?></a>
        <?php endforeach?>
    </div>

    <script>
        $('a').click(function(e){ 

          var iduser = $(this).attr('href');

          e.preventDefault();


          getPersonne(iduser);

        });
    </script>

    <script src="js/transit.js"></script>
    <script src="app_test.js"></script>
</body>
</html>