<?php
    //Datas
    
?>

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

    function connectToDatabase($query)
    {
        $data = "";
        $servername = "localhost";
        $username = "root";
        $password = "root";
        try{
            $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade;charset=utf8mb4", $username, $password);
            $data = $conn->query($query)->fetchAll(PDO::FETCH_BOTH);
        }catch(PDOException $e){
        }

        return $data;
    }
?>
<?php
    function findNumberRows($query)
    {
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade;charset=utf8mb4", $username, $password);
        $nbRows = $conn->query($query)->fetchColumn();
        
        return $nbRows;
    }
?>
