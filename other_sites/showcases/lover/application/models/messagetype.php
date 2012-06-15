<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Messagetype extends MY_Model{
    private $_table = 'message_type';

    public function get_all(){
        $this->_data = $this->db->query("SELECT * FROM {$this->_table}")->result();
        return $this->_decode();
    }

    public function get_by_id($id){
        $this->_data = $this->db->query("SELECT * FROM {$this->_table} WHERE id = $id")->result();
        return $this->_decode();
    }

    private function _decode(){
        if($this->_data === null) return null;

        foreach($this->_data as $index => $type){
            $style = json_decode($type->style);
            $this->_data[$index]->style = new stdClass();

            foreach($style as $element => $css){
                $style_text->$element = '';

                foreach($css as $name => $value){
                    $style_text->$element .= $name.':'.$value.';';
                }
            }
            $this->_data[$index]->style = clone $style_text;
        }
        return $this->_data;
    }
}
