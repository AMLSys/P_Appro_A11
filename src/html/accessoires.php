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

try{
    $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade;charset=utf8mb4", $username, $password);
    $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage, fkType FROM t_articles WHERE fkType='5'";
    $data = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
}catch(PDOException $e){
}
?>


<?php 
foreach($data as $item){
    $image = "../../resources/images/articles/". $item['artImage'];
    $brand = $item['artBrand'];
    $model = $item['artModel'];
    $price = $item['artPrice']; 
    }

    $i = 0; 
?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Accessory page
	    -->
        <title>Bouldero - Accessory page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/products.css">
    </head>
    <header><?php require('../../resources/siteparts/header.php'); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('accessoires' => true)); ?></nav>
    <body>
        <?php foreach ($data as $item): $image = "../../resources/images/articles/". $item['artImage']; ?>
            <?php if($i % 4 == 0){echo "<div class='product-column'>";} ?>
                <a href="./articles.php?idArticle=<?php echo $item['idArticle']; ?>" class="card-link">
                    <article class="product-card">
                    <img loading="lazy" src="<?php echo $image ?>" alt="SPIRIT IV Climbing Shoe" class="product-image" />
                        <div class="product-title"><?php echo $item['artBrand']; ?></div>
                        <div class="product-model"><?php echo $item['artModel']; ?></div>
                        <div class="product-price">CHF <?php echo $item['artPrice']; ?></div>
                        <?php if($i % 4 == 3){echo "</div>";} ?>
                    </article>
                </a>
                <?php $i++; ?>
            <?php endforeach; ?> 
    </body>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('accessoires' => 'TRUE')); ?></footer>
</html>