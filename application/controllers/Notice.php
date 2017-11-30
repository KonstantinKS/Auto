<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Notice extends MX_Controller {	
	
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
	
	public function notice_counter()
	{
		$data['slug'] = trim(strip_tags($_POST['slug']));		
		$check_notice = $this->model->check_notice($data);		
		if ($check_notice) {			
            $counter = $this->model->notification_counter($data);
			echo $counter;		
        } else {
           	echo 'notice_denied';
        }		
	}
	
}
