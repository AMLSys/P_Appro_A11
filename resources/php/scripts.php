<?php
//Simple connection to the database
$servername = "localhost";
$username = "root";
$password = "root";
//Start the connection
try{
    $conn = new PDO("mysql:host=$servername;dbname=db_articles_escalade;charset=utf8mb4", $username, $password);
}catch(PDOException $e){
}
?>

<?php
//Function that includes something vith a variable
//Source : https://stackoverflow.com/questions/11905140/php-pass-variable-to-include
//Used to include the nav, the header and the footer and change color of the link
//$filePath = Path of the link you want to include
//$variables = which variable you want to pass to other included file
function includeWithVariables($filePath, $variables = array(), $print = true)
{
    // Extract the variables to a local namespace
    extract($variables);

    // Start output buffering
    ob_start();

    // Include the template file
    include $filePath;

    // End buffering and return its contents
    $output = ob_get_clean();
    if (!$print) {
        return $output;
    }
    echo $output;
}
?>
<?php
//Function that connect to the database and return the datas from the query
//$query = string you want to query to the database
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
//Function that return the number of items
//$query = string you want to query to the database
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
