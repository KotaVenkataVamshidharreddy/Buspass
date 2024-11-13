<?php  
$servername = "tcp:buspass.database.windows.net,1433";
$username = "group6";  // Use a more secure username for live servers
$password = "Satya@2004";  // Set a strong password if using a live server
$database = "busspass"; // Replace with your Azure SQL admin password

try {
    $conn = new PDO("sqlsrv:Server=$serverName;Database=$database", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Connection failed: " . $e->getMessage());
}
?>

<?php

// Detect if running on localhost
$isLocal = ($_SERVER['SERVER_NAME'] === 'localhost');

// Local MySQL database credentials (XAMPP)
$localServername = "localhost";
$localUsername = "root";
$localPassword = "";  // Typically blank for XAMPP
$localDatabase = "travel";

// Azure SQL Database credentials
$servername = "tcp:buspass.database.windows.net,1433";
$username = "group6";  // Use a more secure username for live servers
$password = "Satya@2004";  // Set a strong password if using a live server
$database = "busspass"; // Replace with your Azure SQL admin password

try {
    if ($isLocal) {
        // Connect to local MySQL database (XAMPP)
        $conn = new mysqli($localServername, $localUsername, $localPassword, $localDatabase);

        if ($conn->connect_error) {
            die("Local Connection failed: " . $conn->connect_error);
        }
    } else {
        // Connect to Azure SQL database
        $conn = new PDO("sqlsrv:Server=$azureServerName;Database=$azureDatabase", $azureUsername, $azurePassword);
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    }
} catch (Exception $e) {
    die("Connection failed: " . $e->getMessage());
}
?>