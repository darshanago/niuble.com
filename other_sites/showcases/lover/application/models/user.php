<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class User extends CI_Model{
    public $is_logged = false;

    public function __construct(){
        parent::__construct();
    }

    public function login(){
        $username = $this->input->post('username');
        $password = $this->input->post('password');
        
        $user = $this->_get_user($username);
        if(empty($user)){
            return array('status' =>'error', 'message' => 'User Name Unfinded');
        }

        if($user->password === md5(trim($password))){
            $this->is_logged = true;
            Auth::instance()->set_user($user);
            return true;
        }else{
            return array('status' =>'error', 'message' => 'Password is Incorrect');
        }
    }

    public function get_by_id($id){
        return $this->db->query('SELECT * FROM users WHERE id = '.$id)->row();
    }

    private function _get_user($username){
        $field = 'username';
        if($this->_is_email($username)){
            $field = 'email';
        }
        return $this->db->query("SELECT * FROM users WHERE $field = '$username'")->row();
    }

    private function _is_email($string){
        return strpos($string, '@') !== false;
    }
}
