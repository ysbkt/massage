<?php
defined('BASEPATH') OR exit('No direct script allowed');

class Master extends CI_Controller {
	function __Construct()
	{
		parent::__Construct();

	}
    
    public function User() 
    {
		$data = array(	'title'		=> 'User',
						'content'	=> 'pages/User',
					);
		$this->load->view('layout/Wrapper',$data);	
	}

	public function AddUser()
	{
		$data = array(	'username' 		=> $this->input->post('username'),
						'password' 		=> $this->input->post('password').
						'insert_by'		=> ,
						'insert_date'	=> date('Y-m-d H:i:s'),
						'update_by'		=> ,
						'update_date'	=> date('Y-m-d H:i:s'));
	}

}