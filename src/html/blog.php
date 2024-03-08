<?php  require '../../../Web/resources/php/scripts.php'; ?>
<?php 
$query = "SELECT * FROM t_blog_articles";
$data = connectToDatabase($query);
$i = 0;
?>
<!DOCTYPE html>
<html lang="fr">

<head>
    <!--
            Author: Aurélien Lahaye
            Date: 29.02.2024
            Description: Blog page of the webiste
        -->
    <title>Bouldero - Blog page</title>
    <meta http-equiv="content-type" content="text/html" ; charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../../resources/css/shared.css">
    <link rel="stylesheet" href="../../resources/css/blog.css">
    <link rel="icon" type="image/png" href="../../resources/icones/Bouldero_Logo.svg">
</head>
<header><?php includeWithVariables('../../resources/siteparts/header.php', array('blog' => 'TRUE')); ?></header>
<nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('blog' => 'TRUE')); ?></nav>

<body>
    <div class="articlesList">
        <?php foreach($data as $articles): ?>
        <form id="hiddenForm<?php echo $articles['idBlog'];?>" method="POST" action="./ArticlesBlog"
            class="formArticles">
            <div class="articles">
                <img loading="lazy"
                    src="<?php echo $image = "../../resources/images/Blog/". $articles['bloImgCover']; ?>"
                    class="imgArticles" />
                <div class="insideArticles">
                    <div class="infosArticles">
                        <div class="titreArticles"><?php echo $articles['bloArtName'];?></div>
                        <div class="descArticles"><?php echo $articles['bloPreDescription']; ?></div>
                    </div>
                    <div class="bottomLineArticles">
                        <div class="leftInfosArticles">
                            <div class="dateArticles"><?php echo $articles['bloArtDate'];?></div>
                            <div class="auteurArticles">Par: <?php echo $articles['bloArtAuteur'];?></div>
                        </div>
                        <input type="hidden" name="idBlog" value="<?php echo $articles['idBlog'];?>">
                        <button href="javascript:{}"
                            onclick="document.getElementById('hiddenForm<?php echo $articles['idBlog'];?>').submit();"
                            class="buttonArticles">
                            <div class="textButtonArticles">Lire l'article</div>
                        </button>
                    </div>
                </div>
            </div>
        </form>
        <?php endforeach; ?>
    </div>
    </div>
</body>
<footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('blog' => 'TRUE')); ?></footer>

</html>
