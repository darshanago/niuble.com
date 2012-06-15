<?php /*%%SmartyHeaderCode:11127804444f00466b729e02-26154621%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a690e0df7afb82cdd049cf7a0498a7d359141854' => 
    array (
      0 => './templates/teacher_center.php',
      1 => 1325418065,
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
      1 => 1325601652,
      2 => 'file',
    ),
    'c46ca908d3323e4950bb70e127471f4fec2bbc55' => 
    array (
      0 => './templates/contents/teacher_center.php',
      1 => 1325486841,
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
      1 => 1325602138,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11127804444f00466b729e02-26154621',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f7a557f083fa',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f7a557f083fa')) {function content_4f7a557f083fa($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    </div>
    <div id="dropServiceContact">
        <div class="theBody clearfix">
            <div class="title">
                您需要什么帮助？</br>
                在这里直接告诉给您的</br>
                专属客户经理
            </div>
            <div class="form">
                <div class="interator"></div>
                <textarea rows=5></textarea>
                <div class="action">
                    <input type="submit" class="floatRight theButton" value="提交"/>
                </div>
            </div>
            <div class="additions">
                <div class="theOr">或者</div>
                <div>
                    您可以直接拨打：</br>
                    4008100100转256</br>
                    联系您的专属客户经理
                </div>
            </div>
        </div>
        <div class="controller">
            联系客服
        </div>
    </div>
</div>

                <div id="BackLayout" class="BackLayout clearfix">
    <div class="panel"> <div class="msgModule modules">
            <div class="title clearfix">
                <span class="label">消息中心</span>
                <a href="javascript:void(0)" class="addtions">更多>></a>
            </div>
            <ul class="messages">
                <li class="first"><span class="text">您的客户经理 陈小山 回复了您的<a href="#">消息</a></span><span class="date">2011年10月11日 12:35</span></li>
                <li><span class="text">老师 张大千 提交了新的教学日志：<a href="#">第三周教学计划</a></span><span class="date">2011年10月10日 19:25</span></li>
            </ul>
        </div>
        <div class="separate"></div>
        <div class="controllPanel modules">
            <div class="title clearfix">
                <span class="label">控制面板</span>
            </div>
            <div class="controlls clearfix">
                <div class="left">
                    <div class="title">私学课堂</div>
                    <ul class="clearfix">
                        <li><a href="#"><div class="iconPlan iBlock"></div><div>提交教学日志</div></a></li>
                        <li><a href="#"><div class="iconClass iBlock"></div><div>我的课堂</div></a></li>
                    </ul>
                </div>
                <div class="right">
                    <div class="title">档案管理</div>
                    <ul class="clearfix">
                        <li><a href="#"><div class="iconUpload iBlock"></div><div>上传资历文件</div></a></li>
                        <li><a href="#"><div class="iconEdit iBlock"></div><div>编辑资料</div></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="separate"></div>
        <div class="appointments modules">
            <div class="title clearfix">
                <span class="label">你的预约列表</span>
            </div>
            <ul class="appointmentList selector">
                <li class="clearfix first">
                    <img class="photo floatLeft" width="50px" height="50px" src="./images/photo50.png" />
                    <div class="info floatLeft">
                        <div class="name label">李天一</div>
                        <div class="detail marginTop10">14岁，成绩较差，二中初二</div>
                    </div>
                    <div class="controller floatRight">
                        <div class="requeirment">语文（初中，全包）</div>
                        <a href="javascript:void(0);" class="orangeButton iBlock marginTop5 marginRight10 floatRight">感兴趣</a>
                    </div>
                </li>
                <li class="clearfix">
                    <img class="photo floatLeft" width="50px" height="50px" src="./images/photo50.png" />
                    <div class="info floatLeft">
                        <div class="name label">李天一</div>
                        <div class="detail marginTop10">14岁，成绩较差，二中初二</div>
                    </div>
                    <div class="controller floatRight">
                        <div class="requeirment">语文（初中，全包）</div>
                        <a href="javascript:void(0);" class="orangeButton iBlock marginTop5 marginRight10 floatRight">感兴趣</a>
                    </div>
                </li>
                <li class="clearfix last">
                    <img class="photo floatLeft" width="50px" height="50px" src="./images/photo50.png" />
                    <div class="info floatLeft">
                        <div class="name label">李天一</div>
                        <div class="detail marginTop10">14岁，成绩较差，二中初二</div>
                    </div>
                    <div class="controller floatRight">
                        <div class="requeirment">语文（初中，全包）</div>
                        <a href="javascript:void(0);" class="orangeButton iBlock marginTop5 marginRight10 floatRight">感兴趣</a>
                    </div>
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