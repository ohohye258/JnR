<?php
	class User_model extends CI_Model{
		public function __construct()
		{
			$this->load->database();
		}
		
		public function create_user()
		{
			$this->load->helper('url');
			$data = array(
				'username' => $this->input->post('username'),
				'password' => $this->input->post('password')
			);
			
			return $this->db->insert('user', $data);
		}
	}
?>