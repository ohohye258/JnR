<?php
	class Index extends CI_Controller{
		public function __construct(){
			parent::__construct();
			$this->load->model('img_model');
			$this->load->helper('url');
		}
		
		function index()
		{
			$data['imgs'] = $this->img_model->get_img_all()->result_array();
			// $data['imgs'] = $this->img_model->get_img_page(10, 0)->result_array();
			$this->load->view('index', $data);
		}
		
		function ajax_get_img($per, $offset)
		{
			return json_encode($this->img_model->get_img_page($per, $offset));
		}
	}
?>