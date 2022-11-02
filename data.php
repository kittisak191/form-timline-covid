<?php
    session_start();
    include('server.php');
    
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data</title>

    <link rel="stylesheet" href="style.css">
</head>
<body>
    <div class="body">
        <h2>ข้อมูลส่วนตัว</h2>

    </div>
   <form action="data_db.php" method="post">
    <?php include('errors.php'); ?>
            <?php if (isset($_SESSION['error'])) : ?>
                <div class="error">
                    <h3>
                        <?php
                            echo $_SESSION['error'];
                            unset($_SESSION['error']);
                        ?>
                    </h3>
                </div>
            <?php endif ?>
        <div class="input-group">
            <label for="description">Description</label>
            <input type="text" name="description">
        </div>
        <div class="input-group">
            <label for="date">Date</label>
            <input type="date" name="date"> 
        </div>
        
        <div class="input-group">
                <button type="submit" name="data_user" class="btn">Save</button>
        </div>
   </form>
    
</body>
</html>