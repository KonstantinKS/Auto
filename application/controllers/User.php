<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends MX_Controller {

    public function __construct() {
        parent::__construct();
		$this->load->helper('url');
		$this->load->library('form_validation');
        $this->load->model('userModel');
		$this->load->library('session');
    }

    public function ajax_login()
    {		
		$this->form_validation->set_rules(
			'login',
			'Login',
			'trim|strip_tags|required|min_length[5]|max_length[12]',
			array('required' => 'You have not provided %s.')
		);
		$this->form_validation->set_rules(
			'pass',
			'Pass',
			'trim|required|min_length[8]',
			array(
				'required' => 'You must provide a %s.',
				'min_length' => 'Минимум 8 символов в поле %s.'
			)
		);			
		if ($this->form_validation->run() === FALSE) {	
			echo validation_errors();
		} else {
			$log['login'] = $this->input->post('login');
			$log['pass'] = md5($this->input->post('pass'));			
			$check = $this->userModel->check_user($log);
			if ($check) {
				$data['user_info'] = $this->userModel->user_login($log['login']);
				$ses_data = array(
					'login' => $data['user_info']['login'],
				);
				$this->session->set_userdata($ses_data);
				redirect(base_url().'login/login/userLogin');
			} else {
				echo 'denied';
			}
		}
    }

    public function ajax_logout()
    {
        $logout = $_POST['logout'];
		
		$this->form_validation->set_rules('logout', 'Logout', 'trim|strip_tags|required');
		if ($this->form_validation->run() !== FALSE) {
			$logout = $this->input->post('logout');			
			if ($logout) {
				$this->session->unset_userdata('login');
				redirect(base_url().'login/login/userLogin');
			}
		}
    }
	
	public function ajax_check()
    {
		$this->form_validation->set_rules(
			'login',
			'Login',
			'trim|strip_tags|required|min_length[5]|max_length[12]|is_unique[user.login]',
			 array(
                'required'  => 'You have not provided %s.',
                'is_unique' => 'This %s already exists.'				
        	)
		);
		$this->form_validation->set_rules(
			'pass',
			'Pass',
			'trim|required|min_length[8]',
			array(
				'required' => 'You must provide a %s.',
				'min_length' => 'Минимум 8 символов в поле %s.'
			)
		);			
		if ($this->form_validation->run() === FALSE) {	
			echo validation_errors();
		} else {
			$log['login'] = $this->input->post('login');
			$log['pass'] = md5($this->input->post('pass'));					
			$data['query'] = $this->userModel->user_check_reg($log);
			if ($data['query']) {				
				$data['user_info'] = $this->userModel->user_login($log['login']);
				$ses_data = array(
					'login' => $data['user_info']['login'],
				);
				$this->session->set_userdata($ses_data);
				redirect(base_url().'login/login/userLogin');
			} else {
				echo 'check_denied';
			}		
		}
    }
	
}
















