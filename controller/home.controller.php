<?php
class HomeController {
    function __construct($params){

        $this->action= $params[0] ?? 'index';
        $this->id = $params[1] ?? null;

        if(!method_exists(get_called_class(), $this->action)){
            $controllerName= get_called_class();
            die("Action \" $this->action \" of the controller \" $controllerName\" not exists");
        }
        $this->{$this->action}();
        
    }
    function Index(){

        $controllerName=get_called_class();
        $this->content= "Action \" $this->action \" of the controller \" $controllerName\" executed");
    }
}