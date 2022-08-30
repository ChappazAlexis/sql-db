<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ajouter film</title>
</head>

<?php
$pdo = require_once 'connect.php';
session_start();
?>

<body>
    <h2>Ajouter des films !</h2>
    <div>
        <form action="add.php" method=POST>
            <p>ID : <input type="number" name="id" /></p>
            <p>Titre : <input type="string" name="titre" /></p>
            <p>Sortie : <input type="date" name="sortie" /></p>
            <p>Durée : <input type="number" name="duree" /></p>
            <p>Réalisateur : <input type="string" name="realisateur" /></p>
            <p>Producteur : <input type="string" name="producteur" /></p>
            <p>Note : <input type="number" name="note" /></p>
            <p>Pays : <input type="string" name="pays_origines" /></p>
            <p>Synopsis : <input type="string" name="synopsis" /></p>
            <p>Genre : <input type="string" name="genre" /></p>
            <p>Categorie : <input type="string" name="categorie" /></p>
            <p><input type="submit" name="enregistrer_film" value="Créer le film !"></p>   
        </form>
    </div>
</body>
</html>