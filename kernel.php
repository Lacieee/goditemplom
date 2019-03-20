<?php
session_start();

define("baseDIR",dirname(__FILE__));

if (isset($_GET["page"])){
    $get = $_GET["page"];

    initialize($get);
}else{
    die("Kernel not working");
}

function initialize($pageFullPath){
    $fragments=explode("/",$pageFullPath);

    if (empty($fragments[0])){
        $fragments[0] = "index";
    }
    $method = null;
    $controllerFullPath = "Controllers/".$fragments."Controller.php";

    if (file_exists($controllerFullPath)){
        require_once($controllerFullPath);
        $controllerName = $fragments[0]."Contoller";

        switch (count($fragments)) {
            case 1:
                $controllerName::getPage();
                break;
            case 2:
                $controller = new $controllerName();
                $method = $fragments[1];
                $controller->{$method}();
                break;
            case 3:
                $controller = new $controllerName();
                $method = $fragments[1];
                $controller->{$method}($fragments[2]);
                break;
            default:
                require_once "Views/404.php";
        }
    }else{
        require_once "Views/404.php";
    }
}