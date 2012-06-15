<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Model extends CI_Model{
    protected $_data = null;

    protected function loaded(){
        return empty($this->_data);
    }
}
