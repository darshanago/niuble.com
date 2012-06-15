<?php
/**
 * The base configurations of the WordPress.
 *
 * This file has the following configurations: MySQL settings, Table Prefix,
 * Secret Keys, WordPress Language, and ABSPATH. You can find more information
 * by visiting {@link http://codex.wordpress.org/Editing_wp-config.php Editing
 * wp-config.php} Codex page. You can get the MySQL settings from your web host.
 *
 * This file is used by the wp-config.php creation script during the
 * installation. You don't have to use the web site, you can just copy this file
 * to "wp-config.php" and fill in the values.
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'niuble');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '~75v,LVg Sy{= HR&Y@]:dLijuOJakvK%E~LGwqh+: .88(YK91nY9h7 >XPj)Vg');
define('SECURE_AUTH_KEY',  'ZU{L(]dnGzu, (kj|kS||eZY`.F2k#egs-C kWS)}0j sW=_q>P]uiIQgzHK(Hrh');
define('LOGGED_IN_KEY',    'U^*J?Cz,uK/&I/d|-zL yAiB_XKTymDoc2E.L&5=6G(^a2WtP:B?gK)qdBWC;6,E');
define('NONCE_KEY',        'I?RKiY*x1s:4Vu8}qj{=|xXlD/Q{>Pzv^Q8V]%>FfUKA)~| `t7*PSOSj*|x~93}');
define('AUTH_SALT',        'e?V ?q?Zr(IoQcEsM||RYv4*,$eJfjPnh<|Y]*sLVOo|q#Wa:>t* ~&!rkD:0zqd');
define('SECURE_AUTH_SALT', '$WYb;8qCVEf/0xh% WZ2-#(pmG.bKNZm?AUw TYzGCd*7xY6!TJ6PCLD;3nE;s_(');
define('LOGGED_IN_SALT',   'XYDURLOe5a/FwAM8/T.M_C%QT$&Dbd5Iqxg`=kK0*^0kz/b(+!orjz7wdby!9s}+');
define('NONCE_SALT',       '8%B;gjUr!{#zrnRnT9NCqah&? <Br+i|QOcF_V`Ak_5mKhtSfwA9RS,[6HKVf;Mk');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each a unique
 * prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'nb_';

/**
 * WordPress Localized Language, defaults to English.
 *
 * Change this to localize WordPress. A corresponding MO file for the chosen
 * language must be installed to wp-content/languages. For example, install
 * de_DE.mo to wp-content/languages and set WPLANG to 'de_DE' to enable German
 * language support.
 */
define('WPLANG', '');

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
