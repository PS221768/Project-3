<?php
class verkiezingenDB
{
    const DSN = "mysql:host=localhost;dbname=verkiezingenprj3";
    const USER = "root";
    const PASSWD = "";

    function selectVerkiezing(){
        try {
            $pdo = new PDO(self::DNS, self::USER, self::PASSWD);
            
            $statement = $pdo->prepare("SELECT * FROM verkiezing;");

            $statement->execute();

            $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

            return $rows;

        } catch (DPOException $ex) {
            return false;
        }
    }

    function selectPartijen(){
        try {
            $pdo = new PDO(self::DNS, self::USER, self::PASSWD);
            
            $statement = $pdo->prepare("SELECT * FROM student;");

            $statement->execute();

            $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

            return $rows;

        } catch (DPOException $ex) {
            return false;
        }
    }
}

?>