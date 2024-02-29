<?php  include '../../../Web/resources/php/scripts.php'; ?>
<?php 
$query = "SELECT * FROM t_blog_articles";
$data = connectToDatabase($query);?>
<!DOCTYPE html>
<html lang="fr">
    <head>
        <!--
		    Author: Aurélien Lahaye
		    Date: 29.02.2024
		    Description: Blog page of the webiste
	    -->
        <title>Bouldero - Blog page</title>
        <meta http-equiv="content-type" content="text/html";  charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../../resources/css/shared.css">
        <link rel="stylesheet" href="../../resources/css/blog.css">
        <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
    </head>
    <header><?php includeWithVariables('../../resources/siteparts/header.php', array('blog' => 'TRUE')); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('blog' => 'TRUE')); ?></nav>
    <body>
        <div class="articlesList">
        <?php foreach($data as $articles) : ?>
            <div class="articles">
                <img href="">
                <div class="titreArticles"><?php echo $articles['bloArtName'];?></div>
                <div class="descArticles"><?php echo $articles['bloPreDescription']; ?></div>
                <div class="dateArticles"><?php echo $articles['bloArtDate'];?></div>
                <div class="auteurArticles"><?php echo $articles['bloArtAuteur'];?></div>
                <button class="buttonArticles">
                    <div class="textArticles">Lire l'article</div>
                </button>
            </div>
        <?php endforeach; ?>
        </div>
    </body>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('blog' => 'TRUE')); ?></footer>
</html>