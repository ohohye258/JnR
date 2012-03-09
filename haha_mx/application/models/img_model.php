<?php
	class Img_model extends CI_Model{
		function __construct()
		{
			parent::__construct();
			$this->load->database();
		}
		
		function create_img($img)
		{
			return $this->db->insert('img', $img);
		}
		
		function get_img_all()
		{
			$query = $this->db->get('img');
			return $query;
		}
		
		function get_img_page($per, $offset)
		{
			$query = $this->db->get('img', $per, $offset);
			return $query;
		}
		
		function get_img($id)
		{
			$query = $this->db->get_where('img', array('id' => $id));
			return $query;
		}
	}
?>