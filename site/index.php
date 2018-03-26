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
    <link rel="stylesheet" type="text/css" media="screen and (max-width:500px)" href="css/app_min.css" />

</head>

<body>
    <div class="formulaire">  
        <?php

            if (!empty($_SESSION['Message'])) {
                echo $_SESSION['Message'];
            }
        
         ?> 
        <form action="" id="loginform" method="post">
            <input type="text" id="username" class="inpout" name="pseudo" placeholder="pseudo"><br/><br/>
            <input type="password" id="mpd" class="inpout" name="mdp" id="mdp" placeholder="mot de passe"><br/><br/>
            <center><input type="submit" class="btn" name="loger" value="Se connecté"></center>
        </form>
        <p class="t_logout">Vous n'êtes pas inscript ? <a href="inscription.php">Inscrivez-vous</a></p>

    <?php
        if (isset($_POST['loger']) && !empty($_POST['pseudo']) && !empty($_POST['mdp'])) {

            $pseudo = $_POST['pseudo'];
            $mdp = $_POST['mdp'];

            $req = $db->prepare('SELECT * FROM user WHERE pseudo = :pseudo AND mdp = :mdp AND connecter = false');
            $req->execute(array(
                'pseudo' => $pseudo,
                'mdp' => $mdp
            ));

            
                if ($req->rowCount() == 0) {

                    echo '<p class=\'error t_logout\'> Les information rentré nes sont pas bonnes</p>';
                    
                }else{
                    $_SESSION['auth'] = array('pseudo' => $pseudo , 'mdp' => $mdp );
                    
                    $req = $db->prepare('UPDATE user SET connecter = :co WHERE pseudo = :pseudo');
                    $req->bindValue('co', true, PDO::PARAM_BOOL);
                    $req->bindValue('pseudo', $pseudo, PDO::PARAM_STR);
                    $req->execute();
                    header('location: discution.php');
                    
                    
                }

        }
    ?>
    
        
    </div>


    <script src="js/jquery.js"></script>    
    <script src="js/transit.js"></script>
    <script src="js/app.js"></script>


</body>

</html>
