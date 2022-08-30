<?php
define ('DBH','mysql:host=localhost;port=3306;dbname=film');
define ('USER','root');
define ('PASSWORD', 'root');

// Connection
try {
    $conn = new PDO(DBH, USER, PASSWORD);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "connected";
} catch (PDOException $e) {
    echo 'Connexion échouée : ' . $e->getMessage();
    }
    catch(Exception $e){
   } 

?>

<header>
    <a href="index.php">index</a>
    <a href="create.php">nouveau</a>
</header>