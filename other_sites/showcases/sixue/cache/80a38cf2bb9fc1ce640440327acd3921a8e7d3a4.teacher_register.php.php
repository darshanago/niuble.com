<?php /*%%SmartyHeaderCode:13024998604eee7de4d2a236-14833135%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '80a38cf2bb9fc1ce640440327acd3921a8e7d3a4' => 
    array (
      0 => './templates/teacher_register.php',
      1 => 1325602270,
      2 => 'file',
    ),
    'fb59924b5dcbf58ee00ad21dcf4fa3c81f916eee' => 
    array (
      0 => './templates/header.php',
      1 => 1323961277,
      2 => 'file',
    ),
    '1c98dbeeb6e324297a7e7b9abf0db016958a8860' => 
    array (
      0 => './templates/navigation_front.php',
      1 => 1323601440,
      2 => 'file',
    ),
    '5406134eea2418124127bfec073bf66fbff8b7f2' => 
    array (
      0 => './templates/contents/teacher_register.php',
      1 => 1324253284,
      2 => 'file',
    ),
    '3c9f53895ad57a541dec0bf86ffcbc29de5f8ff3' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/teacher/step1.php',
      1 => 1324254167,
      2 => 'file',
    ),
    '00dceb4754263d14e71f249b9b5c475f0a629236' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/teacher/step2.php',
      1 => 1324252759,
      2 => 'file',
    ),
    '3fd3cbe41c1e26990509d46ccbaf29507dde678e' => 
    array (
      0 => './templates/contents/register_includes/popups/schedule.php',
      1 => 1324119445,
      2 => 'file',
    ),
    'fd33d9bdae3771c252299843aab4f2c16ec2278c' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/teacher/step3.php',
      1 => 1324255720,
      2 => 'file',
    ),
    '9d530dfbf1074e8ac61b855f84149fa2e4b1cd98' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/teacher/step4.php',
      1 => 1324252769,
      2 => 'file',
    ),
    'ee395765b4b8e04fa74252825d5d790eaba2df5c' => 
    array (
      0 => './templates/assistant.php',
      1 => 1325602145,
      2 => 'file',
    ),
    '7bc88ef24d3c1c5a343a8b5f0c8f0dbda1bf674e' => 
    array (
      0 => './templates/footer.php',
      1 => 1325602138,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13024998604eee7de4d2a236-14833135',
  'cache_lifetime' => 120,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f7a5b02c3806',
  'has_nocache_code' => false,
),true); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f7a5b02c3806')) {function content_4f7a5b02c3806($_smarty_tpl) {?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head profile="http://gmpg.org/xfn/11">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <link rel="stylesheet" href="./css/main.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="./css/layout.css" type="text/css" media="screen" />
        <script type="text/javascript" src="./js/jquery-1.4.4.js"></script>
        <script type="text/javascript" src="./js/marquee.js"></script>
        <script type="text/javascript" src="./js/main.jquery.js"></script>
        <script type="text/javascript" src="./js/map.js"></script>
        <title>私学网</title>
    </head>

    <body>
        <div id="MainWrapperHeader">
        <div id="MainWrapper">
            <div class="centerLayout">
                <div id="header" class="clearfix">
    <div class="floatLeft">
        <div id="logo" class="floatLeft">
            <a href="http://localhost/work/sixue365/1/"><img src="./images/logo.png"/></a>
        </div>
        <div id="slogan" class="floatLeft">
            <img src="./images/slogan.png">
        </div>
    </div>
    <div class="contact400 floatRight">
        <img src="./images/phone.png" class="marginRight5 marginTopm7">: 4008100100-256
    </div>
</div>

                <div id="navigationFront">
    <div class="line1"></div>
    <div class="marginTop5 navigationBar">
        <div class="navMessage clearfix">
            <a href="#"><img src="./images/thumb.jpg" /></a>
            <span class="navMsgContent">
                <a href="#" class="bold">陈老师:</a> 今天拿下了钢琴10级证书，感觉真棒。感谢私学网这一路陪我走来。
            </span>
            <span class="textRight floatRight">
                <a href="#"><i>看看私学网的上帝们都怎么说？</i></a>
            </span>
        </div>
    </div>
</div>

                <div class="registerPrimaryNav clearfix">
    <img src="./images/banner_tengfei.png" alt="私学堂，给你一个腾飞的平台" />
    <ul class="controller clearfix tabAction" tabAction="#registerStep">
        <li class="active">1</li>
        <li>2</li>
        <li>3</li>
        <li>4</li>
    </ul>
</div>
<div class="glassBodyTop"></div>
<div class="registerContainer glassBody clearfix"><div class="registerLayout">
<form>
    <div id="registerStep1" class="clearfix" style="">
        <div class="title clearfix">
    <div class="textPhoneHelp"></div>
    <div class="textJoinLogo"></div>
</div>
<ul class="generalForm">
    <li>
        <label></label>
        <span class="formContent">工作地点：<span class="selectedCity">成都</span>
        <select name="city">
           <option value="none">选择城市</option>
           <option value="cd">成都</option>
        </select></span></li>

    <li>
        <label>您的姓名：</label>
        <input type="text" name="name" />
    </li>
    <li>
        <label>您的职业：</label>
        <input type="text" name="vocation" />
    </li>
    <li>
        <label>电子邮箱：</label>
        <input type="text" name="email" />
    </li>
    <li>
        <label>手机号码：</label>
        <input type="text" name="mobile" />
        <a href="javascript:void(0)" class="bn_white_33"><span class="inner">获取短信验证码</span></a>
    </li>
    <li>
        <label>短信验证码：</label>
        <input type="text" name="verify" />
    </li>
    <li>
        <label></label>
        <a href="javascript:$('.tabAction li:eq(1)').click();" class="generalButton Button40 nextStep">下一步</a>
    </li>
</ul>

    </div>
    <div id="registerStep2" class="clearfix" style="display:none;">
        <div id="teacherRegisterStep2">
    <ul class="greenTags clearfix tabNav">
        <li>海外归国/外籍人士<div class="iterator"></div></li>
        <li class="active">在校大学生<div class="iterator"></div></li>
        <li>教师<div class="iterator"></div></li>
        <li>艺术、语言类教师<div class="iterator"></div></li>
        <li>其他<div class="iterator"></div></li>
    </ul>
    <ul class="flexableForm slideSwither">
        <li class="active">
            <div class="title">
                <span class="againstDott"> <span class="openclose label">基本信息</span> </span>
            </div>
            <ul>
                <li>
                    <span class="required label">姓名：</span><input class="inputer1" type="text" />
                    <span class="required label marginLeft15">性别：</span><label>男<input type="radio" name="xxx"></label><label>女<input type="radio" name="xxx"></label>
                    <span class="required label marginLeft15">出生年：</span>
                    <select>
                        <option value="1989">1989</option>
                        <option value="1988">1988</option>
                        <option value="1987">1987</option>
                        <option value="1986">1986</option>
                        <option value="1985">1985</option>
                        <option value="1984">1984</option>
                        <option value="1983">1983</option>
                        <option value="1982">1982</option>
                        <option value="1981">1981</option>
                        <option value="1980">1980</option>
                        <option value="1979">1979</option>
                        <option value="1978">1978</option>
                        <option value="1977">1977</option>
                        <option value="1976">1976</option>
                        <option value="1975">1975</option>
                        <option value="1974">1974</option>
                        <option value="1973">1973</option>
                        <option value="1972">1972</option>
                        <option value="1971">1971</option>
                        <option value="1970">1970</option>
                        <option value="1969">1969</option>
                        <option value="1968">1968</option>
                        <option value="1967">1967</option>
                        <option value="1966">1966</option>
                        <option value="1965">1965</option>
                        <option value="1964">1964</option>
                        <option value="1963">1963</option>
                        <option value="1962">1962</option>
                        <option value="1961">1961</option>
                        <option value="1960">1960</option>
                    </select>年
                </li>
                <li>
                    <span class="required label">健康状况：</span>
                    <label>好<input type="radio" name="yyy"></label>
                    <label>良好<input type="radio" name="yyy"></label>
                    <label>一般<input type="radio" name="yyy"></label>
                    <label>差<input type="radio" name="yyy"></label>
                </li>
                <li>
                    <span class="required label">联系方式：</span>
                    <input class="inputer1" type="text" value="固话" rel="固话"/>
                    <input class="inputer1 marginLeft15" type="text" value="手机" rel="手机"/>
                </li>
                <li>
                    <span class="required label">联系地址：</span>
                    <input class="inputer2" type="text" />
                </li>
                <li>
                    <span class="required label">联系方式：</span>
                    <input class="inputer1" type="text" value="科目" rel="科目"/>
                    <input class="inputer1 marginLeft15" type="text" value="年级" rel="年级"/>
                </li>
            </ul>
        </li>
        <li>
            <div class="title">
                <span class="againstDott"> <span class="openclose label"> 教师资格证 </span> </span>
            </div>
            <ul>
                <li>
                    <span class="required label">是否有教师资格证：</span>
                    <label>有<input type="radio" name="zzz"></label>
                    <label>无<input type="radio" name="zzz"></label>
                </li>
            </ul>
        </li>
        <li>
            <div class="title">
                <span class="againstDott label"> <span class="openclose label"> 课程要求</span> </span>
            </div>
            <ul>
                <li>
                    <span class="required label">授课方式：</span>
                    <label>教员上门<input type="radio" name="mmm"></label>
                    <label>学员上门<input type="radio" name="mmm"></label>
                    <label>网上辅导<input type="radio" name="mmm"></label>
                    <label>协商<input type="radio" name="mmm"></label>
                </li>
                <li>
                    <span class="required label">能够授课区域：</span>
                    <input class="inputer1" type="text" />
                    <span class="required label">期望薪酬：</span>
                    <input class="inputer1" type="text" />
                </li>
            </ul>
        </li>
        <li>
            <div class="title">
                <span class="againstDott"> <span class="openclose label"> 授课时间</span> </span>
            </div>
            <ul class="popupInputs">
                <li>
                    <span class="required label">授课时间：</span>
                    <span class="relative iBlock">
                        <input disabled type="text" class="inputer inputer2"/>
                        <div class="popupSchedule popupInInput">
    <div class="scheduleLayout">
        <table cellspacing="0" cellpadding="0">
            <thead>
                <tr>
                    <td class="first">授课时间</td>
                    <td>8:00-10:00</td>
                    <td>10:35-12:35</td>
                    <td>13:00-15:00</td>
                    <td>15:30-17:30</td>
                    <td>18:00-20:00</td>
                </tr>
            </thead>
            <tbody>
                <tr> <td class="first">周一</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
                <tr> <td class="first">周二</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
                <tr> <td class="first">周三</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
                <tr> <td class="first">周四</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
                <tr> <td class="first">周五</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
                <tr> <td class="first">周六</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
                <tr> <td class="first">周日</td> <td></td> <td></td> <td></td> <td></td> <td></td> </tr>
            </tbody>
        </table>
        <a href="javascript:void(0);" class="bnConfirm generalButton Button40" >确定</a>
    </div>
</div>

                    </span>
                </li>
            </ul>
        </li>
    </ul>
    <a href="javascript:$('.tabAction li:eq(2)').click();" class="generalButton Button40 nextStep">确定</a>
</div>

    </div>
    <div id="registerStep3" class="clearfix" style="display:none;">
        <div class="title clearfix">
    <div class="textPhoneHelp"></div>
    <div class="textNoMoreLess"></div>
</div>
<ul class="generalForm">
    <li>
        <label>简历：</label>
        <input type="text" disabled/>
        <a href="javascript:void(0)" class="browse">选择文件</a>
        <input type="file" class="hiddenFile" name="name"/>
    </li>
    <li>
        <label>资质证明：</label>
        <input type="text" disabled/>
        <a href="javascript:void(0)" class="browse">选择文件</a>
        <input type="file" class="hiddenFile" name="name"/>
    </li>
    <li>
        <label></label>
        <a href="javascript:void(0);" class="grayButton Button40">跳过</a>
        <a href="javascript:void(0);" class="generalButton Button40">上传</a>
    </li>
<ul>

    </div>
    <div id="registerStep4" class="clearfix teacherSuccess" style="display:none;">
        <div class="title clearfix">
    <div class="textPhoneHelp"></div>
    <div class="textTeacherSuccess"></div>
</div>
<div class="tips">
    <div class="interator"></div>
    <ul>
        <li>我们的工作人员会在1个小时内跟您取得联系，
        请保持联系电话 处于可用状态</li>
        <li>您的查询编码为0CDXBBC，已发送至您的邮箱。
        您可以通过此编码查询您的认证状态</li>
        <li>在线认证通过后，我们的工作人员会联系您进行
        下一步工作。</li>
    </ul>
</div>

    </div>
</form>
</div></div>
<div class="glassBodyBottom"></div>

                <div id="assistant">
    <div class="assistant">
    </div>
</div>

                <div id="footer">
    <div class="clearfix">
        <span class="floatLeft">蜀ICP备XXXXXX</span>
        <span class="floatRight">FAQ | 关于我们 | 投诉建议 | 服务网点| 人才中心 | 联系我们 | 网站地图</span>
    </div>
    <div class="textRight marginTop5">
        Copyright (c) 2011 小书童教育集团 保留所有权利&nbsp;&nbsp; 
        <a href="#">使用条款</a> | <a href="#">用户隐私政策</a>
    </div>
</div>

            </div>
        </div>
        </div>
    </body>
</html>
<?php }} ?>