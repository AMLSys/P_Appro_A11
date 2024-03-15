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
        <link rel="stylesheet" href="../../../../Web/resources/css/footer.css">
        <link rel="icon" type="image/png" href="../../../../Web/resources/icones/Bouldero_Logo.svg">
    </head>
    <footer>
    <div class="flex-footer">
    <div class="background">
      <!--Background of the footer-->
      <img loading="lazy" src="../../../../Web/resources/images/Background_Footer.svg" class="background-img" />
      <div class="logo-footer">
        <div class="footer-look">
          <div class="topline">
            <!--Logo-->
            <div class="logo">
              <a href="../../../../Web/src/html/Bouldero" ><img loading="lazy" src="../../../../Web/resources/images/Logo.svg" class="logo"/></a>
            </div>
          </div>
          <div class="topline-text">
            <div class="top-line-text">
              <!--First line of items-->
              <div class="top-linetext">
              <a class="top-item <?php if ($blog == true) echo "collored"; ?>" href="../../../../Web/src/html/Create_Account">Compte</a>
                <div class="top-item <?php if ($panier == true) echo "collored"; ?>">Panier</div>
                <div class="top-item <?php if ($favoris == true) echo "collored"; ?>">Favoris</div>
                <a class="top-item <?php if ($blog == true) echo "collored"; ?>" href="../../../../Web/src/html/Blog">Blog</a>
                <div class="search-bar">
                  <div class="search-text">Recherches...</div>
                  <img loading="lazy" src="../../../../Web/resources/icones/Search_Black.svg" class="search-img"/>
                </div>
              </div>
              <!--Line-->
              <div class="bottom-bar"></div>
              <!--Second line of items-->
              <div class="bottom-bar-text">
                  <a class="bottom-item <?php if ($chaussons == true) echo "collored"; ?>" onclick="GetSelected(1)" href="../../../../Web/src/html/Produits/Chaussons">Chaussons</a>
                  <a class="bottom-item <?php if ($sacapof == true) echo "collored"; ?>" onclick="GetSelected(2)" href="../../../../Web/src/html/Produits/Sac-a-pof">Sac à Pof</a>
                  <a class="bottom-item <?php if ($vetements == true) echo "collored"; ?>" onclick="GetSelected(3)" href="../../../../Web/src/html/Produits/Vetements">Vêtements</a>
                  <a class="bottom-item <?php if ($entrainement == true) echo "collored"; ?>" onclick="GetSelected(4)" href="../../../../Web/src/html/Produits/Entrainement">Entraînement</a>
                  <a class="bottom-item <?php if ($accessoires == true) echo "collored"; ?>" onclick="GetSelected(5)" href="../../../../Web/src/html/Produits/Accessoires">Accessoires</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!--Creator of the website-->
      <div class="credits">
          <img loading="lazy" src="../../../../Web/resources/icones/Copyright.svg" class="copyright-img"/>
          <a href="https://github.com/AMLSys" class="credits-text">2024 Aurélien Lahaye</a>
      </div>
    </div>
  </div>
</footer>
</html>