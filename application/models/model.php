<?php
	
	class Model extends CI_Model {
	
		public function __construct()
		{
			$this->load->database();
		}
		
		public function get_notice()
		{			
			$this->db->order_by('id', 'ASC');
			$query = $this->db->get('notice');
			return $query->result_array();			
		}			
			
	}