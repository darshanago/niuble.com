<?php /* Smarty version Smarty-3.1.6, created on 2012-01-03 01:12:35
         compiled from "./templates/my_appointment.php" */ ?>
<?php /*%%SmartyHeaderCode:8259456324f013e78788411-71781514%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'bc022b8c80e0bcc79bbe1f1e2dd7be2083a79d90' => 
    array (
      0 => './templates/my_appointment.php',
      1 => 1325524283,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8259456324f013e78788411-71781514',
  'function' => 
  array (
  ),
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f013e7880839',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f013e7880839')) {function content_4f013e7880839($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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

                <?php echo $_smarty_tpl->getSubTemplate ("navigation_back_teacher.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                <div class="glassBodyTop marginTop20"></div>
                <div class="glassBody">
                    <?php echo $_smarty_tpl->getSubTemplate ("contents/my_appointment.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

                </div>
                <div class="glassBodyBottom"></div>
                <?php echo $_smarty_tpl->getSubTemplate ("footer.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
        </div>
        </div>
    </body>
</html>
<?php }} ?>