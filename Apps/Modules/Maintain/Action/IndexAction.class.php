<?php
class IndexAction extends Action{
    public function index() {
        $this->assign('title', 'Website Maintain');
        $this->display();
    }
}