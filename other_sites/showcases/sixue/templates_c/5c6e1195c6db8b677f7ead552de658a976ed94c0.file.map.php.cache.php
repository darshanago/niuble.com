<?php /* Smarty version Smarty-3.1.6, created on 2012-04-21 16:13:23
         compiled from "/Users/ericdum/niuble.com/other_sites/showcases/sixue365/1/templates/contents/register_includes/map.php" */ ?>
<?php /*%%SmartyHeaderCode:13419475174f926c23332636-55955535%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5c6e1195c6db8b677f7ead552de658a976ed94c0' => 
    array (
      0 => '/Users/ericdum/niuble.com/other_sites/showcases/sixue365/1/templates/contents/register_includes/map.php',
      1 => 1323594124,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13419475174f926c23332636-55955535',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4f926c2335561',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4f926c2335561')) {function content_4f926c2335561($_smarty_tpl) {?>    <div class="mapContainer">
    </div>
    <script type="text/javascript">
        /**
         *
         * 所有坐标单位为像素， 数组中前者为left，后者为top
         *
         **/
        $(document).ready(function(){
            $('.mapContainer').HCMap({
                a:{
                    3:[7,8,9,10,11],
                    4:[6,5,4,9],
                    5:[5,6,7,8,11],
                    6:[4,2],
                    7:[4,1]
                    },
                b:{
                    6:[5,3],
                    7:[5,2],
                    8:[4,8]
                    },
                c:{
                    5:[14,21],
                }
            });
        });
        
    </script>
<?php }} ?>