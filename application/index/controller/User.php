<?php

namespace app\index\controller;

use think\Controller;
use app\admin\model\Article;
use app\index\model\Users;
use think\Session;
use think\View;
use \app\index\model\Comment;

class User extends Controller {

    public function Login() {
        //渲染登录页面
        return $this->fetch();
    }

    public function check($code = '') {
        //检查登录信息
        $captcha = new \think\captcha\Captcha();
        if (!$captcha->check($code)) {
            $this->error('验证码错误');
        } else {
            $username = $_POST['username'];
            $password = $_POST['password'];
            $userA = new Users;
            $result = $userA->where('username', $username)->where('password', $password)->find();
            if (!$result) {
                $this->error('用户名或密码错误');
            } else {
                Session::set('user', $result);
                $this->success('欢迎你!' . $result->nickname, '/Index/index');
            }
        }
    }

    public function logout() {
        //注销
        Session::clear();
        $this->success('注销成功', '/Index/index');
    }

    public function register() {
        //渲染注册页面
        return $this->fetch();
    }

    public function create($code = '') {
        //执行注册操作
        $captcha = new \think\captcha\Captcha();
        if (!$captcha->check($code)) {
            $this->error('验证码错误');
        } else {
            $user = new Users;
            $result = $user->where('username', $_POST['username'])->find();
            if ($result) {
                $this->error('用户名已被注册');
            } else {
                $user->username = $_POST['username'];
                $user->password = $_POST['password'];
                $user->phone = $_POST['phone'];
                $user->email = $_POST['email'];
                $user->nickname = $_POST['nickname'];
                $user->sex = $_POST['sex'];
                $user->save();
                Session::set('user', $user);
                $this->success('注册成功,欢迎你!' . $_POST['nickname'], '/Index/index');
            }
        }
    }

    public function addCom() {
        //添加评论
        if (empty($_POST['comment'])) {
            echo "<font color='red'>评论不能为空!</font>";
            return;
        }
        if (empty($_POST['uid'])) {
            echo "<font color='red'>访客无法评论,请<a href='/index/user/login'>登录</a>!</font>";
            return;
        }
        $com = new Comment();
        $art = new Article();
        $com->aid = $_POST['aid'];
        $com->uid = $_POST['uid'];
        $com->comText = $_POST['comment'];
        $com->dateline = time();
        $art->where('id', $_POST['aid'])->setInc('comment');
        $com->save();
        echo "<font color='red'>评论成功,点击<a href=''>刷新</a>查看!</font>";
    }

}
