<?php /* Smarty version Smarty-3.1.6, created on 2012-01-05 20:08:22
         compiled from "./templates/navigation_back_teacher.php" */ ?>
<?php /*%%SmartyHeaderCode:15526030994f00466b767847-06800882%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '42c6b8a925865e6ac08c6f29251cff40e04cc28c' => 
    array (
      0 => './templates/navigation_back_teacher.php',
      1 => 1325601652,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '15526030994f00466b767847-06800882',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f00466b774d0',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f00466b774d0')) {function content_4f00466b774d0($_smarty_tpl) {?><div id="navigationBack">
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
<?php }} ?>