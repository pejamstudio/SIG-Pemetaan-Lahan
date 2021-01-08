<?php

session_start();

require_once '../vendor/autoload.php';

require_once 'Core/Route.php';
require_once 'Core/Controller.php';

require_once 'Database.php';

$GLOBALS['base_url'] = ((isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on") ? "https" : "http");
$GLOBALS['base_url'] .= "://".$_SERVER['HTTP_HOST'];
$GLOBALS['base_url'] .= str_replace(basename($_SERVER['SCRIPT_NAME']),"",$_SERVER['SCRIPT_NAME']);