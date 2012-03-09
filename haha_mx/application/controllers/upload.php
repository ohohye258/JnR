<?php
	class Upload extends CI_Controller{
		function __construct()
		{
			parent::__construct();
			$this->load->helper(array('form', 'url'));
			$this->load->library('upload');
			$this->load->model('img_model');
		}
		
		function index()
		{
			$this->load->view('upload/img_upload', array('error' => ''));
		}
		
		function do_upload()
		{
			$config['upload_path'] = 'assets/images';
			$config['allowed_types'] = 'gif|jpg|jpeg|png';
			$config['max_size'] = 0;
			$config['max_width'] = 0;
			$config['max_height'] = 0;
			$config['max_filename'] = 0;
			$config['encrypt_name'] = true;
			$config['remove_spaces'] = true;
			
			$this->upload->initialize($config);
			
			if(!$this->upload->do_upload())
			{
				$error = array('error' => $this->upload->display_errors());
				$this->load->view('upload/upload_faild', $error);
			}
			else
			{
				$data = array('upload_data' => $this->upload->data());
				$img = array(
					'file' => $data['upload_data']['file_name'],
					'desc' => $this->input->post('desc'),
					'date' => date('Y-m-d H:i:s', time())
				);
				
				if($this->img_model->create_img($img))
				{
					$this->load->view('upload/upload_success', $data);
				}
				else
				{
					$error = array('error' => 'db error');
					$this->load->view('upload/upload_faild', $error);
				}
				
			}
		}
	}
?>