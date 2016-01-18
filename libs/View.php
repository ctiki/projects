<?php
	class View
	{
        public $tpl;
		public function __construct()
		{
			$this->tpl = new Template();
		}
	}