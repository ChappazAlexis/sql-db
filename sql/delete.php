
<?php

session_start();
require_once 'connect.php';


if(isset($_POST['delete']))
{
    $id = $_POST['delete'];
    var_dump($id);

    
    try {
        $query = "DELETE FROM film WHERE id = ?";
        $statement = $conn->prepare($query);
        $data = [
            ':id' => $id
        ];
        $query_execute = $statement->execute($data);

    } catch(PDOException $e){
        echo $e->getMessage();
    }
}

// header('Location: index.php');