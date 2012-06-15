            <div id="navigation" class="clearfix">
                <div class="layout clearfix">
                    <div class="left">
                        <span class="left sec_right"></span>
                        <span class="section">
                            <span class="sec_left"></span>
                            <a href="./index.php" class="section"><img class="homeSection" src="images/icon/home.png"></img></a>
                            <span class="left sec_right"></span>
                        </span>
                        <span class="sec_left"></span>
                        <span class="sec_right"></span>
                    </div>
                    <div class="center">
                        <div class="section balance  <?php echo strpos($_SERVER['SCRIPT_NAME'],'banken.php')!==false?'active':''?>">
                            <a href="./banken.php">
                                <div class="clearfix">
                                    <span class="sec_left"></span>
                                    <span class="left body">
                                        <div class="icon layout"></div>
                                        Bankenvergleich
                                    </span>
                                    <span class="sec_right"></span>
                                </div>
                            </a>
                            <div class="interator"></div>
                        </div>
                        <div class="section healthcheck <?php echo strpos($_SERVER['SCRIPT_NAME'],'health')!==false?'active':''?>">
                            <a href="./health.php">
                                <div class="clearfix">
                                    <span class="sec_left"></span>
                                    <span class="left body">
                                        <div class="icon layout"></div>
                                            Profospano Health Check
                                    </span>
                                    <span class="sec_right"></span>
                                </div>
                            </a>
                            <div class="interator"></div>
                        </div>
                    </div>
                    <div class="right">
                        <span class="sec_left"></span>
                        <span class="right sec_left"></span>
                        <span class="sec_right"></span>
                        <span class="section <?php echo strpos($_SERVER['SCRIPT_NAME'],'support.php')!==false?'active':''?>">
                            <a href="#"><div class="inner_nav">Support</div></a>
                            <div class="interator"></div>
                        </span>
                        <span class="section <?php echo strpos($_SERVER['SCRIPT_NAME'],'about.php')!==false?'active':''?>">
                            <a href="./about.php"><div class="inner_nav">Uber uns</div></a>
                            <div class="interator"></div>
                        </span>
                    </div>
                </div>
            </div>
