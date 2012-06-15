<?php /* Smarty version Smarty-3.1.6, created on 2011-12-19 08:23:45
         compiled from "/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/teacher/step1.php" */ ?>
<?php /*%%SmartyHeaderCode:5337097654eee7e4dd2e784-06938504%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3c9f53895ad57a541dec0bf86ffcbc29de5f8ff3' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/teacher/step1.php',
      1 => 1324254167,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5337097654eee7e4dd2e784-06938504',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee7e4dd5bdb',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee7e4dd5bdb')) {function content_4eee7e4dd5bdb($_smarty_tpl) {?><div class="title clearfix">
    <div class="textPhoneHelp"></div>
    <div class="textJoinLogo"></div>
</div>
<ul class="generalForm">
    <li>
        <label></label>
        <span class="formContent">工作地点：<span class="selectedCity">成都</span>
        <select name="city">
           <option value="none">选择城市</option>
           <option value="cd">成都</option>
        </select></span></li>

    <li>
        <label>您的姓名：</label>
        <input type="text" name="name" />
    </li>
    <li>
        <label>您的职业：</label>
        <input type="text" name="vocation" />
    </li>
    <li>
        <label>电子邮箱：</label>
        <input type="text" name="email" />
    </li>
    <li>
        <label>手机号码：</label>
        <input type="text" name="mobile" />
        <a href="javascript:void(0)" class="bn_white_33"><span class="inner">获取短信验证码</span></a>
    </li>
    <li>
        <label>短信验证码：</label>
        <input type="text" name="verify" />
    </li>
    <li>
        <label></label>
        <a href="javascript:$('.tabAction li:eq(1)').click();" class="generalButton Button40 nextStep">下一步</a>
    </li>
</ul>
<?php }} ?>