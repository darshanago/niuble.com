<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="content-type" content="text/html;charset=utf-8">
    <title><?php echo $title?></title>
    <?php foreach($styles as $css):?>
        <link href="<?php echo $style_dir.$css?>" type="text/css" rel="stylesheet" charset="utf-8" />
    <?php endforeach;?>
    <link href='http://fonts.googleapis.com/css?family=Shojumaru&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
</head>
<body>
    <?php echo $content?>
    <?php foreach($javascripts as $js):?>
        <script src="<?php echo $javascript_dir.$js?>"></script>
    <?php endforeach;?>
</body>
</html>
