<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FLIMS</title>
</head>


<?php
$conn = require_once 'connect.php';

?>

<body>
    <h2>Liste des films</h2>

    <table>
        <thead>
            <th>ID</th>
            <th>Titre</th>
            <th>Sortie</th>
            <th>Durée</th>
            <th>Réalisateur</th>
            <th>Producteur</th>
            <th>note</th>
            <th>Pays d'origine</th>
            <th>Résumé</th>
            <th>Genre</th>
            <th>Catégorie</th>
        </thead>

        <tbody>
            <?php
            $query = "SELECT * FROM film";
            $statement = $conn->prepare($query);
            $statement->execute();

            $statement->setFetchMode(PDO::FETCH_OBJ);
            $result = $statement->fetchAll();
            if ($result) {
                foreach ($result as $row) {
            ?>
                    <tr>
                        <td><?= $row->id; ?></td>
                        <td><?= $row->titre; ?></td>
                        <td><?= $row->sortie; ?></td>
                        <td><?= $row->duree; ?></td>
                        <td><?= $row->realisateur; ?></td>
                        <td><?= $row->producteur; ?></td>
                        <td><?= $row->note; ?></td>
                        <td><?= $row->pays_origines; ?></td>
                        <td><?= $row->synopsis; ?></td>
                        <td><?= $row->categorie; ?></td>
                        <td><?= $row->genre; ?></td>
                    </tr>
                <?php
                }
            } else {
                ?>
                <tr>
                    <td colspan="5">Aucun film</td>
                </tr>
            <?php
            }
            ?>
        </tbody>

    </table>
</body>

</html>