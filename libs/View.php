<?php
	class View
	{
        public $tpl;
		public function __construct()
		{
            $this->tpl = new Template();
		}
		public function addView($name)
		{
            $file = 'application/'.$name.'/'.$name.'_view.inc.php';
			require $file;
		}
	}