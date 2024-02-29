<?php  include '../../../Web/resources/php/scripts.php'; ?>
<?php 
$query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage FROM t_articles";
$data = connectToDatabase($query); ?>
<?php $lowvalue = 0; $highvalue = 8; ?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Home page of the webiste
	    -->
        <title>Bouldero - Home page</title>
        <meta http-equiv="content-type" content="text/html";  charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/flickity.css">
        <script src="../../resources/js/flickity.pkgd.js"></script>
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
    </head>
    <header><?php require('../../resources/siteparts/header.php'); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('homepage' => 'TRUE')); ?></nav>
    <body>
        <div class="flex-body">
            <div class="body-background">
                <img src="../../resources/images/Promotions.svg" class="promotions"/>
                <div>
                    <div class="carrousel-top">
                            <p class="carrousel-title">Offres</p>
                            <div class="carrousel-line"></div>
                        </div>
                    <div class=""  data-flickity='{ "lazyLoad": 2, "initialIndex": 0, "wrapAround": true}'>
                        <?php foreach(array_slice($data, $lowvalue, $highvalue) as $row): $image = "../../resources/images/articles/". $row['artImage'];?>
                        <form id="hiddenForm<?php echo $row['idArticle'];?>" method="POST" action="./Produit">
                                <div class='carrousel-item'>
                                    <input type="hidden" name="idArticle" value="<?php echo $row['idArticle'];?>">
                                    <a href="javascript:{}" onclick="document.getElementById('hiddenForm<?php echo $row['idArticle'];?>').submit();" class="carrousel-link">
                                    <img data-flickity-lazyload="<?php echo $image ?>" class='carrousel-image' />
                                    <p class='carrousel-brand'><?php echo $row['artBrand']; ?></p>
                                    <p class='carrousel-model'><?php echo $row['artModel']; ?></p>
                                    <p class='carrousel-price'>CHF <?php echo $row['artPrice']; ?></p>
                                </div>
                            </a>
                        </form>
                        <?php endforeach; ?>
                    </div>
                </div>
                <p class="brands-text">Marques partenaires</p>
                <div class="brands">
                    <div class="all-brands">
                        <div class="top-brands">
                            <img loading="lazy" src="../../resources/icones/brands/Red Chili.svg"/>
                            <img loading="lazy" src="../../resources/icones/brands/Black Diamond.svg"/>
                            <img loading="lazy" src="../../resources/icones/brands/Simond.svg"/>
                        </div>
                        <div class="bottom-brands">
                            <div class="center-brands">
                                <img loading="lazy" src="../../resources/icones/brands/Scarpa.svg"/>
                                <img loading="lazy" src="../../resources/icones/brands/Petzl.svg"/>
                                <img loading="lazy" src="../../resources/icones//brands/La Sportiva.svg"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('homepage' => 'TRUE')); ?></footer>
</html>