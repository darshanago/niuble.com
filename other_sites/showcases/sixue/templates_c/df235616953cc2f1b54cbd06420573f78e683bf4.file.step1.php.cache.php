<?php /* Smarty version Smarty-3.1.6, created on 2011-12-19 07:53:02
         compiled from "./templates/contents/register_includes/step1.php" */ ?>
<?php /*%%SmartyHeaderCode:19449163854eee7c1603e1d4-28288223%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'df235616953cc2f1b54cbd06420573f78e683bf4' => 
    array (
      0 => './templates/contents/register_includes/step1.php',
      1 => 1324252285,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '19449163854eee7c1603e1d4-28288223',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee7c16061e6',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee7c16061e6')) {function content_4eee7c16061e6($_smarty_tpl) {?>    <div class="registerSecNav">
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
                <?php echo $_smarty_tpl->getSubTemplate ("map.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
            <div id="registerStep12" style="display:none;">
                <?php echo $_smarty_tpl->getSubTemplate ("search-teacher.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

            </div>
        </div>
<?php }} ?>