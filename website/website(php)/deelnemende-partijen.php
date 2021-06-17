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

        </form>
        <?php
            $rows = $db->selectVerkiezing(1);

            foreach ($rows as $row) {
                echo "<tr >   
                <td>$row[PartijId]</td>
                <td>$row[PartijName]</td>
                <td>$row[Adres]</td>
                <td>$row[Postcode]</td>
                <td>$row[Gemeente]</td>
                <td>$row[EmailAdres]</td>
                <td>$row[Telefoonnummer]</td>
              </tr>";
            }
        ?>
    </div>
</body>
</html>