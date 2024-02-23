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
    $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage, fkType FROM t_articles WHERE fkType='1'";
    $data = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
}catch(PDOException $e){
}

$nbRows = $conn->query("SELECT count(*) from t_articles WHERE fkType='1'")->fetchColumn();
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

<?php

try{
    $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade;charset=utf8mb4", $username, $password);
    $queryBrands ="SELECT t_marque.marName  FROM t_articles  INNER JOIN t_marque ON t_articles.fkMarque=t_marque.idMarque  WHERE t_articles.fkType='1'
    GROUP BY t_marque.marName ORDER BY `t_marque`.`marName` ASC";
    $dataBrands = $conn->query($queryBrands)->fetchAll(PDO::FETCH_BOTH);
}catch(PDOException $e){
}

?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 07.02.2024
		    Description: Chaussons page of the webiste
	    -->
        <title>Bouldero - Chaussons</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/products.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
        <script src="../../resources/js/websiteFunctions.js"></script> 
    </head>
    <header><?php require('../../resources/siteparts/header.php'); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('chaussons' => true)); ?></nav>
    <body>
    <div class="ariane">
        <div class="ariane-products">Produits</div>
        <img loading="lazy" src="../../resources/icones/Right Arrow.svg" class="right-arrow" />
        <div class="ariane-article">Chaussons</div>
    </div>
    <div class="flex-nb-products">
        <div class="title-nb-products">Chaussons</div>
        <div class="nb-products"><?php echo $nbRows;?> Articles</div>
    </div>
    <div class="filter-bar">
        <div class="dropdownFilters">
            <button onclick="doDropMenu()"class="filters" id="filters">
                <div class="content-filters">
                    <section class="title-filters">
                        <div class="text-title-filters">Marques</div>
                        <img class="up-arrow" src="../../resources/icones/Up Arrow.svg" alt="Up Arrow"  id="Up Arrow"/>
                    </section>
                </div>
            </button>
            <div id="filterDropdownMenu" class="dropdown-content">
                <?php foreach($dataBrands as $brandName):?>
                    <div class="line-filters">
                        <input type="checkbox" >
                        <a class="filterContent" href="#<?php echo $brandName['marName']; ?>"><?php echo $brandName['marName'] ;?></a>
                    </div>
                <?php endforeach ;?>
            </div>
        </div>
    </div>
        <?php foreach ($data as $item): $image = "../../resources/images/articles/". $item['artImage']; ?>
            <?php if($i % 4 == 0){echo "<div class='product-column'>";} ?>
                <a href="./articles.php?idArticle=<?php echo $item['idArticle']; ?>" class="card-link">
                    <article class="product-card">
                    <img loading="lazy" src="<?php echo $image ?>" alt="<?php $item['artModel'] ; ?>" class="product-image" />
                        <div class="product-title"><?php echo $item['artBrand']; ?></div>
                        <div class="product-model"><?php echo $item['artModel']; ?></div>
                        <div class="product-price">CHF <?php echo $item['artPrice']; ?></div>
                        <?php if($i % 4 == 3){echo "</div>";} ?>
                    </article>
                </a>
                <?php $i++; ?>
            <?php endforeach; ?>
    </body>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('chaussons' => 'TRUE')); ?></footer>
</html>