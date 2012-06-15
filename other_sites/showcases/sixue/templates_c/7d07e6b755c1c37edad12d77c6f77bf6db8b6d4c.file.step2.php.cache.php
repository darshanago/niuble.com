<?php /* Smarty version Smarty-3.1.6, created on 2011-12-19 07:51:41
         compiled from "./templates/contents/register_includes/step2.php" */ ?>
<?php /*%%SmartyHeaderCode:753123374eee7c8dbfdb90-19861585%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7d07e6b755c1c37edad12d77c6f77bf6db8b6d4c' => 
    array (
      0 => './templates/contents/register_includes/step2.php',
      1 => 1324252291,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '753123374eee7c8dbfdb90-19861585',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee7c8dc7160',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee7c8dc7160')) {function content_4eee7c8dc7160($_smarty_tpl) {?><ul class="studentForm">
    <li>
        <div class="title"><span>1</span>刚才你的选择是</div>
        <ul class="generalForm teacherSelectedConfirm clearfix paddingLeft20">
        </ul>
    </li>
    <li>
        <div class="title"><span>2</span>学生基本信息</div>
        <ul class="generalForm">
            <li> <label>学生姓名</label> <input type="text" name=""></li>
            <li> <label>所处教育阶段</label> <input type="text" name=""></li>
            <li> <label>生日</label> 
                <select>
                    <option> 2007 </option>
                    <option> 2006 </option>
                    <option> 2005 </option>
                    <option> 2004 </option>
                    <option> 2003 </option>
                    <option> 2002 </option>
                    <option> 2001 </option>
                    <option selected> 2000 </option>
                    <option> 1999 </option>
                    <option> 1998 </option>
                    <option> 1997 </option>
                    <option> 1996 </option>
                    <option> 1995 </option>
                    <option> 1994 </option>
                    <option> 1993 </option>
                    <option> 1992 </option>
                </select>
                年
                <select>
                    <option> 12 </option>
                    <option> 11 </option>
                    <option> 10 </option>
                    <option> 9 </option>
                    <option> 8 </option>
                    <option> 7 </option>
                    <option> 6 </option>
                    <option> 5 </option>
                    <option> 4 </option>
                    <option> 3 </option>
                    <option> 2 </option>
                    <option> 1 </option>
                </select>
                月
                <select>
                    <option> 31 </option>
                    <option> 30 </option>
                    <option> 29 </option>
                    <option> 28 </option>
                    <option> 27 </option>
                    <option> 26 </option>
                    <option> 25 </option>
                    <option> 24 </option>
                    <option> 23 </option>
                    <option> 22 </option>
                    <option> 21 </option>
                    <option> 20 </option>
                    <option> 19 </option>
                    <option> 18 </option>
                    <option> 17 </option>
                    <option> 16 </option>
                    <option> 15 </option>
                    <option> 14 </option>
                    <option> 13 </option>
                    <option> 12 </option>
                    <option> 11 </option>
                    <option> 10 </option>
                    <option> 9 </option>
                    <option> 8 </option>
                    <option> 7 </option>
                    <option> 6 </option>
                    <option> 5 </option>
                    <option> 4 </option>
                    <option> 3 </option>
                    <option> 2 </option>
                    <option> 1 </option>
                </select>
                日
            </li>
        </ul>
    </li>
    <li>
        <div class="title"><span>3</span>联系人信息</div>
        <ul class="generalForm">
            <li> <label>联系人姓名</label> <input type="text" name="">
                    <span class="clearStyle">
                        <label><input type="checkbox">先生</label>
                        <label><input type="checkbox">女士</label>
                    </span>
            </li>
            <li> <label>联系方式</label> <input type="text" name=""> </li>
            <li> <label>短信验证码</label> <input type="text" name=""></li>
            <li> <label></label> <a href="javascript:$('.tabAction li:eq(2)').click();" class="generalButton Button40 submit">提交</a> </li>
        </ul>
    </li>
</ul>
<?php }} ?>