<?php
session_start();

include('include/db.php');

$req = $db->prepare('UPDATE user SET connecter = :co WHERE pseudo = :pseudo');
$req->bindValue('co', false, PDO::PARAM_BOOL);
$req->bindValue('pseudo', $_SESSION['auth']['pseudo'], PDO::PARAM_STR);
$req->execute();

$_SESSION = array();


session_destroy();
header('location:index.php');
?>