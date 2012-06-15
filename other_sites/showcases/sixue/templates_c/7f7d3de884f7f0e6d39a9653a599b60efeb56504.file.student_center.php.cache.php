<?php /* Smarty version Smarty-3.1.6, created on 2012-01-01 14:11:58
         compiled from "./templates/contents/student_center.php" */ ?>
<?php /*%%SmartyHeaderCode:4504851024eef5863643d00-19910082%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '7f7d3de884f7f0e6d39a9653a599b60efeb56504' => 
    array (
      0 => './templates/contents/student_center.php',
      1 => 1324904642,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '4504851024eef5863643d00-19910082',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eef586364735',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eef586364735')) {function content_4eef586364735($_smarty_tpl) {?><div id="BackLayout" class="BackLayout clearfix">
    <div class="panel"> <div class="msgModule modules">
            <div class="title clearfix">
                <span class="label">消息中心</span>
                <a href="javascript:void(0)" class="addtions">更多>></a>
            </div>
            <ul class="messages">
                <li class="first"><span class="text">您的客户经理 陈小山 回复了您的<a href="#">消息</a></span><span class="date">2011年10月11日 12:35</span></li>
                <li><span class="text">老师 张大千 提交了新的教学日志：<a href="#">第三周教学计划</a></span><span class="date">2011年10月10日 19:25</span></li>
                <li><span class="text">老师 张大千 提交了新的教学日志：<a href="#">第二周教学计划</a></span><span class="date">2011年10月10日 19:25</span></li>
            </ul>
        </div>
        <div class="separate"></div>
        <div class="controllPanel modules">
            <div class="title clearfix">
                <span class="label">控制面板</span>
            </div>
            <div class="controlls clearfix">
                <div class="left">
                    <div class="title">私学课堂</div>
                    <ul class="clearfix">
                        <li><a href="#"><div class="iconFind"></div><div>找老师</div></a></li>
                        <li><a href="#"><div class="iconClass"></div><div>我的课堂</div></a></li>
                        <li><a href="#"><div class="iconTeacher"></div><div>我的老师</div></a></li>
                    </ul>
                </div>
                <div class="right">
                    <div class="title">档案管理</div>
                    <ul class="clearfix">
                        <li><a href="#"><div class="iconAdd"></div><div>添加学生</div></a></li>
                        <li><a href="#"><div class="iconAchive"></div><div>档案管理</div></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="separate"></div>
        <div class="possibleTeachers modules">
            <div class="title clearfix">
                <span class="label">你可能会遇到这些老师</span>
            </div>
            <ul class="teacherList selector clearfix">
                <li class="first">
                    <img class="photo" width="105px" height="105px" src="./images/photo105.png" />
                    <div class="name">史蒂夫·乔</div>
                    <div class="technical">工业设计</div>
                    <div class="basic">多次获得业界大奖, 辅导学生无数退休 外籍人士无撒谎啊 赛我....  </div>
                </li>
                <li>
                    <img class="photo" width="105px" height="105px" src="./images/photo105.png" />
                    <div class="name">史蒂夫·乔</div>
                    <div class="technical">工业设计</div>
                    <div class="basic">多次获得业界大奖, 辅导学生无数退休 外籍人士无撒谎啊 赛我....  </div>
                </li>
                <li>
                    <img class="photo" width="105px" height="105px" src="./images/photo105.png" />
                    <div class="name">史蒂夫·乔</div>
                    <div class="technical">工业设计</div>
                    <div class="basic">多次获得业界大奖, 辅导学生无数退休 外籍人士无撒谎啊 赛我....  </div>
                </li>
                <li>
                    <img class="photo" width="105px" height="105px" src="./images/photo105.png" />
                    <div class="name">史蒂夫·乔</div>
                    <div class="technical">工业设计</div>
                    <div class="basic">多次获得业界大奖, 辅导学生无数退休 外籍人士无撒谎啊 赛我....  </div>
                </li>
            </ul>
        </div>
    </div>
    <div class="widget">
        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/mod_orders.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/mod_customService.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

        <?php echo $_smarty_tpl->getSubTemplate ("./backend_includes/mod_advertisement.php", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 9999, null, array(), 0);?>

    </div>
</div>
<?php }} ?>