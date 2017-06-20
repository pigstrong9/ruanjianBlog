<?php
namespace app\index\model;
use think\Model;
class Users extends Model {
    
    public function getSexAttr($value)
    {
        $sex = [ 0=>'女',1=>'男'];
        return $sex[$value];
    }
}
