<?php 

include('db.php');

    class verif
    {
        static function isLogged(){
            if (isset($_SESSION['auth']) && isset($_SESSION['auth']['pseudo']) && isset($_SESSION['auth']['mdp']) ) {
                return true;
            }else {
                return false;
            }
        }
    }

     class message
    {
        //envoie le message
        static function envoie($pseudo, $content){
            global $db;
            $req = $db->prepare('INSERT INTO discution (user, content) VALUE (:user, :content)');
            $req->execute(array(
                'user' => $pseudo,
                'content' => $content
            ));
        }

        //va chercher tous les méssage
        static function affiche(){
            global $db;
            $req = $db->query('SELECT id, user, content FROM discution ORDER BY id DESC') or die('erreur requete de récupération');
            $donne = $req->fetchall();
            return $donne;
        }
    } 

?>
    