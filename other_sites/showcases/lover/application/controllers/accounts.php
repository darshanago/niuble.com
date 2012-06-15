<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Accounts extends MY_Controller {

	public function index()
	{
        $this->login();
	}

	public function login(){
        $data = array();

        if( !empty($_POST) && isset($_POST['submit']) ){
            $login = $this->user->login();
            if($login === true){
                $this->load->helper('url');
                redirect('/');
                exit;
            }else{
                $data['error'] = $login['message'];
            }
        }

        $data['username'] = isset($_POST['username']) ? $_POST['username'] : '';

        $this->title = 'Login';
		$this->load->view('contents/accounts/login', $data);
    }
}

