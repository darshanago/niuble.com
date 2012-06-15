<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Home extends MY_Controller {
    protected $o_user = false;

	public function index()
	{
        if( $this->_access_check() === false ) return false;
        $this->_template_inistall();
	}

    protected function _template_inistall(){
        $data['messages'] = $this->message->get_by_user_id($this->o_user->id, 40);
        $data['relationships'] = $this->relationship->get_by_major($this->o_user->id);
        $data['types'] = $this->messagetype->get_all();
        $this->load->view('contents/home/index', $data);
    }
}

