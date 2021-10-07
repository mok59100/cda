<?php
class router{

function__construct($route){
    $route=trim($route,'/');
    $route=filter_var($route,FILTER_SANITIZE_URL);
    $route=explode('/', $route);

    $controllerName=array_shift($route);
    var_dump($controllerName);
    var_dump($route);



$controllerName=array_shift($route);
$controllerFilePath= "controller/$controllerName.controller.php";
if(!file_exists($controllerFilePath)){
    die("file for the Controller:\"$controllerName\"not found");
}
require_once $controllerFilePath;
$controllerName = ucfirst ($controllerName)."Controller";
$this->controller = new $controllerClassName($route);

}
}
function render(){
    return $this->controller->content;
}