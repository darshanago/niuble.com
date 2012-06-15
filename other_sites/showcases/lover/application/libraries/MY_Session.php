<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Session extends CI_Session{

    public function all(){
        return $this->all_userdata();
    }

    public function remove($item){
        return $this->unset_userdata($item);
    }

    public function get($item){
        return $this->userdata($item);
    }

    public function set($newdata = array(), $newval = ''){
        return $this->set_userdata($newdata, $newval);
    }

    public function destory(){
        return $this->sess_destroy();
    }
}
