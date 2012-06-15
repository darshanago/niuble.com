<?php /*%%SmartyHeaderCode:9441062464f0268f91cefe2-78909797%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '850700864e2eb76f4a460d8eb8ade0dc7a7448c7' => 
    array (
      0 => './templates/my_classes_detail.php',
      1 => 1325557988,
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
    'c043bd7fe1ed13ce8ce87873f09e82d8546b8471' => 
    array (
      0 => './templates/contents/my_classes_detail.php',
      1 => 1325584689,
      2 => 'file',
    ),
    '1e180c16130134d52c6dd9e342123541420f6d01' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/mod_classdetail.php',
      1 => 1325586027,
      2 => 'file',
    ),
    '7bc88ef24d3c1c5a343a8b5f0c8f0dbda1bf674e' => 
    array (
      0 => './templates/footer.php',
      1 => 1325602138,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '9441062464f0268f91cefe2-78909797',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f7a58001cac2',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f7a58001cac2')) {function content_4f7a58001cac2($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
        <div class="classDetailList modules">
            <div class="title clearfix">
                <span class="label">我的课堂 / </span>
                <span class="additions ">数学（初中课程，基础提升）</span>
            </div>
            <ul class="flexableForm slideSwither">
                <li class="active">
                    <div class="title">
                        <span class="openclose"></span> 
                        <span class="info">
                            <span class="width150">2011年11月30日</span>
                            <span class="width110 darkGreen">三角函数</span>
                            <span class="width110">未确认</span>
                            <span class="width140 textRight">2022年22月23日 22:43</span>
                        </span>
                    </div>
                    <ul>
                        <li>
                            <textarea rows="5"></textarea>
                            <div class="counter">
                                <span class="cur">0</span><span class="max">/150</span>
                            </div>
                        </li>
                        <li class="controller">
                            <span class="">教学评价：</span>
                            <label><input type="checkbox"/>较差</label>
                            <label><input type="checkbox"/>一般</label>
                            <label><input type="checkbox"/>良好</label>
                            <label><input type="checkbox"/>极好</label>
                            <a href="javascript:void(0);" class="generalButton floatRight paddingLeft10 paddingRight10 marginRight10">确认日志</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="title">
                        <span class="openclose"></span> 
                        <span class="info">
                            <span class="width150">2011年11月30日</span>
                            <span class="width110 darkGreen">三角函数</span>
                            <span class="width110">未确认</span>
                            <span class="width140 textRight">2022年22月23日 22:43</span>
                        </span>
                    </div>
                    <ul>
                        <li>
                            <textarea rows="5"></textarea>
                            <div class="counter">
                                <span class="cur">0</span><span class="max">/150</span>
                            </div>
                        </li>
                        <li class="controller">
                            <span class="">教学评价：</span>
                            <label><input type="checkbox"/>较差</label>
                            <label><input type="checkbox"/>一般</label>
                            <label><input type="checkbox"/>良好</label>
                            <label><input type="checkbox"/>极好</label>
                            <a href="javascript:void(0);" class="generalButton floatRight paddingLeft10 paddingRight10 marginRight10">确认日志</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="title">
                        <span class="openclose"></span> 
                        <span class="info">
                            <span class="width150">2011年11月30日</span>
                            <span class="width110 darkGreen">三角函数</span>
                            <span class="width110">未确认</span>
                            <span class="width140 textRight">2022年22月23日 22:43</span>
                        </span>
                    </div>
                    <ul>
                        <li>
                            <textarea rows="5"></textarea>
                            <div class="counter">
                                <span class="cur">0</span><span class="max">/150</span>
                            </div>
                        </li>
                        <li class="controller">
                            <span class="">教学评价：</span>
                            <label><input type="checkbox"/>较差</label>
                            <label><input type="checkbox"/>一般</label>
                            <label><input type="checkbox"/>良好</label>
                            <label><input type="checkbox"/>极好</label>
                            <a href="javascript:void(0);" class="generalButton floatRight paddingLeft10 paddingRight10 marginRight10">确认日志</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="title">
                        <span class="openclose"></span> 
                        <span class="info">
                            <span class="width150">2011年11月30日</span>
                            <span class="width110 darkGreen">三角函数</span>
                            <span class="width110">未确认</span>
                            <span class="width140 textRight">2022年22月23日 22:43</span>
                        </span>
                    </div>
                    <ul>
                        <li>
                            <textarea rows="5"></textarea>
                            <div class="counter">
                                <span class="cur">0</span><span class="max">/150</span>
                            </div>
                        </li>
                        <li class="controller">
                            <span class="">教学评价：</span>
                            <label><input type="checkbox"/>较差</label>
                            <label><input type="checkbox"/>一般</label>
                            <label><input type="checkbox"/>良好</label>
                            <label><input type="checkbox"/>极好</label>
                            <a href="javascript:void(0);" class="generalButton floatRight paddingLeft10 paddingRight10 marginRight10">确认日志</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <div class="title">
                        <span class="openclose"></span> 
                        <span class="info">
                            <span class="width150">2011年11月30日</span>
                            <span class="width110 darkGreen">三角函数</span>
                            <span class="width110">未确认</span>
                            <span class="width140 textRight">2022年22月23日 22:43</span>
                        </span>
                    </div>
                    <ul>
                        <li>
                            <textarea rows="5"></textarea>
                            <div class="counter">
                                <span class="cur">0</span><span class="max">/150</span>
                            </div>
                        </li>
                        <li class="controller">
                            <span class="">教学评价：</span>
                            <label><input type="checkbox"/>较差</label>
                            <label><input type="checkbox"/>一般</label>
                            <label><input type="checkbox"/>良好</label>
                            <label><input type="checkbox"/>极好</label>
                            <a href="javascript:void(0);" class="generalButton floatRight paddingLeft10 paddingRight10 marginRight10">确认日志</a>
                        </li>
                    </ul>
                </li>
            <ul/>
        </div>
    </div>
    <div class="widget">
                <div class="classDetail modules">
            <div class="title clearfix">
                <span class="label">课程内容</span>
            </div>
            <ul class="generalSplit">
                <li class="first">
                    <p><span class="label">课程：数学（基础提升）</span><a href="#" class="floatRight">教学计划</a></p>
                    <p>教员：历程<span class="marginLeft40">学员：儿子</span></p>
                </li>
                <li>
                    <div class="photo"><img width="50px" height="50px" src="./images/photo50.png"/></div>
                    <div class="detail">
                        <p><span class="label">顾问：李秀兰</span><span class="floatRight">在线</span></p>
                        <p><a href="#">在线咨询</a><a href="#" class="marginLeft40">留言</a></p>
                    </div>
                </li>
                <li>
                    <p>
                        <span class="width100 iBlock">总课时：24课时</span>
                        <span class="width100 iBlock">进展：10课时</span>
                        <span class="width100 iBlock">剩余：14课时</span>
                    </p>
                    <p>
                        <span class="width100 iBlock">每课时：140元</span>
                        <span class="width100 iBlock">总计：3500元</span>
                    </p>
                    <p>
                        <span>签约时间：2011年3月1日</span>
                    </p>
                </li>
                <li>
                    <span class="width100 iBlock">教学日志：<a href="#">5份</a></span>
                    <span class="width100 iBlock">已确认：<a href="#">5份</a></span>
                    <span class="width100 iBlock">未确认：<a href="#">0份</a></span>
                </li>
            </ul>
            <p class="addtions">
                <a href="#">责任条款</a>
                <a href="#">书面合同复印件</a>
            </p>
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