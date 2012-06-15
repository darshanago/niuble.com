<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class MY_Controller extends CI_Controller{
    protected $auto_render = true;
    protected $default_title = "Lover Logs";
    protected $title = null;
    protected $o_user = null;

    public function _output($output){
        if( $this->auto_render === true ){
            $this->_auto_render($output);
        }else{
            echo $output;
        }
    }

    protected function _auto_render($output){
        $data = array();
        $data['content'] = $output;

        if($this->title === null){
            $data['title'] = $this->default_title;
        }elseif($this->default_title){
            $data['title'] = $this->title . " - " . $this->default_title;
        }else{
            $data['title'] = $this->title;
        }

        $this->config->load('styles');
        $this->config->load('javascripts');
        $data['styles'] = $this->config->item('styles');
        $data['javascripts'] = $this->config->item('javascripts');
        $data['style_dir'] = $this->config->item('style_dir');
        $data['javascript_dir'] = $this->config->item('javascript_dir');

        $template = $this->load->view('template', $data, true);
        echo $template;
    }

    protected function _access_check(){
        $this->o_user = $this->auth->get_user();
        if($this->o_user === false){
            $this->load->helper('url');
            redirect('/accounts');
            return false;
        }
    }

    protected function _response($code, $message='Success!', $ajax_error = false){
        $data = array('code'=>$code);
        switch($code){
            case 200:
                $data['status'] = 'success';
                $data['message'] = $message;
                break;
            default:
                $data['status'] = 'error';
                $data['message'] = $message;
        }
        if( $ajax_error !== false ){
            $this->_ajax_error($data);
        }
        return json_encode($data);
    }

    protected function _ajax_error($data){
        die(json_encode($data));
    }

}
