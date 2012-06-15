<?php /* Smarty version Smarty-3.1.6, created on 2012-01-03 01:10:42
         compiled from "./templates/contents/my_classes_teacher.php" */ ?>
<?php /*%%SmartyHeaderCode:12361325804f014082d73a68-49458768%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3c0eeda56eb25ac706ffe6b5d134a891bb99eed5' => 
    array (
      0 => './templates/contents/my_classes_teacher.php',
      1 => 1325522411,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12361325804f014082d73a68-49458768',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f014082d80be',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f014082d80be')) {function content_4f014082d80be($_smarty_tpl) {?><div id="myClasses" class="BackLayout clearfix">
    <ul id="innerNav" class="selector">
        <li><a href="my_appointment.php">我的预约列表</a></li>
        <li class="active"><a href="my_classes_teacher.php">我的课堂</a></li>
    </ul>
    <div class="mainLayout">
        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/my_classes_teacher.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

    </div>
</div>

<?php }} ?>