<?php /* Smarty version Smarty-3.1.6, created on 2011-12-19 07:55:06
         compiled from "/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/popups/teacher.php" */ ?>
<?php /*%%SmartyHeaderCode:4609606034eee7d5acc5b62-52746391%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'b5da2f5d331c2befe6a1bc03b77ef694da52d70c' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/popups/teacher.php',
      1 => 1323880053,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4609606034eee7d5acc5b62-52746391',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee7d5ad01e2',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee7d5ad01e2')) {function content_4eee7d5ad01e2($_smarty_tpl) {?><div class="popupTeacher popupInInput">
    <div class="teacherLayout">
        <ul class="teacherBody selectInput">
            <li class="clearfix">
                <div>老师性别：</div>
                <div class="selector">
                    <ul class="greenBorder">
                        <li>不限</li>
                        <li>男</li>
                        <li>女</li>
                    </ul>
                </div>
            </li>
            <li class="clearfix">
                <div>老师年龄：</div>
                <div class="selector">
                    <ul>
                        <li>不限</li>
                        <li>20-25</li>
                        <li>25-35</li>
                        <li>35以上</li>
                        <li class="clickToInput">自定义</li>
                    </ul>
                </div>
            </li>
            <li class="clearfix">
                <div>身份属性：</div>
                <div class="selector">
                    <ul>
                        <li>不限</li>
                        <li>在校大学生</li>
                        <li>在职教师</li>
                        <li>海归、外籍</li>
                    </ul>
                </div>
            </li>
            <li class="clearfix">
                <div>资格证：</div>
                <div class="selector">
                    <ul>
                        <li>要求</li>
                        <li>不要求</li>
                    </ul>
                </div>
            </li>
        </ul>
        <a href="javascript:void(0);" class="bnConfirm generalButton Button40" >确定</a>
    </div>
</div>

<?php }} ?>