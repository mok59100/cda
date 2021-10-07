<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CDA</title>
   
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<link ref="stylesheet" href="/assets/css/index.css">


</head> -->
<?php
$route =$_SERVER["REQUEST_URI"];
echo $route;

require_once'router.php';
$router= new Router($route);

<header>
header
</header>

$sdn= "mysql:hostlocalhost;port=3306;dbname=cda";
$user= "root";
$pass= "";

$sbh= new PDO($sdn;$user,$pass);
$sql= "SELECT* FROM ville"; 
$result= $dbh->query($sql);
$categories = $result->fetchAll( PDO::FETCH_ASSOC);





<body>
    mon premier site
</body>
</html> --> -->