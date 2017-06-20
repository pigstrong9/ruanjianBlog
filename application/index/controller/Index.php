<?php

namespace app\index\controller;

use think\Controller;
use app\admin\model\Article;
use think\Session;
use \app\index\model\Comment;
use app\admin\model\Type;
use think\View;

class Index extends Controller {

    public function getList() {
        $view = new View();
        $art = new Article();
        //加载热评文章
        $hotList = $art->order('comment', 'desc')->limit(5)->select();
        $view->assign('hotList', $hotList);
        //加载最新文章
        $newList = $art->order('dateline', 'desc')->limit(5)->select();
        $view->assign('newList', $newList);
        //加载分类目录
        $typeList = Type::all();
        $view->assign('typeList', $typeList);
        return $view;
    }

    public function index() {
        //加载列表 
        $art = new Article();
        $view = $this->getList();
        $list = $art->order('dateline', 'desc')->paginate(6);

        $view->assign('list', $list);

        return $view->fetch();
    }

    public function search() {
        //加载搜索结果
        if (empty($_POST['key'])) {
            echo "<font color='red'>关键字不能为空!</font>";
            return;
        }
        $view = $this->getList();
        $key = '%' . $_GET['key'] . '%';
        $art = new Article();
        $list = $art->where('title', 'like', $key)->paginate(6);
        $view->assign('list', $list);

        return $view->fetch();
    }

    public function show() {
        //展示文章
        $view = $this->getList();
        $id = $_GET['id'];
        $art = Article::get($id);
        $key = $art->typeId;
        $typeInfo = Type::get($key);
        $view->assign('typeInfo', $typeInfo);
        $com = new Comment();
        $comment = $com->where('aid', $id)->order('dateline', 'desc')->select();
        $view->assign('art', $art);
        $view->assign('comment', $comment);


        return $view->fetch();
    }

    public function type() {
        //分类目录
        $view = $this->getList();
        $key = $_GET['key'];
        $typeInfo = Type::get($key);
        $view->assign('typeInfo', $typeInfo);
        $art = new Article();
        $list = $art->where('typeId', $key)->paginate(6);
        $view->assign('list', $list);


        return $view->fetch();
    }

    public function about() {
        //关于我们
        $view = $this->getList();

        return $view->fetch();
    }

}
