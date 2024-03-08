<!DOCTYPE html>
<html lang="fr">
<head>
    <!--
            Author: Aurélien Lahaye
            Date: 07.02.2024
            Description: Sac à pof page of the webiste
        -->
    <title>Bouldero - Sac à pof</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../../resources/css/shared.css">
    <link rel="stylesheet" href="../../../resources/css/products.css">
    <link rel="icon" type="image/png" href="../../../resources/icones/Bouldero_Logo.svg">
    <script src="../../../resources/js/websiteFunctions.js"></script>
</head>
<?php  require '../../../../Web/resources/php/scripts.php'; ?>
<?php
    //Query to select every items from the climbing bags
    $fkType = 2;
    $queryDefault = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage, fkType, fkMarque FROM t_articles WHERE fkType=$fkType";
    //Variable for the 3 items line
    $i = 0;
?>
<?php
setcookie('query', $queryDefault, time()+3600);
?>
<?php
//Check if cookie exist
if (!isset($_COOKIE['query'])) {
    echo "<script> GetSelected($fkType); </script>";
}else{
    $query = $_COOKIE['query'];
}
    //Multiple query, first for the total number of items and the second for single brand number
    $queryNbRows = "SELECT count(*) from t_articles WHERE fkType=$fkType";
    $queryNbItems ="SELECT t_marque.marName, t_marque.idMarque, count(*) AS occurrences FROM t_articles  INNER JOIN t_marque ON t_articles.fkMarque=t_marque.idMarque  WHERE fkType=$fkType GROUP BY fkMarque DESC, fkMarque";
    $data = connectToDatabase($query);
    $nbRows = findNumberRows($queryNbRows);
    $dataNbItems = connectToDatabase($queryNbItems);
?>
<?php
//Variables  to show inside the cards
foreach($data as $item){
    $image = "../../../resources/images/articles/". $item['artImage'];
    $brand = $item['artBrand'];
    $model = $item['artModel'];
    $price = $item['artPrice'];
}
?>
<header><?php require '../../../resources/siteparts/header.php'; ?></header>
<nav><?php includeWithVariables('../../../resources/siteparts/nav.php', array('sacapof' => true)); ?></nav>
<body>
    <!--Arianne's thread-->
    <div class="ariane">
        <div class="ariane-products">Produits</div>
        <img loading="lazy" src="../../../resources/icones/Right Arrow.svg" class="right-arrow" />
        <div class="ariane-article">Sac à pof</div>
    </div>
    <!--Title-->
    <div class="flex-nb-products">
        <div class="title-nb-products">Sac à pof</div>
        <div class="nb-products"><?php echo $nbRows;?> Articles</div>
    </div>
    <!--Filter-->
    <div class="filter-bar">
        <div class="dropdownFilters">
            <button onclick="doDropMenu()" class="filters" id="filters">
                <div class="content-filters">
                    <section class="title-filters">
                        <div class="text-title-filters">Marques</div>
                        <img class="up-arrow" src="../../../resources/icones/Up Arrow.svg" alt="Up Arrow"
                            id="Up Arrow" />
                    </section>
                </div>
            </button>
            <!--Filters after drop menu-->
            <div id="filterDropdownMenu" class="dropdown-content">
                <div class="line-filters">
                    <table id="tblFilters">
                        <?php foreach($dataNbItems as $brandName):?>
                        <td class="filter-line">
                            <input type="checkbox" class="filterCheckbox" value="<?php echo $brandName['idMarque'];?>">
                            <div class="filterContent" href="#<?php echo $brandName['marName']; ?>">
                                <?php echo $brandName['marName'] ;?></div>
                            <div class="filterText"><?php echo $brandName["occurrences"];?></div>
                        </td>
                        <?php endforeach ;?>
                    </table>
                </div>
                <!--Select only selected brands from the filter-->
                <input class="btn-filter" type="button" value="Filtrer"
                    onclick="GetSelected(<?php echo $fkType ;?>)"></input>
            </div>
        </div>
    </div>
    </div>
    <!--All items inside cards-->
    <?php foreach ($data as $item): $image = "../../../resources/images/articles/". $item['artImage']; ?>
        <?php if($i % 4 == 0) {echo "<div class='product-column'>";
        } ?>
    <form id="hiddenForm<?php echo $item['idArticle'];?>" method="POST" action="../Produit">
        <input type="hidden" name="idArticle" value="<?php echo $item['idArticle'];?>">
        <a href="javascript:{}"
            onclick="document.getElementById('hiddenForm<?php echo $item['idArticle'];?>').submit();" class="card-link">
            <article class="product-card">
                <img loading="lazy" src="<?php echo $image ?>" alt="<?php $item['artModel'] ; ?>"
                    class="product-image" />
                <div class="product-title"><?php echo $item['artBrand']; ?></div>
                <div class="product-model"><?php echo $item['artModel']; ?></div>
                <div class="product-price">CHF <?php echo $item['artPrice']; ?></div>
                <?php if($i % 4 == 3) {echo "</div>";
                } ?>
            </article>
        </a>
    </form>
        <?php $i++; ?>
    <?php endforeach; ?>
    </div>
</body>
<footer><?php includeWithVariables('../../../resources/siteparts/footer.php', array('sacapof' => 'TRUE')); ?></footer>

</html>
