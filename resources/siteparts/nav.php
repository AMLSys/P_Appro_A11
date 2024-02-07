
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Nav of the webiste
	    -->
        <title>Bouldero - Nav</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../web/resources/css/nav.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
        </style>
    </head>
    <nav>
        <div class="flex-nav">
            <div class="collored-line"></div>
                <div class="nav-look">
                    <div class="nav-space">
                        <a class="item <?php if ($chaussons == true) echo "collored"; ?>" href="../../../Web/src/html/chaussons.php">Chaussons</a>
                        <a class="item <?php if ($sacapof == true) echo "collored"; ?>" href="../../../Web/src/html/sac-a-pof.php">Sac à Pof</a>
                        <a class="item <?php if ($vetements == true) echo "collored"; ?>" href="../../../Web/src/html/vetements.php">Vêtements</a>
                        <a class="item <?php if ($entrainement == true) echo "collored"; ?>" href="../../../Web/src/html/entrainement.php">Entraînement</a>
                        <a class="item <?php if ($accessoires == true) echo "collored"; ?>" href="../../../Web/src/html/accessoires.php">Accessoires</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</html>
