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
        <link rel="stylesheet" href="../../../../Web/resources/css/nav.css">
        <link rel="icon" type="image/png" href="../../../../Web/resources/icones/Bouldero_Logo.svg">
        <script src="../../../../Web/resources/js/websiteFunctions.js"></script>
    </head>
    <nav>
        <div class="flex-nav">
            <!--Yellow line-->
            <div class="collored-line"></div>
                <div class="nav-look">
                    <!--All line of link for each category of items-->
                    <div class="nav-space">
                        <a class="item <?php if ($chaussons == true) echo "collored"; ?>" onclick="GetSelected(1)" href="../../../../Web/src/html/Produits/Chaussons">Chaussons</a>
                        <a class="item <?php if ($sacapof == true) echo "collored"; ?>" onclick="GetSelected(2)" href="../../../../Web/src/html/Produits/Sac-a-pof">Sac à Pof</a>
                        <a class="item <?php if ($vetements == true) echo "collored"; ?>" onclick="GetSelected(3)" href="../../../../Web/src/html/Produits/Vetements">Vêtements</a>
                        <a class="item <?php if ($entrainement == true) echo "collored"; ?>" onclick="GetSelected(4)" href="../../../../Web/src/html/Produits/Entrainement">Entraînement</a>
                        <a class="item <?php if ($accessoires == true) echo "collored"; ?>" onclick="GetSelected(5)" href="../../../../Web/src/html/Produits/Accessoires">Accessoires</a>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</html>
