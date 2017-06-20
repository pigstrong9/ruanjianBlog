<?php

namespace app\index\model;

use think\Model;

class Comment extends Model {

    protected function getDatelineAttr($dateline) {
        return date('Y-m-d H:i:s', $dateline);
    }

    public function Users() {
        return $this->hasOne('Users','uid','uid')->bind('nickname','sex');
    }

}
