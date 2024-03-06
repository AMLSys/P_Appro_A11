<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 06.03.2024
		    Description: Create a new account
	    -->
        <title>Bouldero - Create an account</title>
        <meta http-equiv="content-type" content="text/html";  charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/account.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
    </head>
    <?php
    require('../../resources/php/scripts.php');
    session_start();
    if(isset($_SESSION['usrUsername'])){
        header('Location: ./dashboard.php');
    }
    // When form submitted, insert values into the database.
    if (isset($_REQUEST['usrUsername'])) {
        // removes backslashes
        $username = stripslashes($_REQUEST['usrUsername']);
        //escapes special characters in a string
        //$username = mysqli_real_escape_string($con, $username);
        $email    = stripslashes($_REQUEST['usrEmail']);
        //$email    = mysqli_real_escape_string($con, $email);
        $password = stripslashes($_REQUEST['usrPassword']);
        //$password = mysqli_real_escape_string($con, $password);
        $create_datetime = date("Y-m-d H:i:s");
        $query    = "INSERT into `t_user_account` (usrUsername, usrPassword, usrEmail, usrCreate_DateTime)
                     VALUES ('$username', '" . md5($password) . "', '$email', '$create_datetime')";
        $result   = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
        if (!$result) {
            header("Location: ../html/dashboard");
        } else {
            echo "<div class='form'>
                  <h3>Required fields are missing.</h3><br/>
                  <p class='link'>Click here to <a href='create_account'>registration</a> again.</p>
                  </div>";
        }
    } else {
?>
<header><?php require('../../resources/siteparts/header.php'); ?></header>
<nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('compte' => 'TRUE')); ?></nav>
<body>

<div class="fullBody">
<img src="../../resources/images/Connection_Background.svg" class="imgConnection"/>
    <div class="fullForm">
            <div class="titleConnection">
                <div class="connectionTitle">Bienvenue</div>
                <div class="connectionSubtitle">Entrez vos informations afin de vous créer un compte</div>
            </div>
        <form class="form" action="" method="post">
            <div class="formFields">
                <div class="connectionField">
                    <p class="fieldInputs">Nom d'utilisateur</p>
                    <input type="text" class="loginInputs" name="usrUsername" placeholder="Entrez votre nom d'utilisateur" required />
                </div>
                <div class="connectionField">
                    <p class="fieldInputs">Adresse E-Mail</p>
                    <input type="text" class="loginInputs" name="usrEmail" placeholder="Entrez votre adresse E-Mail" required/>
                </div>
                <div class="connectionField">
                    <p class="fieldInputs">Mot de passe</p>
                    <input type="password" class="loginInputs" name="usrPassword" placeholder="Entrez votre Mot de passe" required/>
                </div>
                <input type="submit" name="submit" value="Créer le compte" class="submitButton">
            </div>
            <div class="connectAccount">
                <hr class="lines">
                <div class="haveAccount">Vous avez déjà un compte ?</div>
                <hr class="lines">
            </div>
            <p class="doConnect"><a class="textLink" href="./connexion">Se connecter</a></p>
        </form>
    </div>
</div>
<?php
    }
?>
</body>
<footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('compte' => 'TRUE')); ?></footer>
</html>