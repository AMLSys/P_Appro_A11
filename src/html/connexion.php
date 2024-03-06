<?php require('../../resources/php/scripts.php'); ?>
<?php session_start();?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 06.03.2024
		    Description: Connect to account
	    -->
        <title>Bouldero - Connect to account</title>
        <meta http-equiv="content-type" content="text/html";  charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/account.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
    </head>
    <?php
    // When form submitted, check and create user session.
    if (isset($_POST['usrUsername'])) {
        $username = stripslashes($_REQUEST['usrUsername']);    // removes backslashes
        //$username = mysqli_real_escape_string($conn, $username);
        $password = stripslashes($_REQUEST['usrPassword']);
        //$password = mysqli_real_escape_string($conn, $password);
        // Check user is exist in the database
        $query    = "SELECT * FROM `t_user_account` WHERE usrUsername='$username'
                     AND usrPassword='" . md5($password) . "'";
            $result   = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
            $rows = count($conn->query($query)->fetchAll());
        if ($rows == 1) {
            $_SESSION['usrUsername'] = $username;
            // Redirect to user dashboard page
            header("Location: dashboard.php");
        } else {
            echo "<div class='form'>
                  <h3>Incorrect Username/password.</h3><br/>
                  <p class='link'>Click here to <a href='./connexion'>Login</a> again.</p>
                  </div>";
        }
    } else {
?>
<header><?php require('../../resources/siteparts/header.php'); ?></header>
<nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('compte' => 'TRUE')); ?></nav>
<body>
<div class="fullBody margintop">
<img src="../../resources/images/Connection_Background.svg" class="imgConnection"/>
    <div class="fullForm">
            <div class="titleConnection">
                <div class="connectionTitle">Heureux de vous revoir</div>
                <div class="connectionSubtitle">Entrez votre nom d'utilisateur et mot de passe pour vous connecter à votre compte</div>
            </div>
        <form class="form" method="post" name="login">
            <div class="formFields">
                <div class="connectionField">
                    <p class="fieldInputs">Nom d'utilisateur</p>
                    <input type="text" class="loginInputs" name="usrUsername" placeholder="Entrez votre nom d'utilisateur" required />
                </div>
                <div class="connectionField">
                    <p class="fieldInputs">Mot de passe</p>
                    <input type="password" class="loginInputs" name="usrPassword" placeholder="Entrez votre Mot de passe" required/>
                </div>
                <input type="submit" name="submit" value="Se connecter" class="submitButton">
            </div>
            <div class="connectAccount">
                <hr class="lines">
                <div class="haveAccount">Vous n'avez pas de compte ?</div>
                <hr class="lines">
            </div>
            <p class="doConnect"><a class="textLink" href="./create_account">Créer un compte</a></p>
        </form>
    </div>
</div>
<?php
    }
?>
</body>
<footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('compte' => 'TRUE')); ?></footer>
</html>