<?php
class verkiezingenDB
{
    const DSN = "mysql:host=localhost;dbname=verkiezingenprj3";
    const USER = "root";
    const PASSWD = "";

    
    function selectMenu (){
        try {
            $pdo = new PDO(self::DSN, self::USER, self::PASSWD);
            
            $statement = $pdo->prepare("SELECT * FROM verkiezingenprj3.verkiezing;");

            $statement->execute();

            $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

            return $rows;

        } catch (DPOException $ex) {
            return false;
        }
    }


    function selectVerkiezing($verkiezingsoort){
        $soortid = $verkiezingsoort;
        try {
            $pdo = new PDO(self::DSN, self::USER, self::PASSWD);
            
            $statement = $pdo->prepare("SELECT * FROM verkiezingenprj3.verkiezingspartijen INNER JOIN verkiezingenprj3.partij ON verkiezingspartijen.PartijId=partij.PartijId WHERE VerkiezingId = :soortid;");
            $statement-> bindValue(":soortid", $soortid, PDO::PARAM_STR);

            $statement->execute();

            $rows = $statement->fetchAll(PDO::FETCH_ASSOC);

            return $rows;

        } catch (DPOException $ex) {
            return false;
        }
    }

    function selectPartijen(){
        try {
            $pdo = new PDO(self::DSN, self::USER, self::PASSWD);
            
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