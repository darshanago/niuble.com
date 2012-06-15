<?php /* Smarty version Smarty-3.1.6, created on 2011-12-24 11:46:03
         compiled from "./templates/student_center.php" */ ?>
<?php /*%%SmartyHeaderCode:13089916854eef4a77429a71-79358256%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e2c1d52536b26c6470268d35739fd9e22b0148c0' => 
    array (
      0 => './templates/student_center.php',
      1 => 1324698111,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13089916854eef4a77429a71-79358256',
  'function' => 
  array (
  ),
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eef4a776f282',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eef4a776f282')) {function content_4eef4a776f282($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                <?php echo $_smarty_tpl->getSubTemplate ("back_usercontroll.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("header.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("navigation_back.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("contents/student_center.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("footer.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
        </div>
        </div>
    </body>
</html>
<?php }} ?>