<?php

namespace app\admin\controller;

use think\Controller;
use app\index\model\Users;

class User extends Controller {

    public function userList() {
        $index = new Index();
        $index->checkLogin();
        $list = Users::all();
        $this->assign('list', $list);
        return $this->fetch();
    }

    public function del() {
        $user = Users::get($_GET['uid']);
        if ($user->delete()) {
            echo "<script>alert('删除成功');";
        } else {
            echo "<script>alert('删除失败');";
        }
        echo "window.location.href='/admin/user/userList';</script>";
    }

}
