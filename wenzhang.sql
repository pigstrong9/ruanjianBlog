-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 2017-06-20 18:17:52
-- 服务器版本： 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wenzhang`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `typeId` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `content` text,
  `dateline` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `comment` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `typeId`, `description`, `content`, `dateline`, `img`, `comment`) VALUES
(1146, 'U管家U盘启动制作工具v3.0.0.3 纯净版', 1, '2017耀世力作，号称最强悍，最震撼的WinPE U盘启动工具！U管家U盘启动制作工具，全新软件界面，支持BIOS与UEFI双启动，一键支持GHO、ISO、WIM、ESD快速装机，优化智能快速装机，大幅提升效率。支持平台 设备平...', '2017耀世力作，号称最强悍，最震撼的WinPE U盘启动工具！U管家U盘启动制作工具，全新软件界面，支持BIOS与UEFI双启动，一键支持GHO、ISO、WIM、ESD快速装机，优化智能快速装机，大幅提升效率。<br />\r\n<br />\r\nu管家官网提供u盘装系统和u盘启动盘制作工具下载及教程,u盘启动盘制作工具快速制作万能一键u盘装系统启动盘,识别不同硬盘驱动winpe系统,一键操作完成u盘装系统,U管家,u盘启动盘制作,u盘修复工具,u盘启动,一键u盘装系统,u盘装系统,u盘启动盘,pe系统,pe工具,winpe<br />\r\n<br />\r\n<br />\r\n<br />\r\n支持平台<br />\r\n<br />\r\n设备平台：U盘，移动硬盘，CD/DVD，可写介质等移动设备<br />\r\n系统平台:Windows XP、Windows 2003、Windows 7/8/10<br />\r\n注：本软件不带任何流氓软件和插件，不篡改系统含任何个人信息。<br />\r\n<br />\r\n新版变化<br />\r\n<br />\r\n2017.04.11 v3.0.0.3<br />\r\n更新个别杀毒软件误报问题<br />\r\n增加最新在线升级包，1.3版本 2.0版本3.0.0.1版本直接可以在线自动更新至最新版本<br />\r\n更新若干细节修复移动硬盘制作问题主程序添加UD升级空间不足的提示(若空间不足，请全新制作)<br />\r\n主程序添加自定义空间大小提醒:若自定义大小小于FBA容量则提示<br />\r\n更新理顺盘符脚本，并移到外置工具箱内<br />\r\n启动菜单调整分辨率为1024*768<br />\r\n更新部分工具为最新；<br />\r\n<br />\r\n2017.03.17 v3.0.0.1<br />\r\n增加最新在线升级包，1.3版本 2.0版本直接可以在线自动更新至最新版本<br />\r\n更新若干细节修复移动硬盘制作问题主程序添加UD升级空间不足的提示(若空间不足，请全新制作)<br />\r\n主程序添加自定义空间大小提醒:若自定义大小小于FBA容量则提示<br />\r\n更新理顺盘符脚本，并移到外置工具箱内<br />\r\n启动菜单调整分辨率为1024*768<br />\r\n更新部分工具为最新；<br />\r\n<br />\r\n官网地址 http://www.ugj123.com<br />\r\n<br />\r\nU管家V3.0.0.3 二合一纯净版下载地址<br />\r\n<br />\r\nhttps://pan.baidu.com/s/1slVnwLZ<br />\r\n<br />\r\nhttp://down.ugj123.com/UGJ_3.0.0.3.exe', '1492840409', '/static/img/1.png', 0),
(1147, '网易云音乐v2.1.2.180086 绿色便携版本', 6, '网易云音乐PC客户端现已更新至v2.1.2.180086，2.0版全新视觉设计，轻盈扁平风格，版本控们不妨更新吧，良心软件！网易音乐原生纯绿色，无碍眼广告和弹窗，拥有良好口碑和广大用户的肯定及赞赏。 网易云音乐，听见...', '网易云音乐PC客户端现已更新至v2.1.2.180086，2.0版全新视觉设计，轻盈扁平风格，版本控们不妨更新吧，良心软件！网易音乐原生纯绿色，无碍眼广告和弹窗，拥有良好口碑和广大用户的肯定及赞赏。<br />\r\n<br />\r\n网易云音乐，听见好时光！网易云音乐歌单数量大、种类全、320K高品质原生免费无限收听下载！百万曲库，首首CD音质；千位明星，亲自推荐音乐；社交关系，发现全新音乐；听音识曲，助你疯狂猜歌。网易云音乐专注于音乐发现与分享，依托专业音乐人、DJ、好友推荐及社交功能，打造全新的音乐生活。<br />\r\n<br />\r\n网易云音乐让您免费畅享超高品质，聆听好音乐！网易云音乐便携版由 zd423 专注优化，硬改用户数据保存为当前目录，后台不生成也就是所谓的便携版；去掉了后续主动提示升级行为，禁止了后续悄悄检测更新联网下载安装包，让你一个版本用很久；同时删除了错误报告和Webkit多语言库文件！<br />\r\n<br />\r\n￼￼ ￼<br />\r\n<br />\r\n新版变化：<br />\r\n<br />\r\nhttp://music.163.com/#/pcupdatelog<br />\r\n<br />\r\n2017.04.16 v2.1.2.180086<br />\r\n优化体验问题和修复诺干BUG<br />\r\n<br />\r\n2017.03.06 v2.1.2.178132<br />\r\n优化体验问题和修复诺干BUG<br />\r\n<br />\r\n2016.12.31 v2.1.2.168028<br />\r\n* 修复诺干问题和BUG<br />\r\n<br />\r\n2016.11.22 v2.1.1.161026<br />\r\n播放列表优化，上限增加到1万<br />\r\n修复若干BUG<br />\r\n<br />\r\n2016.08.15 v2.1.0.145894<br />\r\n* 修复歌词、动态功能的部分显示问题<br />\r\n* 修复Win10部分版本崩溃问题<br />\r\n* 部分界面优化调整<br />\r\n* 修复诺干BUG<br />\r\n<br />\r\n2016.07.27 v2.1.0.142890<br />\r\n* 优化若干显示问题<br />\r\n* 修复诺干BUG<br />\r\n<br />\r\n2016.07.20 v2.1.0.141944<br />\r\n* 修复了一些您感知不到的BUG<br />\r\n<br />\r\n2016.07.14 v2.1.0<br />\r\n专栏功能上线，专业乐评音乐八卦应有尽有<br />\r\n★话题功能上线，精彩纷呈总有一句触动心灵<br />\r\n★动态优化，支持上传GIF图片<br />\r\n☆播放列表、歌单等多处性能优化<br />\r\n☆修复若干bug<br />\r\n<br />\r\n2016.01.15 v2.0.0<br />\r\n全新视觉设计，轻盈扁平<br />\r\n新增红白官方皮肤，更可自选颜色<br />\r\n个性推荐首页，做最懂你的音乐APP<br />\r\n支持音量淡入淡出，切歌更平滑<br />\r\n<br />\r\n网易云音乐 v2.1.2.180086  绿色便携版 下载地址：<br />\r\n<br />\r\nhttp://pan.baidu.com/s/1kUIeXsr#nxuo  访问码nxuo<br />\r\n<br />\r\nhttp://zdfans.ctfile.com/shared/folder_18648645_8318912f/<br />\r\n<br />\r\n网易云音乐硬改数据便携化去后续升级补丁通用版 <br />\r\n<br />\r\nhttps://eyun.baidu.com/s/3qYztHfA', '1492843989', '/static/img/2.jpg', 0),
(1148, 'Sandboxie 5.18 正式版及注册破解补丁', 2, '高手裸奔首选工具沙盘Sandboxie 现已更新至v5.18 正式版！这次更新主要修复了多个崩溃和某些程序不能强制入沙的问题。5.0版主要完美支持Win10，大大提升了软...', '高手裸奔首选工具沙盘Sandboxie 现已更新至v5.18 正式版！这次更新主要修复了多个崩溃和某些程序不能强制入沙的问题。5.0版主要完美支持Win10，大大提升了软件启动速度。附上破解补丁及激活教程！<br />\r\n<br />\r\nSandboxie是国外出品的，经典优秀的共享版沙盘工具，个人可以免费试用。它就像它的名字沙盘一样，只要在此环境中运行的软件，浏览器或注册表信息等等都可以完整的进行清空，不留一点痕迹。同时可以防御一些带有木马或者病毒的恶意网站！对于经常测试软件或者不放心的软件，可放心在沙盘里面运行！<br />\r\n<br />\r\nSandBoxie506，shapan,沙盘破解版，沙盘破解补丁，沙盘注册机，沙盘激活教程，Sandboxie 5.06 Final x32/x64<br />\r\n新版变化： <br />\r\n<br />\r\nhttp://sandboxie.com/index.php?VersionChanges<br />\r\n<br />\r\n2017.04.13 Sandboxie 5.18 Final x32/x64<br />\r\n<br />\r\nReleased on 13 April 2017.<br />\r\nWindows Creators Update is now supported.<br />\r\nFirefox multi-process (Electrolysis) is now supported in Win 7 and later.<br />\r\nFixed problem with clicking Office hyperlinks failing to start forced IE.<br />\r\nTLS error when loading google sites in IE has been fixed.<br />\r\nFixed crash when starting IE while using Microsoft User Experience Virtualization (UEV).<br />\r\nAdded support for Opera Neon.<br />\r\nFixed template for Roboform.<br />\r\nFixed Chrome 56 lingering child process.<br />\r\n<br />\r\n沙盘 Sandboxie v5.18 正式版 官方本地下载：<br />\r\n<br />\r\nhttp://www.sandboxie.com/attic/SandboxieInstall-518.exe<br />\r\n<br />\r\nhttp://www.sandboxie.com/attic/SandboxieInstall32-518.exe<br />\r\nhttp://www.sandboxie.com/attic/SandboxieInstall64-518.exe<br />\r\n<br />\r\n软件+已和谐的驱动+注册破解补丁+激活步骤教程<br />\r\n<br />\r\nhttp://pan.baidu.com/s/1qYxoPeW#qyh8 访问码qyh8 <br />\r\n<br />\r\nhttps://zdfans.ctfile.com/shared/folder_19216545_3f3458d8/', '1492845084', '/static/img/3.jpg', 0),
(1149, 'Adobe Flash Player v25.0.148 正式版', 7, 'Adobe Flash Player 25 正式版终于发布，v25.0.148 这是最新详细版本号，新版本主要改进了控制面板并新增了全新的Stage 3D功能Video Texture，此外还提升程序...', 'Adobe Flash Player 25 正式版终于发布，v25.0.148 这是最新详细版本号，新版本主要改进了控制面板并新增了全新的Stage 3D功能Video Texture，此外还提升程序的稳定性和修复相关Bug等。！Adobe Flash Player 已拥有两大全新技术：PPAPI安装程序、Stage3D硬件加速新配置。<br />\r\n<br />\r\nAdobe Flash Player是一个跨平台、基于浏览器的应用程序。当系统安装该浏览器控件后，它可以跨屏幕和浏览器原汁原味地查看具有表现力的应用程序、内容和视频。Flash Player实现了移动屏幕上的高性能优化，设计为充分利用本机设备能力，从而实现更丰富、更引人入胜的用户体验。<br />\r\n<br />\r\nAdobe Flash Player,flash插件,flash控件，浏览器控件，动画插件/PPAPI Flash、Flash插件、Flash控件、adobe插件<br />\r\n<br />\r\n新版变化<br />\r\n<br />\r\nhttp://www.adobe.com/cn/software/flash/about/<br />\r\n<br />\r\nhttps://helpx.adobe.com/flash-player/flash-player-releasenotes.html<br />\r\n<br />\r\nAdobe Flash Player 25.0.0.148 正式版<br />\r\n手工更新 PPAPI类型的 Flash插件的方法<br />\r\n<br />\r\nhttps://pan.baidu.com/s/1pLNE9xp#t5d8  访问码t5d8<br />\r\n<br />\r\nInternet Explorer （和其它支持 Internet Explorer ActiveX 控件和插件的浏览器）<br />\r\nhttp://fpdownload.macromedia.com/pub/flashplayer/latest/help/install_flash_player_ax.exe<br />\r\n<br />\r\nFirefox、Mozilla、Netscape（和其它基于插件的浏览器）<br />\r\nhttp://fpdownload.macromedia.com/pub/flashplayer/latest/help/install_flash_player.exe<br />\r\n<br />\r\nChrome、Opera（基于 Pepper 的 Flash Player）<br />\r\nhttp://fpdownload.macromedia.com/pub/flashplayer/latest/help/install_flash_player_ppapi.exe<br />\r\n<br />\r\nAdobe Flash Player 官方本地播放器 <br />\r\nhttp://download.macromedia.com/get/flashplayer/updaters/25/flashplayer_25_sa.exe<br />\r\n<br />\r\nAdobe Flash Player 官方通用卸载工具 <br />\r\nhttp://download.macromedia.com/get/flashplayer/current/support/uninstall_flash_player.exe', '1492845214', '/static/img/4.jpg', 0),
(1150, 'WPS Office 10.1.0.6390 绿色纯净版本', 3, '金山免费办公专家WPS Office 2016 抢鲜版现已更新至v10.1.0.6390，WPS Office 2016，全新感觉，全新起航，全新界面，给你不一样的感觉！喜欢折腾的版本控们不...', '金山免费办公专家WPS Office 2016 抢鲜版现已更新至v10.1.0.6390，WPS Office 2016，全新感觉，全新起航，全新界面，给你不一样的感觉！喜欢折腾的版本控们不防下载抢鲜体验狂拽酷炫的新功能吧！<br />\r\n<br />\r\nWPS Office，永久的免费办公专家，小巧、极速、全兼容！可以实现办公软件最常用的文字、表格、演示等多种功能。具有运行速度快、体积小巧、强大插件平台支持、免费提供海量在线存储空间及文档模板、支持阅读和输出PDF文件、全面兼容微软Office97-2010格式等独特优势；文档分享、讨论与协作，轻松团队办公；享受尊贵会员服务；上万精美模板、素材等资源宝库使文档创作更轻松高效！<br />\r\n<br />\r\nwps2016,wps2016抢鲜版,wps2016体验版,wps体验版,wps测试版,wps精简版，wps正式版,wps优化版,办公软件，office2016，金山2016，office绿色版,office精简版，WPS Office 2016 抢鲜版，WPSOffice2016抢鲜版，WPS2016抢鲜版，WPS Office抢鲜版,wps抢鲜版,wps纯净版，wps绿色便携版<br />\r\n<br />\r\n新版变化<br />\r\n<br />\r\nhttp://www.wps.cn/product/beta/?from=www.wps.cn <br />\r\n<br />\r\nv10.1.0.6390<br />\r\n新增功能列表<br />\r\n————<br />\r\nWPS文字<br />\r\n文字图示：新增关系图示，多种图形组合, 直接套用, 省时又美观<br />\r\n功能优化列表<br />\r\n————<br />\r\nWPS演示<br />\r\n正文拆分：文本框文本可以根据项目符号编号进行拆分，匹配成文本<br />\r\n图示框优化：图示框支持快捷键删除，并支持等比缩放<br />\r\nWPS公共<br />\r\n文档标签栏：优化上传云文档时，遇到网络卡顿的情况下，文档标签栏的显示<br />\r\n云文档：优化云文档用户体验，强化分享入口<br />\r\n找回文件：在“无法打开文档”提示框中，增加“找回文件”入口<br />\r\n修复问题列表<br />\r\n————<br />\r\nWPS文字<br />\r\n修复从ET（或微软Excel）中复制单元格，粘贴至WPS中，在表格输入内容后，无法拖拽单元格内容至其他单元格中的问题<br />\r\nWPS演示<br />\r\n修复从WPS或ET跨进程复制，在WPP的母版中以html方式粘贴后，程序崩溃的问题<br />\r\n修复WPP切换至大纲视图，全选大纲内容复制粘贴，Undo撤销后再次粘贴，输入任意内容，程序崩溃的问题<br />\r\n修复组织结构图子节点应用预设样式后，移动整图或增减子节点数后，该节点设置自定义填充、轮廓无效的问题<br />\r\n<br />\r\n============<br />\r\n<br />\r\nWPS2016 主要特性<br />\r\n<br />\r\n——【公共功能】<br />\r\n1、新图表<br />\r\n全新不一样的图表，颜色、效果更惊艳！<br />\r\n入口：插入选项卡-图表<br />\r\n<br />\r\n2、主题切换<br />\r\n文档中对象效果、字体效果集合。<br />\r\n入口：页面布局-主题<br />\r\n<br />\r\n3、对象新效果<br />\r\n2D效果：支持发光、映像、柔化边缘、阴影效果。<br />\r\nWPS 2016震撼来袭！内测发布~_16178176<br />\r\n3D效果：实现柱面、光照、材质效果。<br />\r\n<br />\r\nWPS文字——【画布功能】<br />\r\n在画布中可插入对象，制作流程图。<br />\r\n入口：形状列表中<br />\r\n<br />\r\nwps表格——文本框【新文字方向】<br />\r\n支持文本框文字方向，可选横排、竖排、旋转90度，旋转270度，堆积。<br />\r\n入口：选中文本框-任务窗格-属性-形状选项-大小与属性-文本框-文字方向<br />\r\n<br />\r\nWPS演示——【新视图】<br />\r\n1、新增”阅读视图”<br />\r\n将演示文稿作为适应窗口大小的幻灯片放映查看<br />\r\n入口：视图选项卡-阅读视图<br />\r\n<br />\r\n2、新增”备注页”、”备注母版”、”讲义母版”<br />\r\n主要用于打印，选择不同打印内容可查看效果。<br />\r\n入口：视图选项卡-备注页/讲义母版/备注母版<br />\r\n<br />\r\n3、支持PPTX格式读写。<br />\r\n<br />\r\nwps2016-10<br />\r\n<br />\r\n关于此绿色优化版<br />\r\n<br />\r\nby 小俊 （专注优化）<br />\r\n—去菜单- 帮助- 表格帮助、微博求助、论坛、新特性、产品中心、检查更新<br />\r\n—去右上角帮助、wps热点两个按钮，禁止按F1弹出帮助；<br />\r\n—去右边 新建 – 在线模块，去开发工具说明按钮<br />\r\n—去点左上角WPS 文字(演示、表格)图标:帮助菜单<br />\r\n—去特色功能docer稻壳儿、用户反馈按钮<br />\r\n—去备份管理下方金山数据恢复大师的广告<br />\r\n—禁止打开程序后弹窗在线模版tab<br />\r\n—禁止打开程序后弹窗WPS文档漫游首页tab<br />\r\n—禁止添加计划任务、禁止后台下载更新文件<br />\r\n—去WPS热点并禁止后台下载相关文件<br />\r\n—去两款旧版皮肤(两款皮肤似乎以过了辉煌的时代)<br />\r\n—去字体里的在线字体并禁止后台下载相关文件<br />\r\n<br />\r\n# 如果不需联网功能，下载补丁按照说明操作<br />\r\n<br />\r\n# 绿化后如右键-新建 无选项,请按F5刷新桌面<br />\r\n<br />\r\n最新修改内容：<br />\r\n1.去wpsupdate_res.dll校验<br />\r\n2.去保存文档时提示文档保存至本地,建议上传至云文档,更安全的Tips<br />\r\n3.0去无联网版提示登录进程异常的Tips<br />\r\n<br />\r\nWPS Office 2016 v10.1.0.6390 绿色纯净版<br />\r\n<br />\r\nWPS Office 2013 个人版经典版本绿色纯净版<br />\r\n<br />\r\nhttp://pan.baidu.com/s/1dEXkOUX#wdrj 访问码wdrj <br />\r\n<br />\r\nhttp://zdfans.ctfile.com/shared/folder_18243813_29e37398/', '1492845309', '/static/img/5.jpg', 0),
(1151, '火狐浏览器 pcxFirefox v52.0.2 编译版', 4, '十分流行有众多优化和兼容性的知名第三方火狐浏览器pcxFirefox现已更新至v52.0.2 正式版！pcxFirefox，基于官方源码编译，最好用的火狐浏览器绿色便携版。火...', '十分流行有众多优化和兼容性的知名第三方火狐浏览器pcxFirefox现已更新至v52.0.2 正式版！pcxFirefox，基于官方源码编译，最好用的火狐浏览器绿色便携版。火狐是一款开源浏览器，扩展功能非常强大！<br /><br />\r\n<br /><br />\r\npcxFirefox-43，pcxFirefox,huohuliulanqi,火狐绿色版,火狐浏览器绿色便携版,火狐纯净版,火狐畅游版，火狐便携版，火狐编译版，火狐浏览器便携版，火狐浏览器绿色版，火狐浏览器编译版，电脑浏览器，非IE内核浏览器 pcxFirefox-43.x<br /><br />\r\n<br /><br />\r\npcxFirefox 主要特性<br /><br />\r\n<br /><br />\r\n1) 针对支持SSE2指令CPU优化<br /><br />\r\n2) 引入多线程加载和便携特性 (便携特性通过设置tmemutil.ini中Portable=1开启)<br /><br />\r\n3) 在Vista以上的系统上重新实现config.trim_on_minimize，但默认并不开启<br /><br />\r\n4) 提供一个tmemutil的替代开源模块，代码托管于 https://bitbucket.org/xunxun/tmemutil-3rd ( 初始上游代码来自于 https://code.google.com/p/libportable/source/browse/ )。我的tmemutil-3rd可能不会和上游的libportable模块进行同步更新，如果你想使用最新的libportable模块，你可以从这里下载 http://sourceforge.net/projects/libportable/files/Tools/portable_bin.7z/download ，然后将 portable32.dll 或者 portable64.dll 改名为 tmemutil.dll<br /><br />\r\n5) 实现系统时钟频率调整实验特性 （ 详情如下，可能会在未来的版本中变化 ），默认开启<br /><br />\r\n6）实现SmartRAM实验特性 （ 详情如下，可能会在未来的版本中变化 ），默认禁用<br /><br />\r\n7) 尝试禁用扩展签名检测（ 可能会有问题，需要反馈 ）<br /><br />\r\n8) 实现进程优先级调整特性<br /><br />\r\n<br /><br />\r\n不同于官方的兼容性变更<br /><br />\r\n1) 移除64位版本的插件限制 ( 回退 Bug 1165981 )<br /><br />\r\n2) 恢复distribution/bundles支持 ( 回退 Bug 1144127 )<br /><br />\r\n3) 恢复general.useragent.override.[domain]支持( 回退 Bug 896114 ) <br /><br />\r\n<br /><br />\r\n构建方法改进<br /><br />\r\nBetterPGO<br /><br />\r\n<br /><br />\r\n关于系统时钟频率调整实验特性<br /><br />\r\n系统时钟频率调整（下面缩写为SCR）<br /><br />\r\n提供一些about:config参数可以在启动时对SCR调整<br /><br />\r\n1) pcxfirefox.scr.enabled : 该参数控制是否修改SCR，默认值为true， 亦即在启动时修改SCR<br /><br />\r\n2）pcxfirefox.scr.always : 该参数控制是否修改SCR当你使用电池供电的时候，默认值为false，亦即当采用电池供电的时候，不调整SCR，如果你想即使采用电池供电也调整SCR，那么请设置该值为true<br /><br />\r\npcxfirefox.scr.timer : 该参数控制电源类型检测的周期，单位为秒，当达到周期时，会重新检测电源类型，根据pcxfirefox.scr.always的值重新决定是否修改SCR <br /><br />\r\n<br /><br />\r\n关于SmartRAM实验特性<br /><br />\r\n控制firefox的占用内存<br /><br />\r\n提供一些about:config参数设置SmartRAM功能<br /><br />\r\n1) pcxfirefox.memory.firefox.smart : 该参数控制是否启用SmartRAM特性，默认值为true，亦即在启动时启用这个功能<br /><br />\r\n2) pcxfirefox.memory.firefox.smart.dynamic : 该参数控制是否启用SmartRAM的动态释放方法，默认为true，当该参数为true时，pcxfirefox.memory.firefox.smart.dynamic.min and pcxfirefox.memory.firefox.smart.dynamic.ratio 才会有效<br /><br />\r\npcxfirefox.memory.firefox.smart.dynamic.min : 该参数控制动态释放达到的最小内存值，默认值为128 MB，亦即占用内存小于该值时，不执行内存释放<br /><br />\r\npcxfirefox.memory.firefox.smart.dynamic.ratio : 该参数控制动态释放的比率值，默认值为80，亦即SmartRAM动态释放发生时，释放目标值为firefox目前占用内存的80%<br /><br />\r\n3) pcxfirefox.memory.firefox.smart.keep : 该参数控制SmartRAM保留释放方法的内存值，默认值为512 MB，即当SmartRAM事件触发时，释放目标值为512 MB， 该参数当 pcxfirefox.memory.firefox.smart.dynamic 为false时生效<br /><br />\r\n4) pcxfirefox.memory.firefox.smart.timer : 该参数控制SmartRAM事件周期（单位为秒），默认为3600秒<br /><br />\r\n注意：不要将pcxfirefox.memory.firefox.smart.dynamic.ratio, pcxfirefox.memory.firefox.smart.keep, and pcxfirefox.memory.firefox.smart.timer设置成非常小的数值，如果你非要这样做，责任自负（这会极大地增加你的系统的I/O压力）！<br /><br />\r\n<br /><br />\r\n关于tmemutil.dll<br /><br />\r\n该模块是我对libportable建立的分支，我使得它和tete009的tmemutil.dll API兼容<br /><br />\r\n他的设置文件也是tmemutil.ini<br /><br />\r\n相对于tete009的tmemutil.dll模块，该tmemutil.dll有以下新特性<br /><br />\r\n1) 安全性增强 ( SafeEx=1 ), 如果你不知道这个开关有什么作用，请保持SafeEx=0<br /><br />\r\n2) 进程白名单 ( EnableWhiteList=1，可以阻止部分API钩子和一些浏览器溢出攻击 )，如果你不知道这个开关有什么作用，请保持EnableWhiteList=0<br /><br />\r\n3) 额外提供两个环境变量 ( TmpDataPath和NpluginPath )<br /><br />\r\n4）提供老板键功能 ( Bosskey=1 )<br /><br />\r\n<br /><br />\r\n2017.04.12 pcxFirefox 52.0.2 Final x86 / x64 <br /><br />\r\n<br /><br />\r\nhttps://pan.baidu.com/s/1mhKl4W4<br /><br />\r\n<br /><br />\r\nhttp://sourceforge.net/projects/pcxfirefox/files/Release/Firefox <br /><br />\r\n<br /><br />\r\n2016.03.12 & 2014.12.08 pcxFirefox v31.x & 24.x ESR Final<br /><br />\r\n<br /><br />\r\nhttps://sourceforge.net/projects/pcxfirefox/files/ESR_Final/Firefox<br /><br />\r\n<br /><br />\r\nSSE2版本含en-US，zh-CN，zh-TW，ja四种语系版本，建议大家使用x86位版<br /><br />\r\n将x86简体中文版三个omni.ja覆盖到x64相同位置，x64版即可变成简体中文版！<br /><br />\r\n额外插件下载地址：http://sourceforge.net/projects/pcxfirefox/files/Plugins', '1493003175', '/static/img/6.jpg', 9),
(1157, '我爱记牌器v4.08.819 去广告绿色版本', 9, '我爱记牌器 – 安全好用的免费记牌器！QQ游戏辅助工具外挂！棋牌类游戏的免费辅助工具，主要提供QQ记牌器，边锋、联众记牌器等各类棋牌游戏的辅助支持。...', '我爱记牌器 – 安全好用的免费记牌器！QQ游戏辅助工具外挂！棋牌类游戏的免费辅助工具，主要提供QQ记牌器，边锋、联众记牌器等各类棋牌游戏的辅助支持。以辅助玩家游戏为目的，更方便轻松进行游戏。<br />\r\n我爱记牌器为棋牌类游戏的辅助工具，它可以帮助玩家记录，各家出过的牌,自动统计除自己外的还没出的牌,根据玩法不同，辅助统计功能显示内容也不同。软件工作智能化，完全自动记牌，合作功能强大，在您和朋友合作打牌时，通过交换牌数据可看对家牌，大大提高胜率。<br />\r\n<br />\r\nwoaijipaiqi<br />\r\n<br />\r\n我爱记牌器主要功能描述：<br />\r\n<br />\r\n1、自动检测游戏开始,并启动记牌功能<br />\r\n2、自动统计剩余牌的信息，辅助玩家做出出牌决策<br />\r\n3、自动记录每个玩家的出牌顺序,根据用户需要来显示<br />\r\n4、根据游戏不同，提示除记牌之外的重要信息，如：[升级]游戏提示每家缺什么花色等<br />\r\n5、游戏多开后，可以同时打开多个记牌器，分别记牌【记牌器多开】<br />\r\n6、与好友自动通牌，互相看到好友手中的牌<br />\r\n7、智能推算剩牌(仅限斗地主，双扣等几类游戏)<br />\r\n8、手动取牌、看牌，当自动通牌无法使用时可以使用，相当于手动通牌<br />\r\n9、任意QQ聊天,输入QQ号码后可强制与对方聊天，有利于互通信息<br />\r\n10、个性化显示，提供多种界面显示方案，灵活定制<br />\r\n<br />\r\n各个平台游戏支持列表详细清单如下：<br />\r\n<br />\r\nwoaijipaiqi2<br />\r\n<br />\r\n去广告介绍：<br />\r\n<br />\r\nby Black Hawk<br />\r\n- 去升级、去掉更多选项在线升级，官网网址<br />\r\n- 去主界面网页广告、去弹出广告网页、去更改主页<br />\r\n- 去掉在桌面生成hao123网址快捷方式<br />\r\n- 去掉我爱记牌器.exe加载mainapp.exe启动<br />\r\n<br />\r\n更新内容：<br />\r\n<br />\r\nv4.03.819<br />\r\n增加QQ双扣最新版本支持；<br />\r\n增加QQ火拼双扣最新版本支持；<br />\r\n增加QQ双扣最新版本支持；<br />\r\n增加QQ打大A最新版本支持；<br />\r\n<br />\r\n我爱记牌器 v4.08.819 去广告绿色版 下载地址： <br />\r\n<br />\r\nhttp://yunpan.cn/cVU48ZnWgEtkc  访问码26f1<br />\r\n<br />\r\nhttp://pan.baidu.com/s/1c05Cqoo  访问码y264', '1494305952', '/static/20170509\\11fe62c2c416be1feb72bc2e0f7d944d.jpg', 0),
(1158, 'AA (见缝插针)v1.3.7 去广告优化版本', 9, 'aa（见缝插针）是一款在美国已经火遍各个州的休闲虐心小游戏，主要考验眼力和反应，非常容易上瘾的小游戏，也许体验过后就根本停不下来了。虽然虐心，却十分...', 'aa（见缝插针）是一款在美国已经火遍各个州的休闲虐心小游戏，主要考验眼力和反应，非常容易上瘾的小游戏，也许体验过后就根本停不下来了。虽然虐心，却十分享受见缝插针般的刺激乐趣，很适合休闲娱乐时刻打发时间。这游戏官方关卡共700关，如果通过了7百关，也能进入“下一关”，但规则会变得非常bug。<br />\r\n<br />\r\n￼<br />\r\n<br />\r\n如此红火，它到底有怎样的魅力?<br />\r\n<br />\r\n【简洁大气，黑白搭配】游戏画面非常的简洁，米白色的背景中央，放置着一个不断旋转的太阳状的球体，周边网状似的放射连接着许多小球，又有点宇宙中星球的感觉，所有球体均以黑色为主，与米白色的背景产生出了鲜明的对比，在一定程度上，为玩家带来了一定的视觉冲击感。<br />\r\n<br />\r\n【舒缓音效，轻松气氛】游戏的背景音乐不算是特别的欢快，属于比较舒缓的类型，让小伙伴们能够在轻松的环境在尽情的享受游戏所带来的快乐，并且在连线时“嘀嘀嘀..”的特殊音效，代入感十足，及两个小球碰撞在一起的特效，真的会使人心不禁跟着一起纠了起来。<br />\r\n<br />\r\n【不停转动，点击粘球】游戏的玩法非常简单，当黑色的球体不停转动的时候，大家只需通过点击屏幕，让屏幕下方带有数字的小球粘到大球上，直的所有带有数字的球都粘完即可。看似简单的操作及玩法，但想让带有数字的小球不撞击旁边的小球，游戏也将宣告结束。<br />\r\n<br />\r\n【难度递增，极具挑战】游戏采用关卡形式呈现，难度自然随着关卡的深入不断递增，每关中的玩法并不是千篇一律的，为了缓解大家的腻烦感，数字球体时而变多，时而变少，球体转动的速度也是时而变快时而缓慢，或者快慢结合，大家千万别以为速度变慢是好事哦，速度变慢反而大家放松警惕，容易出错。<br />\r\n<br />\r\n去广告优化版特点：<br />\r\n<br />\r\nby pk196371 （流风清音）<br />\r\n<br />\r\n1、去除程序所有广告，免得污染你眼球。<br />\r\n2、去除相关谷歌服务，不再弹得人心烦。<br />\r\n3、已经解除选关限制，可直达700关卡。<br />\r\n4、调整应用部分选项，让界面更加清爽。<br />\r\n<br />\r\nAA (见缝插针) for Android 1.3.7 去广告优化版 <br />\r\n<br />\r\nhttp://pan.baidu.com/s/1gdhKqSr <br />\r\n<br />\r\nhttp://yunpan.cn/cmXXfYLAIViym 访问码 b9fe', '1494306043', '/static/20170509\\310efcb46fef5961fc04a0334c726293.jpg', 0),
(1156, '迅雷极速版 v1.0.35.366 绿色纯净版本', 8, '匠人心作，简约而不简单！无广告，无插件，清爽简约，启动超快，下载更快…回归极简，一切只为下载服务！去掉广告，还你清爽迅雷去除游戏及新闻弹窗广告追求极...', '匠人心作，简约而不简单！无广告，无插件，清爽简约，启动超快，下载更快…回归极简，一切只为下载服务！去掉广告，还你清爽迅雷去除游戏及新闻弹窗广告追求极简之美；抛弃其它产品捆绑安装去除迅雷看看及游戏插件无插件，启动更快；回归下载本质优化产品架构及服务专注下载，所以更快。<br /><br />\r\n<br /><br />\r\n迅雷极速版v1.0.35.366 绿色纯净版，由@小俊专注精简，[email protected]�义边下边播！无广告，无插件，下载快！ 迅雷极速版将甩掉过去的包袱，重新上路，回归极简！<br /><br />\r\n<br /><br />\r\nxunlei,thunder,迅雷极速版,迅雷7.9,下载工具,极速迅雷,迅雷破解版，迅雷经典版，下载工具,下载神器，BT种子下载工具，迅雷清爽版,迅雷去广告版thunder10xx1<br /><br />\r\n<br /><br />\r\n关于此绿色纯净版<br /><br />\r\n<br /><br />\r\nby 小俊（专注修改）<br /><br />\r\n<br /><br />\r\n—支持自定义边下边播功能(详情请看绿化)<br /><br />\r\n—精简多余文件、合并Tp目录文件到Program；<br /><br />\r\n—禁止云端推送下载插件，可设置为默认下载器；<br /><br />\r\n—去XLLiveUD.exe、XLServicePlatform.exe效验；<br /><br />\r\n—去附近功能、去主面板界面VIP和积分中心选项；<br /><br />\r\n—适当破解宽度限制、去高速通道、离线下载、边下边播左侧文字广告；<br /><br />\r\n—去主面板搜索栏、消息中心、应用按钮，去掉积分中心下面图片广告；<br /><br />\r\n—去主菜单开机自动启动、意见反馈、检查更新、帮助中心、用户论坛选项；<br /><br />\r\n—去设置选项：消息相关设置、Windows库中建立迅雷下载、默认使用迅雷看看打开视频文件；<br /><br />\r\n<br /><br />\r\n以下的功能自选精简<br /><br />\r\n<br /><br />\r\n附近功能：Thunder\\Xar\\ThunderApp\\XLCloud.xar （默认已精简）<br /><br />\r\n<br /><br />\r\n远程下载功能：Thunder\\Xar\\ThunderApp\\XLVipBoxPage.xar， Program\\XLVipBox.dll<br /><br />\r\nBT种子文件无法关联？高级设置-BT设置-启动时关联BT种子..勾掉-应用..再勾上..点确定即可！<br /><br />\r\n<br /><br />\r\n迅雷各种经典版（极速版 + 尊享版 + 普通版）下载地址<br /><br />\r\n含：高速免和谐+非会员离线取+本地会员+账号防踢补丁<br /><br />\r\n<br /><br />\r\n注1：账号防踢不保证有效，高速免和谐不一定对所有资源有效！<br /><br />\r\n注2：非会员领取过 8G / 1024G 离线空间，才可以用离线取回！<br /><br />\r\n<br /><br />\r\nhttps://eyun.baidu.com/s/3pLD7NHx <br /><br />\r\n<br /><br />\r\nhttp://zdfans.ctfile.com/shared/folder_18367212_93cb83eb/', '1494140851', '/static/20170424\\8b2ac11228fe3963544d2b65b451e93f.jpg', 7),
(1159, '下载利器! IDM v6.28.9 最新绿色特别版', 8, '国外流行下载工具Internet Download Manager现已小幅更新至v6.28.9，新版取消了在Win10下载对话框边框！作为必备最佳网络下载利器，界面风格始终一样，建议使...', '国外流行下载工具Internet Download Manager现已小幅更新至v6.28.9，新版取消了在Win10下载对话框边框！作为必备最佳网络下载利器，界面风格始终一样，建议使用最新版，新版监视文件类型更全！<br />\r\n<br />\r\n￼<br />\r\n<br />\r\nIDM绿色特别版由 @ZD423 专注优化，无需序列号，免注册即为授权版、完美简体中文汉化，无多余菜单弹窗！IDM下载器是国内外优秀下载工具，支持IE, Firefox, Chrome等所有浏览器，兼容所有Windows平台。最具特色功能如续传功能，支持恢复因为断线、网络问题、计算机宕机等故障导致中断的下载任务。<br />\r\n<br />\r\n￼￼￼<br />\r\n<br />\r\n新版变化<br />\r\n<br />\r\nhttp://internetdownloadmanager.com/news.html<br />\r\n<br />\r\n(Released: May 02, 2017)<br />\r\nFixed problem with erroneous interceptions of files in Firefox<br />\r\nWhat’s new in version 6.28 Build 8<br />\r\n<br />\r\n(Released: Apr 27, 2017)<br />\r\nImproved IDM download engine<br />\r\nAdded a feature to the settings of schedulers to go into sleep mode or hibernate when downloading is done<br />\r\nImproved “download panel” view on high DPI displays<br />\r\nFixed problems with Chinese captions on the “Download panel”<br />\r\nFixed bugs<br />\r\n<br />\r\n关于此绿色特别版<br />\r\n<br />\r\nby zd423 & ZDFANS.COM<br />\r\n<br />\r\n—模拟官方安装命令行参数绿化，卸载可选备份用户设置数据；<br />\r\n—破解主程序，免注册！无需屏蔽联网，无需假冒序列号，不反弹！<br />\r\n—彻底禁止定期自动检测更新、后续完全不会随机弹出IDM自动更新提示！<br />\r\n—调整下载对话框，完美修正在Win8.1、Win10下载对话框及边宽适配问题；<br />\r\n—基于 ZDYX、宋国母 以往简体中文语言加以汉化完善，并汉化自带卸载程序；<br />\r\n—去掉每日提示弹窗，去除了安装完毕后自动弹出网页行为，默认不开机启动；<br />\r\n—绿化完毕默认显示为简体中文界面、添加了一款美观的主题，默认直接启用；<br />\r\n—去多余菜单项，去关于窗多余按钮；删除所有多语言、所有帮助文档等文件；<br />\r\n<br />\r\nIDM v6.28 Build 9 简体中文绿色特别版 下载地址<br />\r\n<br />\r\nhttps://pan.baidu.com/s/1pKBQU1d#3edk   访问码3edk<br />\r\n<br />\r\nhttp://zdfans.ctfile.com/shared/folder_18183354_cc97fcfb/<br />\r\n<br />\r\nInternet Download Manager 最新官方多语言试用版<br />\r\nhttp://mirror2.internetdownloadmanager.com/idman621.exe<br />\r\n<br />\r\nIDM v6.xx 精选国外破解补丁+ 简体中文完善文件 + 去升级检测改法<br />\r\nhttps://eyun.baidu.com/s/3c2hzD0O', '1494306116', '/static/20170509\\b2e4f04516562d4629aa4de28523d652.jpg', 0),
(1160, 'Office 2016 三 / 四合一 绿色精简版本', 3, 'Office 2016绿色精简版系列，由绿软爱好者 @xb21cn 专注绿化精简制作，包含Access、Excel 、Ppt 、Word 四大组件（含VBA ），支持自动永久激活及KMS激活，支...', 'Office 2016绿色精简版系列，由绿软爱好者 @xb21cn 专注绿化精简制作，包含Access、Excel 、Ppt 、Word 四大组件（含VBA ），支持自动永久激活及KMS激活，支持Win7、Win8.1、Win10操作系统32及64位，本版适合日常使用，特殊需要请装原版！无法保证在系统装有office复杂情况下使用正常！<br />\r\nMicrosoft Office 2016 RTM，微软全新办公软件套件，相比Office 2013的变化不是特别大，界面和功能都只是微调。Office2016，Word引入实时协作，Excel可直接识别手写方程式等等，都能大大提高办公效率！<br />\r\n<br />\r\n￼ ￼ ￼<br />\r\n<br />\r\nOffice2016 四合一/三合一绿色精简版说明：<br />\r\n<br />\r\n支持Win7/Win8/8.1/Win10系统32及64位<br />\r\n<br />\r\n具体包含Word、Excel、Ppt、Access 四大组件（含VBA ）（另有三合一补丁提供）；安装完成后为30天试用，可自行KMS激活；支持联机模板、支持规划求解、分析等excel加载项；仅适合普通文档编辑使用！ <br />\r\n<br />\r\n• 永久激活方法<br />\r\n<br />\r\n方法一、备份还原激活信息<br />\r\n<br />\r\n└—永久激活后，运行 !)激活备份还原.cmd，选 1 备份激活信息。<br />\r\n└—重装后恢复，运行 !)激活备份还原.cmd，选 2 恢复激活信息，<br />\r\n在office20xx文件夹中右键打开dos窗口，运行<br />\r\ncscript Office**\\ospp.vbs /inpkey:XXXXX-XXXXX-XXXXX<br />\r\n<br />\r\n方法二、在线联网激活方法<br />\r\n└—在office20xx绿色版安装文件夹中打开dos窗口，运行<br />\r\ncscript Office**\\ospp.vbs /inpkey:XXXXX-XXXXX-XXXXX<br />\r\n<br />\r\n      cscript Office**\\ospp.vbs /act<br />\r\n（xxxxx为永久激活key，且必须与备份的激活信息文件相配套）<br />\r\n<br />\r\n• 安装注意：右键管理员权限运行 !)安装.cmd<br />\r\n<br />\r\n2016.10.17  Office 2016 四合一，大小：157M<br />\r\n<br />\r\nOffice 2016/2013/2010/2007/2003 绿色精简版<br />\r\n<br />\r\nhttps://yunpan.cn/cVUIQtxBW6pRb#a29f  访问码a29f<br />\r\n<br />\r\nhttps://eyun.baidu.com/s/3dFOGHVz', '1494306197', '/static/20170509\\243dda4af163e02ed8c447edaf22c036.jpg', 0),
(1161, 'Total Uninstall Pro 6.19.1 绿色便携版', 2, '最强安装监控和卸载利器Total Uninstall现已更新至v6.18.1.460，新版本增加了Windows应用商店功能以及Win10风格主题，现在出自波兰大神...', '最强安装监控和卸载利器Total Uninstall现已更新至v6.18.1.460，新版本增加了Windows应用商店功能以及Win10风格主题，现在出自波兰大神 remek002之手独家破解的专业版主程序已更进，版本控不妨更新！<br /><br /><br />\r\n<br /><br /><br />\r\nTotal Uninstall – 最强大的安装和卸载工具！专业软件卸载利器！最受欢迎的卸载程序！最强大的软件监视卸载工具，能监视软件安装所有过程，记录下对系统所做的任何改变，比如：添加的文件、对注册表和系统文件的修改，并生成安装前和安装后的快照。Total Uninstall 它卸载软件时，不需使用软件卸载程序，直接通过它便可将其自身完全地清除出系统，不留下任何痕迹，从而保证了系统的清洁！<br /><br /><br />\r\n<br /><br /><br />\r\nTotal Uninstall 其实主要是监控软件安装过程，或分析系统已安装的软件。它可以找出特定软件在系统留下的每一处痕迹，进行完全的卸载。Total Uninstall 6 采用了全新的UI设计，包含了原生64bit支持、界面优化、内存使用率下降、程序分析速度比原来版本快5倍等让人惊喜的改进！<br /><br /><br />\r\n<br /><br /><br />\r\nTotalUninstall6，Total Uninstall专业版，TU破解版，TU旗舰版，TU特别版，TU绿色版，TU专业版，Total Uninstall中文版，Total Uninstall绿色便携版，Total Uninstall中文免费版，Total Uninstall专业版，Total Uninstall便携版，Total Uninstall旗舰版，Total Uninstall破解版，监控卸载工具，系统垃圾清理，软件卸载工具<br /><br /><br />\r\n<br /><br /><br />\r\n新版变化<br /><br /><br />\r\n<br /><br /><br />\r\nhttp://martau.com/zh-CN/uninstaller-download.php<br /><br /><br />\r\n<br /><br /><br />\r\nVersion 6.19.1 (2017-05-05)<br /><br /><br />\r\nBug fixed in Windows Apps module.<br /><br /><br />\r\nPolish, German and Chinese-Simplified interface translation updated.<br /><br /><br />\r\n<br /><br /><br />\r\nVersion 6.19.0 (2017-04-27)<br /><br /><br />\r\nNew functional module: Windows Apps. Available in Windows 8 and newer.<br /><br /><br />\r\n<br /><br /><br />\r\n关于此特别版<br /><br /><br />\r\n<br /><br /><br />\r\nby remek002(破解)、 by Dave Green(便携化)<br /><br /><br />\r\n<br /><br /><br />\r\n—波兰大神硬破解，无需注册密钥，完全免激活，启动即为旗舰版或专业版！<br /><br /><br />\r\n└—现在的破解版本都无需Hosts或IP策略屏蔽联网不反弹，完美无任何限制！<br /><br /><br />\r\n—完美的绿色便携化引导，退出彻底删除后台和注册表键值、设置数据保存当前目录；<br /><br /><br />\r\n—删多语言及文档，默认启动为简体中文、不开机启动、不启用资源管理器右键菜单 ；<br /><br /><br />\r\n<br /><br /><br />\r\n[专业版] Total Uninstall Pro v6.19.1.460 x86/x64 简体中文绿色便携版<br /><br /><br />\r\n[旗舰版] Total Uninstall Ultimate v6.14 x86 / x64 简体中文绿色便携版<br /><br /><br />\r\n<br /><br /><br />\r\nhttp://pan.baidu.com/s/1hsmDdM8#11v4   访问码11v4<br /><br /><br />\r\n<br /><br /><br />\r\nhttps://zdfans.ctfile.com/shared/folder_20936276_8ddca3ed/<br /><br /><br />\r\n<br /><br /><br />\r\n2017.05.08 Total Uninstall 6.19.1.460 多语言安装版官方版 下载地址<br /><br /><br />\r\n官方试用版、专业版、旗舰版共用一个发行包，安装自动判断32、64位！<br /><br /><br />\r\nhttp://total-uninstall.com/archives/Total-Uninstall-Setup-6.19.1.exe <br /><br /><br />\r\n<br /><br /><br />\r\n提示：如要要用官方版只需替换专业版已破解版压缩包内Tu.exe程序即可！', '1494570095', '/static/20170509\\7ec1cafeae23fbb07cfaf918ba007197.jpg', 0);

-- --------------------------------------------------------

--
-- 表的结构 `comment`
--

CREATE TABLE `comment` (
  `comid` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `comText` text,
  `dateline` varchar(255) DEFAULT NULL,
  `aid` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `comment`
--

INSERT INTO `comment` (`comid`, `uid`, `comText`, `dateline`, `aid`) VALUES
(40, 7, '牛逼', '1493879981', 1156),
(39, 7, '你牛逼', '1493879871', 1156),
(37, 6, '楼上SB', '1493879216', 1156),
(38, 7, '校花来也', '1493879474', 1156),
(36, 1, '很强势', '1493879122', 1151),
(30, 1, '很牛逼', '1493013584', 1156),
(29, 1, '牛逼', '1492845939', 1151),
(28, 1, '牛逼', '1492767988', 1127),
(41, 7, '你牛逼', '1493880116', 1156),
(42, 7, '很牛逼哦', '1493880136', 1151),
(43, 7, '对我的', '1493880424', 1151),
(44, 7, '吵吵吵', '1493880613', 1151);

-- --------------------------------------------------------

--
-- 表的结构 `type`
--

CREATE TABLE `type` (
  `typeId` int(11) NOT NULL,
  `typeName` varchar(255) DEFAULT NULL,
  `artNumber` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `type`
--

INSERT INTO `type` (`typeId`, `typeName`, `artNumber`) VALUES
(1, '聊天软件', 1),
(2, '安全软件', 2),
(3, '办公软件', 2),
(4, '浏览器', 1),
(5, '系统必备', 0),
(6, '多媒体', 1),
(7, '图像管理', 1),
(8, '下载类', 2),
(9, '游戏娱乐', 2);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `sex` int(1) DEFAULT '1',
  `phone` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`uid`, `password`, `nickname`, `email`, `username`, `sex`, `phone`) VALUES
(1, '123', '朱强', '123', '123', 1, NULL),
(8, '963576369', '我不知道原来可以起这么长的名字哈哈', '734124115@qq.com', '734124115', 1, 2147483647),
(7, '123', '校花', 'pig_strong@qq.com', '1234', 0, 123);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`comid`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`typeId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1166;
--
-- 使用表AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `comid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- 使用表AUTO_INCREMENT `type`
--
ALTER TABLE `type`
  MODIFY `typeId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- 使用表AUTO_INCREMENT `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
