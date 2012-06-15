<?php /* Smarty version Smarty-3.1.6, created on 2012-04-21 16:13:23
         compiled from "/Users/ericdum/niuble.com/other_sites/showcases/sixue365/1/templates/contents/register_includes/popups/teacher.php" */ ?>
<?php /*%%SmartyHeaderCode:10281482584f926c2345f690-24893454%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5ff9135daa18c74438b1a0fe74ca0dc1b7afdc25' => 
    array (
      0 => '/Users/ericdum/niuble.com/other_sites/showcases/sixue365/1/templates/contents/register_includes/popups/teacher.php',
      1 => 1323880053,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '10281482584f926c2345f690-24893454',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f926c234945e',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f926c234945e')) {function content_4f926c234945e($_smarty_tpl) {?><div class="popupTeacher popupInInput">
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