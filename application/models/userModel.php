<?php

	defined('BASEPATH') OR exit('No direct script access allowed');	
	
	class UserModel extends CI_Model {		
	
		public function __construct()
		{
			parent::__construct();
			$this->load->database();
		}		
	
		public function check_user($log)
		{
			$this->db->where('login', $log['login']);
			$this->db->where('password', $log['pass']);
			$query = $this->db->get('user');
			if($query->result_id->num_rows > 0) {
				return TRUE;
			} else {
				return FALSE;
			}
		}		
	
		public function user_login($login)
		{
			$this->db->where('login', $login);
			$query = $this->db->get('user');
			return $query->row_array();
		}
		
		public function user_check_reg($log)
		{				
			$data = array(
				'id' => NULL,
				'login' => $log['login'],
				'password' => $log['pass']
			);			
			$query = $this->db->insert('user', $data);		
			return $query;			
		}
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	