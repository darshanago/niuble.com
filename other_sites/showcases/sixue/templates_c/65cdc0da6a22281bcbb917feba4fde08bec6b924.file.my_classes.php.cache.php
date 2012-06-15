<?php /* Smarty version Smarty-3.1.6, created on 2012-01-03 18:24:07
         compiled from "/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/my_classes.php" */ ?>
<?php /*%%SmartyHeaderCode:10695918424ef8983c4e3fa2-79039582%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '65cdc0da6a22281bcbb917feba4fde08bec6b924' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/backend_includes/my_classes.php',
      1 => 1325586119,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10695918424ef8983c4e3fa2-79039582',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4ef8983c53afb',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ef8983c53afb')) {function content_4ef8983c53afb($_smarty_tpl) {?><div class="classesSearchForm clearfix">
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
<?php }} ?>