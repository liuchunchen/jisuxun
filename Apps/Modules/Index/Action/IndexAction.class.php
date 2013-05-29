<?php
class IndexAction extends Action{
    private static $colors = array("block_red", "block_blue", "block_yellow", "block_green");
    public function index() {
        $this->assign('title', '首页-极速寻');
        $lostCard = M('LostCard');
        $cards = $lostCard->select();
        $i = 0;
        $max = rand(10, 30);
        //print $max . "<br/>";
        $data = array();
        while($i < $max) {
            $i = $i + 1;
            $color = rand(0, 3);
            //print_r(self::$colors);
            //print self::$colors[$color] . "<br/>";
            $tmp['color'] = self::$colors[$color];
            $tmp['content'] = self::$colors[$color];
            $tmp['card'] = $cards[$i % 2];
            $data[] = $tmp;
        }
        $this->assign('data', $data);
        $this->display();
    }
}