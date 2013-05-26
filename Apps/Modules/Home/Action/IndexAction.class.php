<?php
class IndexAction extends Action{
    public function index() {
        $lostCard = M('LostCard');
        //$data = $lostCard->select(array('id'=>1));
        $data = $lostCard->select();
        $this->assign('title', 'Home');
        $this->assign('data', $data);
        $this->display();
    }
}