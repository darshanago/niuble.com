<?php /* Smarty version Smarty-3.1.6, created on 2011-12-25 10:46:24
         compiled from "/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/my_step1.php" */ ?>
<?php /*%%SmartyHeaderCode:20412730174ef68e80eafb78-11429734%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2a8e94d08725c1be63deac580fbada5b981e0665' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/my_step1.php',
      1 => 1324781137,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20412730174ef68e80eafb78-11429734',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4ef68e80ee4c1',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4ef68e80ee4c1')) {function content_4ef68e80ee4c1($_smarty_tpl) {?>    <div class="mapLayout">
        <div class="registerSecNav">
            <div class="rsNavContainer">
                <div class="rsSplitLine"></div>
                <div class="controller"><div class="iterator"></div></div>
            </div>
        </div>
        <div class="sliderContainerX">
            <div id="registerStep11">
                <div id="registerForm1" class="clearfix">
                    <div class="floatLeft">
                        <p><span class="bold">上课方式：</span>
                            <label><input type="checkbox">老师上门授课</label>
                            <label><input type="checkbox">学员到教学中心上课</label>
                            <label><input type="checkbox">到老师家上课</label>
                        </p>
                        <p><span class="bold">上课地点：</span>
                            请在下图中选择您方便的上课区域，可多选
                        </p>
                    </div>
                    <a href="javascript:void(0)" class="nextStep generalButton Button40 floatRight" >下一步</a>
                </div>
                <?php echo $_smarty_tpl->getSubTemplate ("./map.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
            <div id="registerStep12" style="display:none;">
                <?php echo $_smarty_tpl->getSubTemplate ("./my-search-teacher.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
        </div>
    </div>
<?php }} ?>