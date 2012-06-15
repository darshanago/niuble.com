<?php /* Smarty version Smarty-3.1.6, created on 2012-04-03 09:54:20
         compiled from "./templates/teacher_register.php" */ ?>
<?php /*%%SmartyHeaderCode:13024998604eee7de4d2a236-14833135%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '80a38cf2bb9fc1ce640440327acd3921a8e7d3a4' => 
    array (
      0 => './templates/teacher_register.php',
      1 => 1325602270,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13024998604eee7de4d2a236-14833135',
  'function' => 
  array (
  ),
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee7de4d6b11',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee7de4d6b11')) {function content_4eee7de4d6b11($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
                <?php echo $_smarty_tpl->getSubTemplate ("header.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("navigation_front.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("contents/teacher_register.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("assistant.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <?php echo $_smarty_tpl->getSubTemplate ("footer.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
        </div>
        </div>
    </body>
</html>
<?php }} ?>