<!DOCTYPE html>
<html lang="nl">
<?php
include_once "../includes/VerkiezingenDB.php";
$db = new VerkiezingenDB();

include 'navigatiebalk.php';
?>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Deelnemende partijen</title>
    <link rel="stylesheet" href="..\styles\deelnemende partijen.css"/>

</head>

<body>
    <h2>alle deelnemende partijen: </h2>
    <div class="Home">
        <!-- hier komt php code om alle partijen op te halen en neer te zetten (meteen ook zorgen dat de contactgegevens erbij zitten) -->

        <form method='post' action='Deelnemende-partijen.php'>
        <select name="verkiezing">
                <?php
                    $rows = $db->selectMenu();
                        foreach ($rows as $row){
                            echo "<option value=". $row["Verkiezingsoort"] .">". $row["Verkiezingsoort"] . ", deze verkiezing vind plaats op : " . $row["Datum"] ."</option>";
                        }

                ?>
            <input type="submit" action="Deelnemende-partijen.php" value="check deze verkiezing">
        </form>
        <?php
            $rows = $db->selectVerkiezing(isset($_POST["verkiezing"]));

            foreach ($rows as $row) {
                echo "<tr >   
                <td>$row[PartijName]</td> <a href=" . 'Deelnemende-partijen.php' . ">" . '[meer informatie over deze partij]' . "</a>
                </tr>";
            }
        ?>
    </div>
</body>
</html>