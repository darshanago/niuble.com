<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Relationship extends CI_Model{
    public function __construct(){
        parent::__construct();
    }

    public function get_by_major($major){
        $result = $this->db->query("SELECT minor FROM relationships WHERE major = $major")->result();
        $users = array();

        foreach($result as $row){
            $user = $this->user->get_by_id($row->minor);
            if($user !== false){
                $users[] = $user;
            }
        }

        return $users;
    }

    public function get_by_id($id){
        return $this->db->query("SELECT minor FROM relationships WHERE id = $id")->row();
    }
}
