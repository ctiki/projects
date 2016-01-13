<?php
	class Bootstrap
    {
        private $_url = null;
        private $_controller = null;
        private $_template = null;

		function __construct()
        {
            Database::connectDB();
            $this->_getUrl();
            $this->_getTemplate();
            $this->_loadExistingController();
            $this->_loadControllersMethods();
            $this->_showContent();
		}
        private function _getUrl()
        {
            $url = isset($_GET['url']) ? $_GET['url'] : null;
            $url = rtrim($url, '/');
            $url = filter_var($url, FILTER_SANITIZE_URL);
            $this->_url= explode('/', $url);
            $GLOBALS['SiteParams']['CurrentURL'] = $this->_url[0];
        }
        private function _loadExistingController()
        {
            $file = URL_APPLICATION.$this->_url[0].'/'.$this->_url[0].'_controller.inc.php';
            if (file_exists($file)){
                require $file;
                $className = ucfirst($this->_url[0]).'_Controller';
                if (class_exists($className)) {
                    $this->_controller = new $className;
                    $this->_controller->loadModel($this->_url[0]);
                    $this->_controller->loadView($this->_url[0]);
                }
            }
            else{
                header('location:'.URL.'main');
                die;
            }
        }
        private function _loadControllersMethods()
        {
            if( count( $this->_url ) >= 2 ) {
                $methodName = $this->_url[1].'Action';
                if(method_exists( $this->_controller, $methodName ) ) {
                    $params = $this->_url;
                    unset( $params[0] ); // removing controller
                    unset( $params[1] ); // removing method
                    $res = call_user_func_array( array( $this->_controller, $methodName ) , $params );
                    $this->_template->SetParams($res);
                }
            }
            else if(method_exists( $this->_controller, 'defaultAction')){
                $res = $this->_controller->defaultAction();
                $this->_template->SetParams($res);
            }

        }
        private function _getTemplate()
        {
            $this->_template = new Template();
            $this->_template->SetParams($GLOBALS['SiteParams']);
        }
        private function _showContent()
        {
            $this->_template->Display('templates/index.tpl');
        }
	}