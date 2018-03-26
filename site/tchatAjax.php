<?php
session_start();
include('include/db.php');
$d = array();

    
    /**
     * action getMessage
     */
    if ($_GET['action'] == "getMessage") {

        $lastid = $_GET['lastid'];
        //$reqs = $db->query('SELECT id FROM discution ORDER BY id DESC LIMIT 1') or die('erreur select id');
        //$donnes = $reqs->fetch(); 

        $req = $db->prepare('SELECT * FROM discution WHERE id > :lastid ORDER BY id');
        $req->execute(array(
            'lastid' => $lastid
        ));

        $donne = $req->fetchall();

        $d['result'] = "";
        $d['lastid'] = $lastid;
        foreach ($donne as $key){

            $d['result'] .= '<div class="message"><h3>' .$key['user'] . ' </h3><p > ' . htmlentities($key['content']) . '</p></div> ';
            $d['lastid'] = $key['id'];
        }
        $d['erreur'] = "ok";

    }

    /**
     * action getPersonne
     */
    if ($_GET['action'] == "getPersonne") {

        $req = $db->query('SELECT * FROM user WHERE connecter = true') or die('erreur requete de récupération');
        $donne_co = $req->fetchall(); 
        $d['personne'] = "";

    
            foreach ($donne_co as $key){
                $d['personne'] .= '<li>' .$key['pseudo'] . ' </li> ';
            }
            $d['erreur'] = "ok";
        

        

    }

echo json_encode($d);
?>