<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Message extends CI_Model{
    private $_table = 'messages';

    public function __construct(){
        parent::__construct();
    }

    public function get_by_user_id($user_id){
        $messages = $this->db->query("SELECT * FROM {$this->_table} WHERE user_id = '$user_id'")->result();
        return $messages;
    }

    public function send($user_id, $receiver_id, $message, $type){
        $data = array(
            'user_id' => $user_id,
            'receiver_id' => $receiver_id,
            'message' => $message,
            'type_id' => $type,
            );

        return $this->db->insert($this->_table, $data);
    }
}
