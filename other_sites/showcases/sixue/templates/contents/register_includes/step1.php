    <div class="mapLayout">
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
                {#include file="./map.php"#}
            </div>
            <div id="registerStep12" style="display:none;">
                {#include file="./search-teacher.php"#}
            </div>
        </div>
    </div>
