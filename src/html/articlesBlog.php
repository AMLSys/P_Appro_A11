<?php  require '../../../Web/resources/php/scripts.php'; ?>
<?php
//Select the single blog item
$idBlog= $_POST["idBlog"];
$query = "SELECT * FROM t_blog_articles WHERE idBlog='$idBlog'";
$data = connectToDatabase($query);
?>
<?php
//Create variables from the item query
foreach($data as $item){
    $image = "../../resources/images/Blog/". $item['bloImgCover'];
    $title = $item['bloArtName'];
    $description = $item['bloArtDescription'];
    $date = $item['bloArtDate'];
    $auteur = $item['bloArtAuteur'];
    $typeBlog = $item['bloArtCategorie'];
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <!--
            Author: Aurélien Lahaye
            Date: 04.03.2024
            Description: Article of the blog
        -->
    <title>Bouldero - Article page</title>
    <meta http-equiv="content-type" content="text/html" ; charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../resources/css/shared.css">
    <link rel="stylesheet" href="../../resources/css/blogArticles.css">
    <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
</head>
<header><?php includeWithVariables('../../resources/siteparts/header.php', array('blog' => 'TRUE')); ?></header>
<nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('blog' => 'TRUE')); ?></nav>
<body>
    <!--Article-->
    <div class="article">
        <img src="<?php echo $image;?>" alt="<?php echo $title;?>" class="imgArticle">
        <!--Arianne's thread-->
        <div class="ariane">
            <a class="link-decoration" href="./Blog">
                <div class="link-decoration">Blog</div>
            </a>
            <img loading="lazy" src="../../resources/icones/Right Arrow.svg" class="right-arrow" />
            <div><?php echo $typeBlog ?></div>
            <img loading="lazy" src="../../resources/icones/Right Arrow.svg" class="right-arrow" />
            <div class="ariane-article"><?php echo $title ?></div>
        </div>
        <!--Article-->
        <div class="titleArticle"><?php echo $title;?></div>
        <div class="descArticle"><?php echo $description ?></div>
    </div>
</body>
<footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('blog' => 'TRUE')); ?></footer>
</html>
