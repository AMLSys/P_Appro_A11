<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 07.02.2024
		    Description: Footer of the webiste
	    -->
        <title>Bouldero - Footer</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/footer.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
    </head>
    <footer>
    <div class="flex-footer">
    <div class="background">
      <img loading="lazy" src="../../resources/images/Background_Footer.svg" class="background-img" />
      <div class="logo-footer">
        <div class="footer-look">
          <div class="topline">
            <div class="logo">
              <a href="../../../Web/src/html/homepage.php" ><img loading="lazy" src="../../resources/images/Logo.svg" class="logo"/></a>
            </div>
          </div>
          <div class="topline-text">
            <div class="top-line-text">
              <div class="top-linetext">
                <div class="top-item">Compte</div>
                <div class="top-item">Panier</div>
                <div class="top-item">Favoris</div>
                <div class="top-item">Blog</div>
                <div class="search-bar">
                  <div class="search-text">Recherches...</div>
                  <img loading="lazy" src="../../resources/icones/Search_Black.svg" class="search-img"/>
                </div>
              </div>
              <div class="bottom-bar"></div>
              <div class="bottom-bar-text">
                <a class="bottom-item <?php if ($chaussons == true) echo "collored"; ?>" href="../../../Web/src/html/chaussons.php">Chaussons</a>
                <a class="bottom-item <?php if ($sacapof == true) echo "collored"; ?>" href="../../../Web/src/html/sac-a-pof.php">Sac à Pof</a>
                <a class="bottom-item <?php if ($vetements == true) echo "collored"; ?>" href="../../../Web/src/html/vetements.php">Vêtements</a>
                <a class="bottom-item <?php if ($entrainement == true) echo "collored"; ?>" href="../../../Web/src/html/entrainement.php">Entraînement</a>
                <a class="bottom-item <?php if ($accessoires == true) echo "collored"; ?>" href="../../../Web/src/html/accessoires.php">Accessoires</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="credits">
        <img loading="lazy" src="../../resources/icones/Copyright.svg" class="copyright-img"/>
        <div class="credits-text">2024</div>
        <div class="credits-text">Aurélien Lahaye</div>
      </div>
    </div>
  </div>
</footer>
</html>