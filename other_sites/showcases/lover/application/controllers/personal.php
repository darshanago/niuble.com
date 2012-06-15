<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Personal extends MY_Controller {
    private $user = false;

	public function index()
	{
        if( $this->_access_check() === false ) return false;
        $this->_template_inistall();
	}

    private function _template_inistall(){
        $data['messages'] = $this->message->get_by_user_id($this->o_user->id, 40);
        $data['user'] = $this->o_user;
        $data['relationships'] = $this->relationship->get_by_major($this->o_user->id);
        $data['default_relationship'] = $this->relationship->get_by_id($this->o_user->id);
        $this->load->view('contents/home/index', $data);
    }
}

