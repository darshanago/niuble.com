<?php /*%%SmartyHeaderCode:13833997024ef893e15cf076-97094125%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '37cac5232b64e8f602be3386eb885f05042189b0' => 
    array (
      0 => './templates/my_classes.php',
      1 => 1325776505,
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
    'b3ef946b4aec136bc3cd12d8f3e6f95a4476e043' => 
    array (
      0 => './templates/contents/my_classes.php',
      1 => 1325522420,
      2 => 'file',
    ),
    '65cdc0da6a22281bcbb917feba4fde08bec6b924' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/my_classes.php',
      1 => 1325586119,
      2 => 'file',
    ),
    '7bc88ef24d3c1c5a343a8b5f0c8f0dbda1bf674e' => 
    array (
      0 => './templates/footer.php',
      1 => 1325602138,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13833997024ef893e15cf076-97094125',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f7a57fecb5c6',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f7a57fecb5c6')) {function content_4f7a57fecb5c6($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

                <div class="glassBodyTop marginTop20"></div>
                <div class="glassBody">
                    <div id="myClasses" class="BackLayout clearfix">
    <ul id="innerNav" class="selector">
        <li><a href="my_find_teacher.php">找老师</a></li>
        <li class="active"><a href="my_classes.php">我的课堂</a></li>
        <li><a href="#">我的老师</a></li>
    </ul>
    <div class="mainLayout">
        <div class="classesSearchForm clearfix">
    <div class="floatLeft">
        <p>
            <span class="label">学员：</span>
            <select><option>xxxxx</option></select>
        </p>
        <p>
            <span class="label">状态：</span>
            <span class="selector">
                <span class="active">全部</span> <span>待开始</span> <span>正在进行</span> <span>已结束</span>
            </span>
        </p>
    </div>
    <div class="advertisement floatRight whiteBorder">
        <img src="./images/ad.jpg"/>
    </div>
</div>
<div class="classesDetailList"> 
    <h1 class="label">你的课程安排</h1>
    <ul class="classes">
        <li>
            <p>
                <h5 class="marginRight10">课程：语文（初中语文，直击中考）</h5>
                <h5 class="marginLeft40">学生：李天一</h5>
                <h5 class="marginLeft40">老师：代立晨</h5>
                <h6 class="floatRight">剩余课时：10</h6>
            </p>
            <p>
                <span>总课时：50</span>
                <span class="marginLeft20 marginRight40">已完成：40</span>
                <span class="marginLeft40">费用：150RMB/课时</span>
                <span class="marginLeft20">总计：7500</span>
            </p>
            <p>
                <span>课时安排:每周一三五，晚18:20-20:00； 每周六日，10：30-12：30，允许调剂</span>
            </p>
            <p>
                <span>总教学日志：6份</span>
                <span class="submitted">已提交：<a href="#">5份</a>
                <span class="unconfirm">未确认：<a href="#">1份</a>
            </p>
            <div class="controller clearfix">
                <span class="floatLeft clearfix"><div class="statusBeginning iBlock marginRight10"></div>待开始</span>
                <a href="my_classes_detail.php" class="orangeButton floatRight">查看明细</a>
            </div>
        </li>
        <li>
            <p>
                <h5 class="marginRight10">课程：语文（初中语文，直击中考）</h5>
                <h5 class="marginLeft40">学生：李天一</h5>
                <h5 class="marginLeft40">老师：代立晨</h5>
                <h6 class="floatRight">剩余课时：10</h6>
            </p>
            <p>
                <span>总课时：50</span>
                <span class="marginLeft20 marginRight40">已完成：40</span>
                <span class="marginLeft40">费用：150RMB/课时</span>
                <span class="marginLeft20">总计：7500</span>
            </p>
            <p>
                <span>课时安排:每周一三五，晚18:20-20:00； 每周六日，10：30-12：30，允许调剂</span>
            </p>
            <p>
                <span>总教学日志：6份</span>
                <span class="submitted">已提交：<a href="#">5份</a>
                <span class="unconfirm">未确认：<a href="#">1份</a>
            </p>
            <div class="controller clearfix">
                <span class="floatLeft clearfix"><div class="statusFinished iBlock marginRight10"></div>已完成</span>
                <a href="my_classes_detail.php" class="orangeButton floatRight">查看明细</a>
            </div>
        </li>
        <li>
            <p>
                <h5 class="marginRight10">课程：语文（初中语文，直击中考）</h5>
                <h5 class="marginLeft40">学生：李天一</h5>
                <h5 class="marginLeft40">老师：代立晨</h5>
                <h6 class="floatRight">剩余课时：10</h6>
            </p>
            <p>
                <span>总课时：50</span>
                <span class="marginLeft20 marginRight40">已完成：40</span>
                <span class="marginLeft40">费用：150RMB/课时</span>
                <span class="marginLeft20">总计：7500</span>
            </p>
            <p>
                <span>课时安排:每周一三五，晚18:20-20:00； 每周六日，10：30-12：30，允许调剂</span>
            </p>
            <p>
                <span>总教学日志：6份</span>
                <span class="submitted">已提交：<a href="#">5份</a>
                <span class="unconfirm">未确认：<a href="#">1份</a>
            </p>
            <div class="controller clearfix">
                <span class="floatLeft clearfix"><div class="statusGoing iBlock marginRight10"></div>正在进行</span>
                <a href="my_classes_detail.php" class="orangeButton floatRight">查看明细</a>
            </div>
        </li>
    </ul>
</div>

    </div>
</div>


                </div>
                <div class="glassBodyBottom"></div>
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