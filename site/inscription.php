<?php
session_start();
    include('include/db.php');
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Discution</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" media="screen" href="css/app.css" />
</head>

<body>

    <a href="index.php">Se connecter</a>

    <div class="formulaire">   
        <form action="" method="post">
            <input type="text" class="inpout" name="pseudo" placeholder="pseudo *"><br/><br/>
            <input type="password" class="inpout" name="mdp" id="mdp" placeholder="mot de passe *"><br/><br/>
            <input type="password" class="inpout" name="mdp_conf" id="mdp_conf" placeholder="confirmation mot de passe *"><br/><br/>
            <input type="submit" class="btn" name="inscription" value="S'inscrire">
        </form>
        <p>* champs requis</p>
     <?php
         if (isset($_POST['inscription'])) {
            if (!empty($_POST['pseudo']) && !empty($_POST['mdp']) && !empty($_POST['mdp_conf'])) {

                $pseudo = $_POST['pseudo'];
                $mdp = $_POST['mdp'];
                $mdp_conf = $_POST['mdp_conf'];

                if ($mdp == $mdp_conf) {
                    $req = $db->prepare('SELECT pseudo FROM user WHERE pseudo = :pseudo');
                    $req->execute(array(
                        'pseudo' => $pseudo
                    )) or die('requte select');

                    if ($req->rowCount() == 0) {

                        $reqs = $db->prepare('INSERT INTO user (pseudo, mdp, connecter) VALUE (:pseudo, :mdp, 0)');
                        $reqs->execute(array(
                            'pseudo' => $pseudo,
                            'mdp' => $mdp
                    ))or die('requte insert');

                    $_SESSION['Message'] = 'Votre compte a était crée';

                    header('location:index.php');

                    }else{
                        echo '<p class=\'error\'> Nom d\'utilisateur déjà existant </p>';
                    }
                }else {
                    echo '<p class=\'error\'> les mot de passe ne sont pas identique</p>';
                }
            }else {
                echo '<p class=\'error\'> Les champ requies ne sont pas remplie</p>';
            }
            
        }

    ?>
    
        
    </div>
    <script src="js/jquery.js"></script>    
    <script src="js/transit.js"></script>
    <script src="js/app.js"></script>
</body>

</html>
