<?php /* Smarty version Smarty-3.1.6, created on 2012-01-03 00:41:21
         compiled from "./templates/contents/my_find_teacher.php" */ ?>
<?php /*%%SmartyHeaderCode:14455168474ef67d9603ff82-28802491%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '88e121b6ffc898d568d6702b85ff0b97d81ddb78' => 
    array (
      0 => './templates/contents/my_find_teacher.php',
      1 => 1325522443,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14455168474ef67d9603ff82-28802491',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4ef67d96044c7',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ef67d96044c7')) {function content_4ef67d96044c7($_smarty_tpl) {?><div id="myClasses" class="BackLayout clearfix">
    <ul id="innerNav" class="selector">
        <li class="active"><a href="my_find_teacher.php">找老师</a></li>
        <li><a href="my_classes.php">我的课堂</a></li>
        <li><a href="#">我的老师</a></li>
    </ul>
    <div class="mainLayout">
        <?php echo $_smarty_tpl->getSubTemplate ("./register_includes/my_step1.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

    </div>
</div>

<?php }} ?>