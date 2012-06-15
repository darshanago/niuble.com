<?php /*%%SmartyHeaderCode:17667309824f026456d01f76-38674348%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '825b913185e6dafc436e74659a93931609cbb7fc' => 
    array (
      0 => './templates/my_teacher_detail.php',
      1 => 1325556869,
      2 => 'file',
    ),
    '1a88566cf63aacd14b259e5b3ea0f3f4ecf0048c' => 
    array (
      0 => './templates/back_usercontroll.php',
      1 => 1324820339,
      2 => 'file',
    ),
    'fb59924b5dcbf58ee00ad21dcf4fa3c81f916eee' => 
    array (
      0 => './templates/header.php',
      1 => 1323961277,
      2 => 'file',
    ),
    '9e0e280ac97ee7c18387ed31de9651ccbf3bd186' => 
    array (
      0 => './templates/navigation_back.php',
      1 => 1324912883,
      2 => 'file',
    ),
    '70b6e10f0a9570876286a62bcb0bc9307509eb35' => 
    array (
      0 => './templates/contents/my_teacher_detail.php',
      1 => 1325557740,
      2 => 'file',
    ),
    '4dde2e5db62b0f37a0291d5b8b98ae4379cbecf4' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_orders.php',
      1 => 1324698079,
      2 => 'file',
    ),
    '7860f90950a888ebc02dad3185a0e342cfdf62c5' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_customService.php',
      1 => 1325429087,
      2 => 'file',
    ),
    '08104df5d859aa0d0edb3f677bed84a60b2acdb3' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_advertisement.php',
      1 => 1324698097,
      2 => 'file',
    ),
    '7bc88ef24d3c1c5a343a8b5f0c8f0dbda1bf674e' => 
    array (
      0 => './templates/footer.php',
      1 => 1323108102,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17667309824f026456d01f76-38674348',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f0267ed98e8f',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f0267ed98e8f')) {function content_4f0267ed98e8f($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head profile="http://gmpg.org/xfn/11">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="./css/main.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="./css/layout.css" type="text/css" media="screen" />
        <script type="text/javascript" src="./js/jquery-1.4.4.js"></script>
        <script type="text/javascript" src="./js/marquee.js"></script>
        <script type="text/javascript" src="./js/main.jquery.js"></script>
        <script type="text/javascript" src="./js/map.js"></script>
        <title>私学网</title>
    </head>

    <body>
        <div id="MainWrapperHeader">
        <div id="MainWrapper">
            <div class="centerLayout">
                <div id="backUserControll">
    <span>XXXXX<span> | <a href="#">退出登陆</a>
</div>

                <div id="header" class="clearfix">
    <div class="floatLeft">
        <div id="logo" class="floatLeft">
            <a href="http://localhost/work/sixue365/1/"><img src="./images/logo.png"/></a>
        </div>
        <div id="slogan" class="floatLeft">
            <img src="./images/slogan.png">
        </div>
    </div>
    <div class="contact400 floatRight">
        <img src="./images/phone.png" class="marginRight5 marginTopm7">: 4008100100-256
    </div>
</div>

                <div id="navigationBack">
    <div class="line1"></div>
    <div class="marginTop5 navigationBar clearfix">
        <ul class="clearfix">
            <li class="first"><a href="student_center.php">首页</a></li>
            <li><a href="my_find_teacher.php">我的私学堂</a><a href="#" class="notice">3</a></li>
            <li><a href="my_archive.php">我的档案</a></li>
            <li><a href="javascript:void();">消息中心</a><a href="#" class="notice">23</a></li>
        </ul>
        <div class="contactToService">
        </div>
    </div>
</div>

                <div id="BackLayout" class="BackLayout clearfix">
    <div class="panel">
        <div class="teacherInfo clearfix modules">
            <div class="photo floatLeft whiteBorder">
                <img src="./images/photo100.jpg"/>
            </div>
            <div class="detail floatLeft">
                <p>
                    <span class="label marginRight20">姓名：</span>李浩思
                    <span class="label marginLeft20 mariginRight20">性别：</span>男
                    <span class="label marginLeft20">出生年月：</span>1988年3月
                </p>
                <p>
                    <span class="label marginRight10">现就读学校：</span>成都市第七中学
                    <span class="label marginLeft20">教育阶段：</span>初三
                </p>
                <p>
                    <span class="label">联系地址：</span>
                    四川成都市一环路南四段西南民族大学老校区28栋三单元105室
                </p>
                <p>
                    <span class="label">能够任教：</span>
                    初中政治、初中语文"
                    <span class="label marginLeft20">年级：</span>
                    小学五年级以下
                </p>
                <p>
                    <span class="label">是否有教师资格证：</span>
                    有
                    <span class="label marginLeft40">教师资格证类型：</span>
                    初级中学教师资格证
                </p>
                <p>
                    <span class="label">能够授课区域：</span>
                    青羊区
                    <span class="label marginLeft20">教师资格证编号：</span>
                    gc12345124123
                </p>
                <p>
                    <span class="label">授课方式：</span>
                    教员上门
                    <span class="label marginLeft40">期望薪酬：</span>
                    350元/小时
                </p>
                <p>
                    <span class="label">能够授课时间：</span>
                    周一上午，周二下午，周三上午，周五上午，周六全天
                </p>
            </div>
        </div>
        <div class="separate"></div>
        <div class="modules">
            <div class="title clearfix">
                <span class="label">可授课程</span>
            </div>
            <ul class="table150 generalSplit">
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 orangeButton width110" rel="取消预约">预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 un_orangeButton width110" rel="预约">取消预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 orangeButton width110" rel="取消预约">预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 un_orangeButton width110" rel="预约">取消预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 orangeButton width110" rel="取消预约">预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 un_orangeButton width110" rel="预约">取消预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 orangeButton width110" rel="取消预约">预约</a>
                    </span>
                </li>
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="javascript:void(0);" class="marginBottom5 un_orangeButton width110" rel="预约">取消预约</a>
                    </span>
                </li>
            </ul>
        </div>
    </div>
    <div class="widget">
                <div class="orderList modules">
            <div class="title clearfix">
                <span class="label">预约状态</span>
            </div>
            <ul class="orders">
                <li class="first">
                    <div class="photo"><img width="50px" height="50px" src="./images/photo50.png"/></div>
                    <div class="detail">
                        <p class="ititle"><span class="name">张三丰</span> 老师</p>
                        <p class="status">已预约</p>
                    </div>
                </li>
                <li>
                    <div class="photo"><img width="50px" height="50px" src="./images/photo50.png"/></div>
                    <div class="detail">
                        <p class="ititle"><span class="name">张三丰</span> 老师</p>
                        <p class="status">已预约</p>
                    </div>
                </li>
                <li>
                    <div class="photo"><img width="50px" height="50px" src="./images/photo50.png"/></div>
                    <div class="detail">
                        <p class="ititle"><span class="name">张三丰</span> 老师</p>
                        <p class="status">已预约</p>
                    </div>
                </li>
            </ul>
        </div>

                <div class="customService modules">
            <div class="title clearfix">
                <span class="label">客户服务</span>
                <a href="#" class="floatRight">联系私学堂>></a>
            </div>
            <div class="content">
                <p>客户经历：陈小山</p>
                <p>电话：4008100100-256</p>
                <p>手机：1380013800</p>
                <p>email：chenxiaoshan@sixue365.com</p>
            </div>
        </div>

                <div class="advertisement modules">
            <img src="./images/ad.jpg">
        </div>

    </div>
</div>

                <div id="footer">
    <div class="clearfix">
        <span class="floatLeft">蜀ICP备XXXXXX</span>
        <span class="floatRight">FAQ | 关于我们 | 投诉建议 | 服务网点| 人才中心 | 联系我们 | 网站地图</span>
    </div>
    <div class="textRight marginTop5">
        Copyright (c) 2011 小书童教育集团 保留所有权利&nbsp;&nbsp; 
        <a href="#">使用条款</a> | <a href="#">用户隐私政策</a>
    </div>
</div>

            </div>
        </div>
        </div>
    </body>
</html>
<?php }} ?>