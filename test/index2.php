<?php
    $db = new PDO('mysql:host=localhost;dbname=base_test', 'root', '');
    $req = $db->query('SELECT * FROM test');
    $donne = $req->fetchall();

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>test donné</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="main.js"></script>
</head>
<body>
    <table class="table">
        <thead>
            <tr>
                <th>#</th>
                <th>nom</th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($donne as $key) : ?>
                <tr>
                    <th><?= $key['id'] ?></th>
                    <th><a href="desc.php?id=<?= $key['id'] ?>"><?= $key['nom'] ?></a></th>
                    
                </tr>
            <?php endforeach?>
        </tbody>
    </table>
</body>
</html>