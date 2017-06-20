<?php

namespace app\admin\controller;

use app\admin\model\Type;
use think\Controller;
use app\admin\model\Article;
use think\Request;
use think\File;
use app\index\model\Users;
use think\Session;
use think\View;
use app\admin\model\Admin;

class Index extends Controller {

    public function index() {

        $this->checkLogin();
        return $this->fetch();
    }

    public function login() {
        $view = new View;
        return $view->fetch();
    }

    public function logout() {
        Session::clear();
        $view = new Index();
        $view->success('注销成功', '/admin/index/login');
    }

    public function check() {
        $username = $_POST['username'];
        $password = $_POST['password'];
        $ad = new Admin();
        $result = $ad->where('username', $username)->where('password', $password)->find();
        if (!$result) {
            $this->error('用户名或密码错误');
        } else {
            Session::set('admin', $result);
            $this->success('欢迎你,管理员!', '/admin/index/index');
        }
    }

    public static function checkLogin() {
        if (!Session::has('admin')) {
            $view = new Index();
            $view->error('你没有登录,无法执行操作', '/admin/index/login');
        }
    }

}
