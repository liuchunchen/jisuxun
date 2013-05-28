<?php
class IndexAction extends Action{
    public function index() {
        $this->assign('title', '首页-极速寻');
        $this->display();
    }
}