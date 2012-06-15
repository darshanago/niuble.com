<?php /* Smarty version Smarty-3.1.6, created on 2012-01-02 13:22:39
         compiled from "./templates/contents/my_appointment.php" */ ?>
<?php /*%%SmartyHeaderCode:8115807804f013e7880de62-31555173%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '13527ba52c008465101c45be2f65524fc23a64ce' => 
    array (
      0 => './templates/contents/my_appointment.php',
      1 => 1325481757,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8115807804f013e7880de62-31555173',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f013e7881b63',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f013e7881b63')) {function content_4f013e7881b63($_smarty_tpl) {?><div id="myClasses" class="BackLayout clearfix">
    <ul id="innerNav" class="selector">
        <li class="active"><a href="my_appointment.php">我的预约列表</a></li>
        <li><a href="my_classes_teacher.php">我的课堂</a></li>
    </ul>
    <div class="mainLayout">
        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/my_appointment.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

    </div>
</div>

<?php }} ?>