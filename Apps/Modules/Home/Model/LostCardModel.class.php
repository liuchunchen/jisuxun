<?php
/**
 * Created by JetBrains PhpStorm.
 * User: Shayne
 * Date: 13-5-16
 * Time: 下午10:45
 * To change this template use File | Settings | File Templates.
 */
class LostCardModel extends Model
{
    protected $tableName = 'lost_card';
    protected $fields = array(
        'id', 'type', 'description', 'card_no', 'phone', 'name',
        'create_time', 'expire_time', 'lost_period', 'lost_area',
        '_pk' => 'id', '_autoinc' => true
    );
}
