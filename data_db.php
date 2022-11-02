<?php
   include('server.php');
    ?>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <link rel="stylesheet" href="style.css">
</head>
<body style="margin: 50px;">
    <h1>ประวัติข้อมูล</h1>
    <br>
    <table class="table">
        <thead>
            <tr>
                <th>อาการ</th>
                <th>วันที่</th>
            </tr>
        </thead>
    <tbody>
    <?php
    if (isset($_POST['data_user'])) {
        $description = mysqli_real_escape_string($conn, $_POST['description']);
        $date= mysqli_real_escape_string($conn, $_POST['date']);

        if (empty($description)) {
            array_push($errors, "Description is required");
        }

        if (empty($date)) {
            array_push($errors, "Date is required");
        }

        $sql = "INSERT INTO data(description, date) VALUES('$description','$date')";
        mysqli_query($conn, $sql);
    
    } 
            
    $sql = "SELECT * FROM data";
    $result = mysqli_query($conn, $sql);
    $resultCheck = mysqli_num_rows($result);

    if ($resultCheck > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>
                <td>". $row["description"] . "</td>
                <td>". $row["date"] . "</td>
                </tr>";
            }
        }
        ?>
        </tbody>
    </table>
    <div class="input-group,text-center">
    <p><a href="logout.php"class="btn" >Logout</a></p>
    </div>
</body>
</html>

