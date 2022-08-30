<?php 
session_start();
include('connect.php');



if(isset($_POST['enregistrer_film']))
{
    var_dump($_POST);
    $id = $_POST['id'];
    $titre = $_POST['titre'];
    $sortie = $_POST['sortie'];
    $duree = $_POST['duree'];
    $realisateur = $_POST['realisateur'];
    $producteur = $_POST['producteur'];
    $note = $_POST['note'];
    $pays_origines = $_POST['pays_origines'];
    $synopsis = $_POST['synopsis'];
    $genre = $_POST['genre'];
    $categorie = $_POST['categorie'];

    $query = "INSERT INTO film (id, titre, sortie, duree, realisateur, producteur, note, pays_origines, synopsis, genre, categorie) VALUES (:id, :titre, :sortie, :duree, :realisateur, :producteur, :note, :pays_origines, :synopsis, :genre, :categorie)";
    $query_run = $conn->prepare($query);


    $data = [
        ':id' => $id,
        ':titre' => $titre,
        ':sortie' => $sortie,
        ':duree' => $duree,
        ':realisateur' => $realisateur,
        ':producteur' => $producteur,
        ':note' => $note,
        ':pays_origines' => $pays_origines,
        ':synopsis' => $synopsis,
        ':genre' => $genre,
        ':categorie' => $categorie
    ];
    $query_execute = $query_run->execute($data);
    echo('slt');

    if($query_execute)
    {
        header('Location: index.php');
    }
    else
    {
        header('Location: create.php');
    }
}

?>