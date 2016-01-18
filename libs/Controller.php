<?php
	class Controller
    {
        public $view = null;
        public $model = null;
        final function loadModel($name)
        {
            $path = URL_APPLICATION.$name.'/'.$name.'_model.inc.php';
            if (file_exists($path)){
                require $path;
                $modelName = ucfirst($name) . '_Model';
                $this->model = new $modelName;
            }
        }
        final function loadView($name)
        {
            $path = URL_APPLICATION.$name.'/'.$name.'_view.inc.php';
            if (file_exists($path)){
                require $path;
                $viewName = ucfirst($name) . '_View';
                $this->view = new $viewName;
            }
        }
	}