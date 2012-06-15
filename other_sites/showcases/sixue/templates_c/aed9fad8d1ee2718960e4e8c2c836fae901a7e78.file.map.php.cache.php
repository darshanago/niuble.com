<?php /* Smarty version Smarty-3.1.6, created on 2011-12-19 07:55:06
         compiled from "/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/map.php" */ ?>
<?php /*%%SmartyHeaderCode:12937925314eee7d5ab80000-88449699%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'aed9fad8d1ee2718960e4e8c2c836fae901a7e78' => 
    array (
      0 => '/Users/ericdum/Sites/work/sixue365/1/templates/contents/register_includes/map.php',
      1 => 1323594124,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12937925314eee7d5ab80000-88449699',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.6',
  'unifunc' => 'content_4eee7d5aba732',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_4eee7d5aba732')) {function content_4eee7d5aba732($_smarty_tpl) {?>    <div class="mapContainer">
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