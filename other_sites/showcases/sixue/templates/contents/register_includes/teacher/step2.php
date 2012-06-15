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
                        {#include file="contents/register_includes/popups/schedule.php"#}
                    </span>
                </li>
            </ul>
        </li>
    </ul>
    <a href="javascript:$('.tabAction li:eq(2)').click();" class="generalButton Button40 nextStep">确定</a>
</div>
