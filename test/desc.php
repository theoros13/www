<?php

    $db = new PDO('mysql:host=localhost;dbname=base_test', 'root', '');

    if ($_GET['action'] == "getPersonne") {

        $id = $_GET['id'];

        $req = $db->prepare('SELECT * FROM test WHERE id = :id');
        $req->execute(array(
            'id' => $id
        )) or die('erreur select');

        $donne_co = $req->fetchall(); 
        $d['personne'] = "";

    
            foreach ($donne_co as $key){
                $d['personne'] .= '<p class="desc">id : ' .$key['id'] . '</br>nom : ' . $key['nom'] . '</br>telephone : ' . $key['telephone'] . '</br>email : ' . $key['email'] . '</br>adresse : ' . $key['adresse'] . '</p>';
            }
            $d['erreur'] = "ok";
        

        

    }

    

echo json_encode($d);
?>