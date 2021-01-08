<?php

	/**
	 * 
	 */
	class Route
	{

		protected $controller = 'dashboardController';
		protected $method 	  = 'index';
		protected $params 	  = [];
		
		function __construct()
		{
			if(isset($_GET['url'])){
				$url = explode('/', filter_var(trim($_GET['url']), FILTER_SANITIZE_URL));
			}
			else{
				$url[0] = 'dashboard';
			}

			$url[0] = $url[0].'Controller';

			// cek controller
			if( file_exists('../app/Controllers/'.$url[0].'.php')){
				$this->controller = $url[0];
			}
			else{
				return  require_once '../app/Views/Error/404.php';
			}

			require_once '../app/Controllers/'.$this->controller.'.php';

			$this->controller = new $this->controller;

			// cek method
			if(isset($url[1])) {
				if(method_exists($this->controller, $url[1])){
					$this->method = $url[1];
				}
			}

			unset($url[0]);
			unset($url[1]);
			$this->params = $url;

			// call parameter
			call_user_func_array([$this->controller, $this->method], $this->params);
		}
	}