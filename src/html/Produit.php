<?php  include '../../../Web/resources/php/scripts.php'; ?>
<?php
//Query for the item that we selected
  $searchArticle= $_POST["idArticle"];
  $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage, fkType FROM t_articles WHERE idArticle='$searchArticle'";
  $data = connectToDatabase($query);
?>
<?php
//Make variables for the page with single product that you choosed
foreach($data as $item){
  $image = "../../resources/images/articles/". $item['artImage'];
  $brand = "../../resources/icones/Brands/" . $item['artBrand'] . ".svg";
  $soloBrand = $item['artBrand'];

  $model = $item['artModel'];
  $price = $item['artPrice'];
  $description = $item['artDescription']; 
  $fkType = $item['fkType'];
}
  //Query to select the type of the article inside the Arianne's thread
  $queryArticles = "SELECT idType, typName FROM t_type_articles WHERE idType='$fkType'";
  $dataArticles = connectToDatabase($queryArticles);
  foreach($dataArticles as $itemArticles){
    $typeArticle = $itemArticles['typName'];
  }
?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Single product of the website
	    -->
        <title>Bouldero - Product page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/articles.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
    </head>
    <header><?php require('../../resources/siteparts/header.php'); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('articles' => true)); ?></nav>
    <body>
    <div class="articles">
      <!--Arianne's thread-->
      <div class="ariane">
        <div class="ariane-products">Produits</div>
          <img loading="lazy" src="../../resources/icones/Right Arrow.svg" class="right-arrow" />
          <a class="link-decoration" href="./Produits/<?php if($typeArticle == "Vêtements"){echo "Vetements";}elseif($typeArticle == "Sac à pof"){echo "Sac-a-pof";}elseif($typeArticle == "Entraînement"){echo "Entrainement";}else{echo $typeArticle;} ?>"><div class="ariane-article"><?php echo $typeArticle ?></div></a>
          <img loading="lazy" src="../../resources/icones/Right Arrow.svg" class="right-arrow" />
          <div class="ariane-article"><?php echo $soloBrand . " : " . $model ?></div>
        </div>
        <!--Informations of the product-->
        <div class="article-info">
          <div class="article-data">
            <div class="article-image">
              <img loading="lazy"src="<?php echo $image ?>"class="img-article"/>
            </div>
            <div class="article-brand">
              <div class="product-infos">
                <img loading="lazy" src="<?php echo $brand ?>" class="img-brand" />
                <div class="articleModel"><?php echo $model ?></div>
                <div class="articlePrice">CHF <?php echo $price ?></div>
                <div class="articleTva">TVA incluse + Frais de livraison</div>
                <!--Hide the size if is a climbing bag, a training object or some accessory-->
                <div class="size-border <?php if ($fkType == 2){echo 'hidden';}elseif($fkType == 4){echo 'hidden';}elseif($fkType == 5){echo 'hidden';} ;?>">
                  <div class="buttons-data">
                    <!--Change the text if is climbing shoes or clothes-->
                    <div class="buttons-text"><?php if ($fkType == 1){echo "Choix de la pointure";}else{echo "Choix de la taille";} ;?></div>
                    <img loading="lazy" src="../../resources/icones/Down Arrow.svg" class="down-arrow"/>
                  </div>
                </div>
                <div class="basket-background">
                  <div class="buttons-data">
                    <div class="buttons-text"><div class="basket-text">Ajouter l'article au panier</div></div>
                  </div>
                </div>
                </div>
              </div>
            </div>
          </div>
          <div class="description">
            <div class="description-text"><?php echo $description; ?></div>
          </div>
        </div>
      </div>
    </body>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('articles' => 'TRUE')); ?></footer>
</html>