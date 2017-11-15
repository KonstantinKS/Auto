<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notice extends CI_Controller {	
	
	private $template = '/templates/notice/';
		
	public function __construct()
	{
		parent::__construct();
		$this->load->model('model');
	}
	
	public function index()
	{				
		$data['title'] = 'Notice';
		$data['notice'] = $this->model->get_notice();		
		$this->load->view( $this->template . 'header', $data );
		$this->load->view( 'notice/index', $data );
		$this->load->view( $this->template . 'footer', $data );
	}
	
}
