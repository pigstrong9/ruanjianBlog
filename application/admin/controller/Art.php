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

class Art extends Controller {

    public function artList($ziduan = 'dateline', $paixu = 'desc', $page = 1) {
        if (Session::has('list')) {
            $list = Session::get('list');
        } else {
            $art = new Article;
            $list = $art->order($ziduan, $paixu)->select();
        }

        if (Session::has('typeList')) {
            $typeList = Session::get('typeList');
        } else {
            $typeList = Type::all();
            $this->assign('typeList', $typeList);
        }
        $list = Art::sort($list, $ziduan, $paixu);        //排序
        $listPage = Art::paginate($list, $page, 10);      //分页
        $render = Art::render($list, $page, 10); //获取分页控件

        $this->assign('list', $listPage);
        $this->assign('render', $render);
        Session::set('list', $list);

        return $this->fetch('artList');
    }

    public function typeSelect($typeId = 0) {
        Session::delete('list');
        if ($typeId != 0) {
            $art = new Article;
            $list = $art->where('typeId', $typeId)->select();
            session::set('list', $list);
        }
        return $this->artList();
    }

    public function typeList($page = 1) {
        if (Session::has('typeList')) {
            $typeList = Session::get('typeList');
        } else {
            $typeList = Type::all();
        }
        $listPage = Art::paginate($typeList, $page, 10);      //分页
        $render = Art::render($typeList, $page, 10); //获取分页控件
        $this->assign('typeList', $listPage);
        $this->assign('render', $render);
        return $this->fetch();
    }

    public function search() {
        if (!isset($_GET["key"]) || empty($_GET['key'])) {
            return json(['result' => '不能为空', 'type' => 0]);
        } else {
            Session::delete('list');
            $key = $_GET['key'];
            $art = new Article;
            $list = $art->where('title', 'like', '%' . $key . '%')->select();
            Session::set('list', $list);
            return json(['type' => 1]);
        }
    }

    public static function render($list, $page, $pageItem) {               //用于展示分页标签,pageItem是每页展示数目,page是用于请求当前的页数
        if ($page == 1) {
            $li = "<li class='disabled'><span>&laquo;</span></li>";
        } else {
            $li = "<li><a href'/admin/artList?page=" . ($page - 1) . "'>&laquo;</a></li>";
        }

        for ($x = 1; $x <= ceil(count($list) / $pageItem); $x++) {
            if ($x == $page) {
                $li = $li . " <li class='active'><span>" . $x . "</span></li>";
            } else {
                $li = $li . "<li><a href='/admin/artList?page=" . $x . "'>" . $x . "</a></li>";
            }
        }
        if ($page == ceil(count($list) / $pageItem)) {
            $li = $li . "<li class='disabled'><span>&raquo;</span></li>";
        } else {
            $li = $li . "<li><a href='/admin/artList?page=" . ($page + 1) . "'>&raquo;</a></li>";
        }
        return $li;
    }

    public static function paginate($list, $page, $pageItem) {             //用于对数据进行分页,pageItem是每页展示数目,page是用于请求当前的页数
        $arr = array();
        for ($y = 0, $x = ($page - 1) * $pageItem; $x <= ($page * $pageItem - 1); $y++, $x++) {
            if ($x >= count($list))
                break;
            else
                $arr[$y] = $list[$x];
        }
        return $arr;
    }

    public static function sort($list, $ziduan, $paixu) {
        //排序
        for ($item = 0; $item < (count($list) - 1); $item++) {
            for ($x = 0; $x < count($list) - 1; $x++) {
                if ($paixu == 'desc') {
                    if ($list[$x]->$ziduan < $list[$x + 1]->$ziduan) {
                        $test = $list[$x + 1];
                        $list[$x + 1] = $list[$x];
                        $list[$x] = $test;
                    }
                }
                if ($paixu == 'asc') {
                    if ($list[$x]->$ziduan > $list[$x + 1]->$ziduan) {
                        $test = $list[$x + 1];
                        $list[$x + 1] = $list[$x];
                        $list[$x] = $test;
                    }
                }
            }
        }
        return $list;
    }

    public function showAdd() {
        Index::checkLogin();
        $typeList = Type::all();
        $this->assign('typeList', $typeList);
        return $this->fetch();
    }

    public function showModify() {
        Index::checkLogin();
        $id = $_GET['id'];
        $typeList = Type::all();
        $this->assign('typeList', $typeList);
        $art = Article::get($id);
        $this->assign('art', $art);
        return $this->fetch();
    }

    public function add() {
        if (!(isset($_POST['title']) && (!empty($_POST['title'])))) {
            echo "<script>alert('标题不能为空');";
            echo "window.history.back();</script>";
            return;
        }
//文件上传校验
        $file = request()->file('img');
        if (empty($file)) {
            echo "<script>alert('文件为空!');";
            echo "window.history.back();</script>";
            return;
        }
        $info = $file->validate(['ext' => 'jpg,png,gif'])->move(ROOT_PATH . 'public' . DS . 'static');
        if (!$info) {
            $this->error($file->getError());
        }
        $art = new article();
        $art->title = $_POST['title'];
        $art->img = '/static/' . $info->getSaveName();
        $art->typeId = $_POST['typeId'];

        $art->description = $_POST['description'];
        $str = nl2br($_POST['content']);
        $art->content = $str;
        $art->dateline = time();
        if ($art->save()) {
            $type = new type();
            $type->where('typeId', $_POST['typeId'])->setInc('artNumber');
            Session::delete('list');
            $this->success('发布成功!', '/admin/artList');
        } else {
            $this->error('发布失败,请联系管理员');
        }
    }

    public function del() {
        $id = $_GET['id'];
        $art = Article::get($id);
        if ($art->delete()) {
            $type = new type();
            $type->where('typeId', $art->typeId)->setDec('artNumber');
            echo "<script>alert('删除文章成功');";
            Session::delete('list');
        } else {
            echo "<script>alert('删除文章失败');";
        }
        echo "window.location.href='/admin/artList';</script>";
    }

    public function modify() {
        $id = $_POST['id'];
        $art = Article::get($id);
        $art->title = $_POST['title'];
        $art->typeId = $_POST['typeId'];
        $art->description = $_POST['description'];
        $str = nl2br($_POST['content']);
        $art->content = $str;
        $art->dateline = time();
        if ($art->save()) {
            $this->success('修改成功!', '/admin/artList');
            Session::delete('list');
        } else {
            $this->error('发布失败,请联系管理员');
        }
    }

}
