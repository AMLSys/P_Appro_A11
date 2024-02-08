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
        
    </head>
    <header><?php require('../../resources/siteparts/header.php'); ?></header>
    <nav><?php includeWithVariables('../../resources/siteparts/nav.php', array('entrainement' => true)); ?></nav>
    <footer><?php includeWithVariables('../../resources/siteparts/footer.php', array('entrainement' => 'TRUE')); ?></footer>
</html>