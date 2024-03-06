<?php
//include auth_session.php file on all user panel pages
include("../../resources/php/auth_session.php");
include '../../../Web/resources/php/scripts.php'; 
session_start();
?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Dashboard - Client area</title>
    <link rel="stylesheet" href="style.css" />
</head>
    <header><?php includeWithVariables('../../resources/siteparts/header.php', array('compte' => 'TRUE')); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('compte' => 'TRUE')); ?></nav>
<body>
    <div class="form">
        <p>Hey, <?php echo $_SESSION['usrUsername']; ?>!</p>
        <p>You are now user dashboard page.</p>
        <p><a href="./logout.php">Logout</a></p>
    </div>
</body>
<footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('compte' => 'TRUE')); ?></footer>
</html>