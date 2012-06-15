<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Auth{
    protected static $_instance;
    protected $token = 'user_logged_in';
    protected $CI;

    public static function instance(){
        if ( ! isset(Auth::$_instance) ){
            Auth::$_instance = new Auth();
        }
        return Auth::$_instance;
    }

    public function __construct(){
        $this->CI =& get_instance();
    }

    public function get_user(){
        return $this->CI->session->get($this->token);
    }

    public function set_user($user){
        return $this->CI->session->set($this->token, $user);
    }

    public function logout(){
        return $this->CI->session->delete($this->token);
    }

}
