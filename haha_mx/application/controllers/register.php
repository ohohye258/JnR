<?php
	class Register extends CI_Controller{
		
		public function __construct()
		{
			parent::__construct();
			$this->load->model('user_model');
		}
				
		public function create_user()
		{
			$this->load->helper('form');
			$this->load->library('form_validation');
			
			$data['title'] = 'Create a new user';
			
			$this->form_validation->set_rules('username', 'Username', 'required');
			$this->form_validation->set_rules('password', 'Password', 'required');
			
			if($this->form_validation->run() === FALSE)
			{
				$this->output->cache(1);
				
				$this->load->view('templates/header', $data);
				$this->load->view('register/register');
				$this->load->view('templates/footer');
			}
			else
			{
				$this->user_model->create_user();
				$this->load->view('register/success');
			}
		}
	}
?>