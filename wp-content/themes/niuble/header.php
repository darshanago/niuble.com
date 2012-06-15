<?php
if(strpos($_SERVER["HTTP_USER_AGENT"],"MSIE") || strpos($_SERVER["HTTP_USER_AGENT"],"MSIE")){
if(strpos($_SERVER["HTTP_USER_AGENT"],"MSIE 9")){}else{?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>FUCK IE</title>
        <style>
            body{background: black; color: #fff; font-size: 60px; text-align: center; padding-top: 50px;}
        </style>
    </head>
    <body>
        <p>FUCK IE !!!</p>
        <br/>
        <p>本博客不欢迎</p>
        <p>使用Internet Explorer及搜狗等山寨浏览器的人访问</p>
        <br/>
        <p>请使用<a href="http://www.google.cn/chrome/intl/zh-CN/landing_chrome.html">谷歌Chrome</a>、
                <a href="http://www.firefox.com.cn/download/">Firefox</a>、
                <a href="http://www.apple.com.cn/safari/">苹果Safari</a>等现代浏览器
        </p>
    </body>
</html>
<?php exit;}}?>
<!DOCTYPE html>
<!--[if IE 6]>
<html id="ie6" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 7]>
<html id="ie7" <?php language_attributes(); ?>>
<![endif]-->
<!--[if IE 8]>
<html id="ie8" <?php language_attributes(); ?>>
<![endif]-->
<!--[if !(IE 6) | !(IE 7) | !(IE 8)  ]><!-->
<html <?php language_attributes(); ?>>
<!--<![endif]-->
<head xmlns="http://www.w3.org/1999/xhtml" dir="ltr" lang="zh-CN">
    <meta charset="<?php bloginfo( 'charset' ); ?>" />
    <meta name="viewport" content="width=device-width" />
    <title><?php
    	global $page, $paged;
    
    	wp_title( '|', true, 'right' );
    
    	// Add the blog name.
    	bloginfo( 'name' );
    
    	// Add the blog description for the home/front page.
    	$site_description = get_bloginfo( 'description', 'display' );
    	if ( $site_description && ( is_home() || is_front_page() ) )
    		echo " | $site_description";
    
    	// Add a page number if necessary:
    	if ( $paged >= 2 || $page >= 2 )
    		echo ' | ' . sprintf( __( 'Page %s', 'twentyeleven' ), max( $paged, $page ) );
    
    	?></title>
    <meta name="keywords" content="牛逼了,牛逼,NB,eric,代立晨,dlcdavid,4160911">
    <meta name="description" content="代立晨的个人站点哦亲。不接受围观哦亲。">
    <link href="/imgs/favicon.ico" type="image/x-icon" rel="icon">
    <link rel="profile" href="http://gmpg.org/xfn/11" />
    <link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
    <link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>" />
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0 - 所有文章" href="<?php echo get_bloginfo('rss2_url'); ?>" />
    <link rel="alternate" type="application/rss+xml" title="RSS 2.0 - 所有评论" href="<?php bloginfo('comments_rss2_url'); ?>" />
    <!--[if lt IE 9]>
        <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <!--[if IE 6]>
        <script src="http://letskillie6.googlecode.com/svn/trunk/letskillie6.zh_CN.pack.js"></script>
    <![endif]-->
    <script>
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-30309190-1']);
        _gaq.push(['_setDomainName', 'niuble.com']);
        _gaq.push(['_trackPageview']);

        (function() {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
    </script>
    <?php wp_head(); ?>
</head>
<body>

<header class="clearfix">
	<h1 id="site-title" class="nb_block"><span><a href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_attr( get_bloginfo( 'name', 'display' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></span></h1>

    <nav id="primaryNav">
        <?php wp_nav_menu( array( 'theme_location' => 'primary', 'container'=>'', 'menu_class'=>'clearfix' ) );?>
	</nav><!-- #access -->
</header>

<div id="mainLoader" class="clearfix"><div class="loader_bar"></div></div>
<script>
    var loader = document.getElementById('mainLoader');
    loader.className += ' loaded';
</script>

<div id="mainLayout" class="clearfix">
