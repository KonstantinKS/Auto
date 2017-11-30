<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends MX_Controller {
	
	function __construct()
    {
        parent::__construct();
		$this->load->helper('url');		
    }
	
	public function userLogin()
    {		
		$this->load->library('session');
		$this->load->helper('form');		
		$data['user_info'] = $this->session->userdata('login');
        $this->load->view('userLogin',$data);
    }	
	
}
