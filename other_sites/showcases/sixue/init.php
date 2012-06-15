<?php
 /**
 * Example Application

 * @package Example-application
 */

require('./libs/Smarty.class.php');

$smarty = new Smarty;

$smarty->force_compile = false;
$smarty->caching = true;
$smarty->debugging = false;
$smarty->caching = true;
$smarty->cache_lifetime = 120;

$smarty->left_delimiter = '{#';
$smarty->right_delimiter = '#}';

