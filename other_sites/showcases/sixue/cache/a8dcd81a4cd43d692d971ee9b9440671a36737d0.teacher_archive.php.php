<?php /*%%SmartyHeaderCode:18913905824f00574e2def21-85218075%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a8dcd81a4cd43d692d971ee9b9440671a36737d0' => 
    array (
      0 => './templates/teacher_archive.php',
      1 => 1325422329,
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
    '42c6b8a925865e6ac08c6f29251cff40e04cc28c' => 
    array (
      0 => './templates/navigation_back_teacher.php',
      1 => 1325497226,
      2 => 'file',
    ),
    'eb25fcf35443240084b37ad1a593c91c7bb079a2' => 
    array (
      0 => './templates/contents/teacher_archive.php',
      1 => 1325429041,
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
  'nocache_hash' => '18913905824f00574e2def21-85218075',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f02d6ceaab85',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f02d6ceaab85')) {function content_4f02d6ceaab85($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
            <li class="first"><a href="teacher_center.php">首页</a></li>
            <li><a href="my_appointment.php">我的私学堂</a><a href="#" class="notice">3</a></li>
            <li><a href="teacher_archive.php">我的档案</a></li>
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
                    <input type="text" class="full" value="四川成都市一环路南四段西南民族大学老校区28栋三单元105室" />
                </p>
                <p>
                    <span class="label">能够任教：</span>
                    <input type="text" class="half active" value="初中政治、初中语文" />
                    <span class="label marginLeft20">年级：</span>
                    <a href="#">小学五年级以下</a>
                </p>
                <p>
                    <span class="label">是否有教师资格证：</span>
                    有
                    <span class="label marginLeft40">教师资格证类型：</span>
                    <a href="#">初级中学教师资格证</a>
                </p>
                <p>
                    <span class="label">能够授课区域：</span>
                    <a href="#">查看地图</a>
                    <span class="label marginLeft20">教师资格证编号：</span>
                    <a href="#">gc12345124123</a>
                </p>
                <p>
                    <span class="label">授课方式：</span>
                    教员上门
                    <span class="label marginLeft40">期望薪酬：</span>
                    350元/小时
                </p>
                <p>
                    <span class="label">能够授课时间：</span>
                    <a href="#">周一上午，周二下午，周三上午，周五上午，周六全天</a>
                </p>
            </div>
        </div>
        <div class="separate"></div>
        <div class="modules">
            <div class="title clearfix">
                <span class="label">可授课程</span>
                <a href="javascript:void(0)" class="addtions plusButton95">添加</a>
            </div>
            <ul class="table150 generalSplit">
                <li class="first">
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="#"> 删除 </a>
                    </span>
                </li>
                <li>
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="#"> 删除 </a>
                    </span>
                </li>
                <li>
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="#"> 删除 </a>
                    </span>
                </li>
                <li>
                    <span class="label">语文（初中课程）</span>
                    <span>初一、初二、初三</span>
                    <span>140RMB/课时</span>
                    <span class="controller width110 textCenter">
                        <a href="#"> 删除 </a>
                    </span>
                </li>
            </ul>
        </div>
        <div class="separate"></div>
        <div class="modules">
            <div class="title clearfix">
                <span class="label">资质证明文件</span>
                <a href="javascript:void(0)" class="addtions uploadButton95">上传</a>
            </div>
            <ul class="table150 generalSplit">
                <li class="first">
                    <span class="label">教师资格证</span>
                    <span>RAR</span>
                    <span class="floatRight controller width110 textCenter">
                        <a href="#">删除</a>
                        <a href="#">重新上传</a>
                    </span>
                </li>
                <li>
                    <span class="label">教师资格证</span>
                    <span>RAR</span>
                    <span class="floatRight controller width110 textCenter">
                        <a href="#">删除</a>
                        <a href="#">重新上传</a>
                    </span>
                </li>
                <li>
                    <span class="label">教师资格证</span>
                    <span>RAR</span>
                    <span class="floatRight controller width110 textCenter">
                        <a href="#">删除</a>
                        <a href="#">重新上传</a>
                    </span>
                </li>
                <li>
                    <span class="label">教师资格证</span>
                    <span>RAR</span>
                    <span class="floatRight controller width110 textCenter">
                        <a href="#">删除</a>
                        <a href="#">重新上传</a>
                    </span>
                </li>
            </ul>
        </div>
    </div>
    <div class="widget">
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