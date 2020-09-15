<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __Construct()
	{
		parent::__Construct();
		
	}
    
public function Index()
{
	$data = array(	'title'		=> 'Home',
					'content'	=> 'pages/home',
				);
	$this->load->view('layout/Wrapper',$data);	
}



}