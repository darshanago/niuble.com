<div class="registerPrimaryNav clearfix">
    <div class="studentBanner"></div>
    <ul class="controller clearfix tabAction" tabAction="#registerStep">
        <li class="active">1</li>
        <li>2</li>
        <li>3</li>
    </ul>
</div>
<div class="glassBodyTop"></div>
<div class="registerContainer glassBody clearfix"><div class="registerLayout">
<form>
    <div id="registerStep1" class="clearfix" style="">
        {#include file="./register_includes/step1.php"#}
    </div>
    <div id="registerStep2" class="clearfix" style="display:none;">
        {#include file="./register_includes/step2.php"#}
    </div>
    <div id="registerStep3" class="studentSuccess clearfix" style="display:none;">
        {#include file="./register_includes/step3.php"#}
    </div>
</form>
</div></div>
<div class="glassBodyBottom"></div>
