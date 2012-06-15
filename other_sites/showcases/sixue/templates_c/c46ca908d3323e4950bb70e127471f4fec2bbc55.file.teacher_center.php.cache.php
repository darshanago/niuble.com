<?php /* Smarty version Smarty-3.1.6, created on 2012-01-02 14:47:22
         compiled from "./templates/contents/teacher_center.php" */ ?>
<?php /*%%SmartyHeaderCode:6405796184f00466b777723-05314810%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c46ca908d3323e4950bb70e127471f4fec2bbc55' => 
    array (
      0 => './templates/contents/teacher_center.php',
      1 => 1325486841,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '6405796184f00466b777723-05314810',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f00466b7d1ce',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f00466b7d1ce')) {function content_4f00466b7d1ce($_smarty_tpl) {?><div id="BackLayout" class="BackLayout clearfix">
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
        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/mod_customService.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/mod_advertisement.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

    </div>
</div>
<?php }} ?>