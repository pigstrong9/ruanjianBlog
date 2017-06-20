<?php
namespace app\admin\model;
use think\Model;
class Article extends Model{
   protected function getDatelineAttr($dateline)
{
    return date('Y-m-d', $dateline);
}
public function Type() {
        return $this->hasOne('Type','typeId','typeId')->bind('typeName');
    }   
}
