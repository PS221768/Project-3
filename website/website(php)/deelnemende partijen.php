<!DOCTYPE html>
<html lang="nl">
<?php
include_once "./includes/VerkiezingenDB.php";
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
    <h2>alle deelnemende partijen:</h2>
    <div class="Home">
        <!-- hier komt php code om alle partijen op te halen en neer te zetten (meteen ook zorgen dat de contactgegevens erbij zitten) -->
        <?php
            $rows = $db->selectPartijen();

            foreach ($row as $rows) {
                echo "<tr >   
                <td>$row[id]</td>
                <td>$row[voornaam]</td>
                <td>$row[tussenvoegsel]</td>
                <td>$row[achternaam]</td>
                <td>$row[klas]</td>
                <td>
                    <form method='post' action='Edit.php'>
                        <input type='hidden' name='id' value='$row[id]'/>
                         <input type='submit' value='Wijzig'/> 
                    </form>                   
                </td>
                <td>
                    <form method='post' action=''>
                         <input type='hidden' name='id' value='$row[id]'/>
                         <input type='submit' name='delete' value='Verwijder'/> 
                    </form>  
                </td>
              </tr>";
            }
        ?>
    </div>
</body>
</html>