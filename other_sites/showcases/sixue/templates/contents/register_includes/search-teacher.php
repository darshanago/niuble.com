<div id="registerForm2" class="clearfix marginTop10">
    <ul class="teacherSearchForm popupInputs clearfix">
        <li class="clearfix">
            <span class="bold">课程要求：</span>
            <div class="floatRight relative">
                <input disabled type="text" class="inputer"/>
                {#include file="./popups/class.php"#}
            </div>
        </li>
        <li class="clearfix">
            <span class="bold">课时费用：</span>
            <div class="inputer selector">
                <span>100以下</span> <span>100-200</span> <span>200-300</span> <span class="clickToInput">自定义</span>
            </div>
        </li> 
        <li class="clearfix">
            <span class="bold">所辅导课程成绩情况：</span>
            <div class="inputer sorter selector">
                <span>优秀</span> <span>良好</span> <span>中等</span> <span>较差</span>
            </div>
        </li>
        <li class="clearfix">
            <span class="bold">老师要求：</span>
            <div class="floatRight relative">
                <input disabled type="text" class="inputer"/>
                {#include file="./popups/teacher.php"#}
            </div>
        </li>
        <li class="clearfix">
            <span class="bold">授课时间：</span>
            <div class="floatRight relative">
                <input disabled type="text" class="inputer"/>
                {#include file="./popups/schedule.php"#}
            </div>
        </li>
    </ul>
    <div class="jumpToSignup">
        不想填了？点 <a href="javascript:void(0)">这里</a> 直接注册，<br />
        让你的专属客户经理为你提供<br />
        最专业的服务。
    </div>
</div>
<ul class="teachList clearfix">
    <li teacherID="1"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="2"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="3"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="4"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li class="last" teacherID="5"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="6"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="7"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="8"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li teacherID="9"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
    <li class="last" teacherID="10"><img width="164px" height="164px" src="./images/teacher.png" /><div class="teachBlackInfo">
            <div class="title"><span class="name">罗老师</span><span class="age">56岁</span></div>
            <div class="technical">工业设计</div>
            <div class="basic">多次获得业界大奖,辅导学生无数退休外籍人士撒谎啊赛我....</div>
                    </div></li>
</ul>
<div class="textCenter marginTop10">
    {#$navigation#}
</div>
<div class="textRight marginTop15 marginBottom20">
    <a href="javascript:$('.registerPrimaryNav .tabAction li:eq(1)').click();" class="nextStep generalButton Button40" >选完了，下一步</a>
</div>
