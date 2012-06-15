<?php /* Smarty version Smarty-3.1.6, created on 2012-01-03 00:42:28
         compiled from "./templates/contents/my_classes.php" */ ?>
<?php /*%%SmartyHeaderCode:3935970704ef893e166eb51-19348527%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b3ef946b4aec136bc3cd12d8f3e6f95a4476e043' => 
    array (
      0 => './templates/contents/my_classes.php',
      1 => 1325522420,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3935970704ef893e166eb51-19348527',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4ef893e16803b',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ef893e16803b')) {function content_4ef893e16803b($_smarty_tpl) {?><div id="myClasses" class="BackLayout clearfix">
    <ul id="innerNav" class="selector">
        <li><a href="my_find_teacher.php">找老师</a></li>
        <li class="active"><a href="my_classes.php">我的课堂</a></li>
        <li><a href="#">我的老师</a></li>
    </ul>
    <div class="mainLayout">
        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/my_classes.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

    </div>
</div>

<?php }} ?>