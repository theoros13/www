<?php
session_start();
    include('include/action.php');
    include('include/db.php');

    if (!verif::isLogged()) {
        header('location: index.php');
    }

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" type="text/css" media="screen" href="css\app.css" />
    <link rel="stylesheet" type="text/css" media="screen and (max-width:500px)" href="css/app_min.css" />
    <script src="js/jquery.js"></script>
    <script src="tchat.js"></script>
    <script>
        <?php
            $req = $db->query('SELECT id FROM discution ORDER BY id DESC LIMIT 1') or die('erreur select id');
            $donne = $req->fetch();
        ?>

        var lastid = <?= $donne['id'] ;?>;

        $(function(){
            $('#messages').animate({scrollTop:$('#messages').prop('scrollHeight')}, 50);
        });

    </script>
    <title>Discuption</title>
</head>
<body >



    <?php

         //select tous le message
         $req = $db->query('SELECT * FROM discution ORDER BY id LIMIT 20') or die('erreur requete de récupération');
         $donne = $req->fetchall();

        //select le user co
        $req = $db->query('SELECT * FROM user WHERE connecter = true') or die('erreur requete de récupération');
        $donne_co = $req->fetchall(); 

        //poster un message
          if (isset($_POST['envoyer']) && !empty($_POST['contente'])) {

            $user = $_SESSION['auth']['pseudo'];
            $content = $_POST['contente'];
            $req = $db->prepare('INSERT INTO discution (user, content, heure) VALUE (:user, :content, :heure)');
             $req->execute(array(
                 'user' => $user,
                 'content' => $content,
                 'heure' => time()
            )) or die('erreur requete');
            header('location:discution.php');

        }  
            

    ?>
    
    <div class="navbar navbar-inverse">
        <div class="pseudo" align='left'>
            <h1><?= $_SESSION['auth']['pseudo']; ?></h1>
        </div>
        <div class="logout" align='right'>
            <button class="logout_btn" onclick="window.location.href='logout.php'">déconnextion</button>
        </div>
    </div>

    <aside>
        <h2>Personne connecté</h2>
            <ul>
                <?php foreach ($donne_co as $key) : ?>
                <li><?= $key['pseudo'] ?></li>
                <?php endforeach; ?>
            </ul>
    </aside>


    <div class="container">
        <div class="messages"  id="messages">

            
            <?php foreach ($donne as $key) : ?>
             
                <div class="message">

                    <h4> <?= $key['user'] ?> </h4>
                    
                    <p >  <?=  htmlentities($key['content'])?> </p>

                </div> 
 
             <?php endforeach; ?>
            
            
        </div>


    </div>
    <div class="enter_message" >
            <form action="" id="tchatform" method="post">
                <input type="text" name="contente" id="contente">
                <input type="submit" id="envoyer" name="envoyer" value="envoyer">
            </form>
    </div>




    <script>
        $(function(){             
            $('#contente').focus();
        });
    </script>

</body>
</html>