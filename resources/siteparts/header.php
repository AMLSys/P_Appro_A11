<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Header of the webiste
	    -->
        <title>Bouldero - Header</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../../../Web/resources/css/header.css">
        <link rel="icon" type="image/png" href="../../../../Web/resources/icones/Bouldero_Logo.svg">
    </head>
    <header>
<div class="flex-header">
  <div class="header-look">
    <div class="header-space">
      <!--Logo-->
        <a href="../../../../../Web/src/html/Bouldero" ><img loading="lazy" src="../../../../Web/resources/images/Logo.svg" class="bouldero-logo" /></a>
      <div class="header-end">
        <div class="search">
          <!--Blog-->
            <a class="font-montserrat <?php if ($blog == true) echo "collored"; ?>" href="../../../../../Web/src/html/Blog">Blog</a>
            <!--Search-->
          <img loading="lazy" src="../../../../Web/resources/icones/Search_White.svg" class="center"/>
        </div>
        <div class="icones">
          <!--Account-->
          <a href="../../../../..//Web/src/html/Create_account"><img loading="lazy" src="../../../../Web/resources/icones/Account.svg" class="center"/></a>
          <!--Basket-->
          <img loading="lazy" src="../../../../Web/resources/icones/Basket.svg" class="center"/>
        </div>
      </div>
    </div>
  </div>
</div>
</header>
</html>
