<?php /*%%SmartyHeaderCode:21110664674ef7de44b6aea4-92623371%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'efe731f8a42708bff0ec9061a0d19c9b5ddd57f6' => 
    array (
      0 => './templates/my_archive.php',
      1 => 1324870272,
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
      1 => 1325600203,
      2 => 'file',
    ),
    '6ac7528402edf2b7f7fc464fb1f2afad47f0095f' => 
    array (
      0 => './templates/contents/my_archive.php',
      1 => 1324911974,
      2 => 'file',
    ),
    '52afd7d1e86c327d4f5c48e5c84d0f6a71bdc71a' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_archives.php',
      1 => 1324908855,
      2 => 'file',
    ),
    '13f2405a7d97fde03da3c0da56ea70691096dd10' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_contact.php',
      1 => 1324912682,
      2 => 'file',
    ),
    '9a5a684e9494c672334cb3d15983361ba8ae5356' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_advertisement140.php',
      1 => 1324914784,
      2 => 'file',
    ),
    '7bc88ef24d3c1c5a343a8b5f0c8f0dbda1bf674e' => 
    array (
      0 => './templates/footer.php',
      1 => 1325602138,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '21110664674ef7de44b6aea4-92623371',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f7a57faf368b',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f7a57faf368b')) {function content_4f7a57faf368b($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    <div class="panel">
        <div class="studentInfo clearfix modules">
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
                    <span class="label">联系地址：</span>四川成都市一环路南四段西南民族大学老校区28栋三单元105室
                </p>
            </div>
        </div>
        <div class="separate"></div>
        <div class="classRequirementModule modules">
            <div class="title clearfix">
                <span class="label">课程要求</span>
                <a href="javascript:void(0)" class="addtions plusButton">添加新需求</a>
            </div>
            <ul class="requirements">
                <li>
                    <p>
                        <span class="inline leftDetail label">课程：<span class="class">数学（初中课程，直击中考）</span></span>
                        教师要求：<span class="teacher">在职教师，女，28-32</span>
                    </p>
                    <p>
                        <span class="inline leftDetail">授课方式：<span class="">老师上门 | 学生到教学中心 | 学生到老师家</span></span>
                        课时费用：<span class="">100-300RMB</span>
                    </p>
                    <p>
                        授课时间：<span class="">每周一三五，晚18:20-20:00； 每周六日，10：30-12：30，允许调剂</span>
                    </p>
                    <p>
                        课程状态：<span class="status">已上课，教师：代立晨</span>
                    </p>
                    <div class="controller">
                        <a href="javascript:void(0);" class="orangeButton">查看明细</a>
                    </div>
                </li>
                <li>
                    <p>
                        <span class="inline leftDetail label">课程：<span class="class">数学（初中课程，直击中考）</span></span>
                        教师要求：<span class="teacher">在职教师，女，28-32</span>
                    </p>
                    <p>
                        <span class="inline leftDetail">授课方式：<span class="">老师上门 | 学生到教学中心 | 学生到老师家</span></span>
                        课时费用：<span class="">100-300RMB</span>
                    </p>
                    <p>
                        授课时间：<span class="">每周一三五，晚18:20-20:00； 每周六日，10：30-12：30，允许调剂</span>
                    </p>
                    <p>
                        课程状态：<span class="status">已上课，教师：代立晨</span>
                    </p>
                    <div class="controller">
                        <a href="javascript:void(0);" class="un_orangeButton">取消预约</a>
                    </div>
                </li>
                <li>
                    <p>
                        <span class="inline leftDetail label">课程：<span class="class">数学（初中课程，直击中考）</span></span>
                        教师要求：<span class="teacher">在职教师，女，28-32</span>
                    </p>
                    <p>
                        <span class="inline leftDetail">授课方式：<span class="">老师上门 | 学生到教学中心 | 学生到老师家</span></span>
                        课时费用：<span class="">100-300RMB</span>
                    </p>
                    <p>
                        授课时间：<span class="">每周一三五，晚18:20-20:00； 每周六日，10：30-12：30，允许调剂</span>
                    </p>
                    <p>
                        课程状态：<span class="status">已上课，教师：代立晨</span>
                    </p>
                    <div class="controller">
                        <a href="javascript:void(0);" class="un_orangeButton">取消预约</a>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="widget">
                <div class="archiveList modules">
            <div class="title clearfix">
                <span class="label">学生档案</span>
                <a href="javascript:void(0)" class="addtions plusButton">添加新需求</a>
            </div>
            <ul class="archives">
                <li><a href="#">李浩思</a><a href="#" class="action">删除</a></li>
                <li><a href="#">李浩思</a><a href="#" class="action">删除</a></li>
                <li><a href="#">李浩思</a><a href="#" class="action">删除</a></li>
                <li><a href="#">李浩思</a><a href="#" class="action">删除</a></li>
            </ul>
        </div>

                <div class="contactInfo modules">
            <div class="title clearfix">
                <span class="label">联系人信息</span>
            </div>
            <div class="contact">
                <p>
                    <span class="label">姓名：</span><input type="text" value="聂雷峰"/>
                    <span class="label">性别：</span><input type="text" class="active" value="男"/>
                </p>
                <p>
                    <span class="label">手机：</span><a href="#">13882020213</a>
                </p>
            </div>
        </div>

                <div class="advertisement140 marginTop10 modules">
            <img src="./images/ad.jpg"/>
        </div>

                <div class="advertisement140 marginTop10 modules">
            <img src="./images/ad.jpg"/>
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