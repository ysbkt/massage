<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {

	public function Index()
	{
		$this->load->view('login');
	}
        
	public function login()
	{
		$this->load->view('Home');
	}
        
        public function logout()
	{
                redirect('auth');
	}
}
