<?php
	
	defined('BASEPATH') OR exit('No direct script access allowed');
	
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
		
		public function check_notice($data)
		{
			$this->db->where('slug', $data['slug']);			
			$query = $this->db->get('notice');			
			if($query->result_id->num_rows > 0) {
				return TRUE;
			} else {
				return FALSE;
			}
		}
		
		public function notification_counter($data)
		{			
			$query = $this->db->select('counter')->where('slug', $data['slug'])->get('notice');	
			$counter = $query->row()->counter;
			$counter = (int)$counter+1;				
			$this->db->set('counter', $counter, FALSE);
			$this->db->where('slug', $data['slug']);
			$this->db->update('notice');
			return $counter;			
		}
			
	}