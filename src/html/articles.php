<?php
            function includeWithVariables($filePath, $variables = array(), $print = true)
            {
            // Extract the variables to a local namespace
            extract($variables);

            // Start output buffering
            ob_start();

            // Include the template file
            require $filePath;

            // End buffering and return its contents
            $output = ob_get_clean();
            if (!$print) {
                return $output;
            }
            echo $output;
            }
        ?>
<?php 
$servername = "localhost";
$username = "root";
$password = "root";
$searchArticle= $_GET["idArticle"];

try{
    $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade;charset=utf8mb4", $username, $password);
    $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage FROM t_articles WHERE idArticle='$searchArticle'";
    $data = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
}catch(PDOException $e){
}

?>
<?php

foreach($data as $item){
$image = "../../resources/images/articles/". $item['artImage'];
$brand = "../../resources/icones/Brands/" . $item['artBrand'] . ".svg";

$model = $item['artModel'];
$price = $item['artPrice']; 
}
?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Training of the webiste
	    -->
        <title>Bouldero - Training page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/articles.css">
        
    </head>
    <header><?php require('../../resources/siteparts/header.php'); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('articles' => true)); ?></nav>
    <body>
    
    </body>

<div class="articles">
  <div class="ariane">
    <div class="ariane-products">Produits</div>
    <img loading="lazy" src="../../resources/icones/Right Arrow.svg" class="right-arrow" />
    <div class="ariane-article">Chaussons d'escalade</div>
  </div>
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
          <div class="size-border">
            <div class="size-data">
              <div class="size-text">Choix de la pointure</div>
              <img loading="lazy" src="../../resources/icones/Down Arrow.svg" class="down-arrow" />
            </div>
          </div>
          <div class="basket-gap">
            <div class="basket-flex">
                <div class="basket">
                  <div class="basket-background">
                    <div class="basket-text">Ajouter au panier</div>
                  </div>
               </div>
               <div class="love-flex"><div class="love-background"><img loading="lazy" src="../../resources/icones/Love_Articles.svg" class= "love-image"/></div></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('articles' => 'TRUE')); ?></footer>
</html>