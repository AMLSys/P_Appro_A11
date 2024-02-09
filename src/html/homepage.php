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
    $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade", $username, $password);
    $query = "SELECT idArticle, artBrand, artModel, artPrice, artDescription, artImage FROM t_articles";
    $data = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
}catch(PDOException $e){
}

?>

<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 05.02.2024
		    Description: Home page of the webiste
	    -->
        <title>Bouldero - Home page</title>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
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
                    <div class="carrousel-flex">
                        <button class="carrousel-buttons carrousel-left-button" type="button"></button>
                        <?php
                        
                            foreach(array_slice($data, 0, 4) as $row){
                                $image = "../../resources/images/articles/". $row['artImage'];
                                echo "
                                <div class='carrousel-item'>
                                    <img src='$image' class='carrousel-image' />
                                    <p class='carrousel-brand'>{$row['artBrand']}</p>
                                    <p class='carrousel-model'>{$row['artModel']}</p>
                                    <p class='carrousel-price'>CHF {$row['artPrice']}</p>
                                </div>";
                            }

                        ?>
                        <button class="carrousel-buttons carrousel-right-button" type="button"></button>
                    </div>
                </div>
                <p class="brands-text">Marques partenaires</p>
                <div class="brands">
                    <div class="all-brands">
                        <div class="top-brands">
                            <img loading="lazy" src="../../resources/icones/Red Chili.svg"/>
                            <img loading="lazy" src="../../resources/icones/Black Diamond.svg"/>
                            <img loading="lazy" src="../../resources/icones/Simond.svg"/>
                        </div>
                        <div class="bottom-brands">
                            <div class="center-brands">
                                <img loading="lazy" src="../../resources/icones/Scarpa.svg"/>
                                <img loading="lazy" src="../../resources/icones/Petzl.svg"/>
                                <img loading="lazy" src="../../resources/icones/LaSportiva.svg"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('homepage' => 'TRUE')); ?></footer>
</html>