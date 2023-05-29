<?php
function conectar() {
    try {
        $conn = new PDO('mysql:host=localhost; charset=utf8mb4; dbname=db_torneio', 'root', '');
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    } catch (PDOException $e) {
        echo "banco esta com problema" . $e->getMessage();
        die();
    }
    return $conn;
 }
?>