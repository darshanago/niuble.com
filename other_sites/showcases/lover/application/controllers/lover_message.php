<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Lover_message extends MY_Controller {
    private $min_length = 5;

	public function post() {
        $this->auto_render = false;
        $message = $this->_get_message();
        $type = $this->_get_type();

        if( $this->_access_check() === false ) return $this->_response(500, 'unlogin', true);
        $sender = $this->o_user->id;
        $receiver = $this->_get_receiver();
        $result = $this->message->send($sender, $receiver, $message, $type);

        if($result === true){
            return $this->_response(200, 'Success!', true);
        }else{
            return $this->_response(500, 'Unknow Error!', true);
        }
	}

    private function _get_message(){
        if( ! isset($_POST['message'])){
            return $this->_response(900, 'No Message been Recieved!', true);
        }
        if( strlen($_POST['message']) < $this->min_length ){
            return $this->_response(901, 'Message is Too Short!', true);
        }
        return $_POST['message'];
    }

    private function _get_type(){
        if( ! isset($_POST['type'])){
            return $this->_response(800, 'No Type!', true);
        }
        return $_POST['type'];
    }

    private function _get_receiver($id=null){
        $receiver = 0;
        if($id === null ){
            $receiver = $this->o_user->default_relationship;
        }
        return $receiver;
    }
}
