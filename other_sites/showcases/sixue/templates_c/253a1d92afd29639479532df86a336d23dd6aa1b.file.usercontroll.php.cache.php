<?php /* Smarty version Smarty-3.1.6, created on 2012-04-21 18:45:25
         compiled from "./templates/usercontroll.php" */ ?>
<?php /*%%SmartyHeaderCode:2870930734eee0675cc6523-20128684%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '253a1d92afd29639479532df86a336d23dd6aa1b' => 
    array (
      0 => './templates/usercontroll.php',
      1 => 1335004392,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2870930734eee0675cc6523-20128684',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee0675cfc97',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee0675cfc97')) {function content_4eee0675cfc97($_smarty_tpl) {?><div class="topUserControll">
    <div class="ucWrapper">
        <div class="centerLayout clearfix">
            <div class="ucLogo floatLeft">
                <img src="./images/logo_text.png" />
            </div>
            <div class="ucPanel floatLeft">
                <ul class="clearfix">
                    <li>
                        <input type="input" name="name" class="textInput" />
                        <span class="placeHolder">会员编号/手机号码</span>
                        <p><label><input type="checkbox" name=""/>保留我的登陆状态</label></p>
                    </li>
                    <li>
                        <input type="password" name="password" class="textInput" />
                        <span class="placeHolder">密码</span>
                        <p><a href="#">忘记密码？</a></p>
                    </li>
                    <li>
                        <a href="#" class="greenButton">登陆</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="centerLayout">
        <div class="ucLabel">
            <ul class="clearfix">
                <li class="switcher active"><a href="#">登陆</a></li>
                <li class="gray">切换城市（当前：<a href="#">成都</a>）</li>
            </ul>
        </div>
    </div>
</div>
<?php }} ?>