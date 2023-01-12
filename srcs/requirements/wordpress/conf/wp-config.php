<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', getenv('MYSQL_DATABASE'));

/** Database username */
define( 'DB_USER', getenv('MYSQL_USER'));

/** Database password */
define(	'DB_PASSWORD', getenv('MYSQL_PASSWORD'));

/** Database hostname */
define(	'DB_HOST', 'mariadb');

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'l-In~_P-$g4v,3Onw)T3*SFrA6.03+/2:e N3hrd3[QM|KQ&eoC-n-FTlg@@Z-q2');
define('SECURE_AUTH_KEY',  '|*Qe_y!/E5++PG1ConA`d.]^lLQ-RO}x;/6e9Lsxr3r{Ez;d#bon-h;^i+;?w-ZJ');
define('LOGGED_IN_KEY',    'b o`C;!!c(x|%r{K1;R1Yc4Yr)Bj(h6TDYH3XR:5Q)?+c2m<<:(7^n%+^(h19U%q');
define('NONCE_KEY',        '4~~3)^hf!g^%bG$~|^ #CXv)MLB1i_&.Ds6_e#4y0)9aS/Y9xV :{yCTLTw-`1bm');
define('AUTH_SALT',        'p;yq.(SmVdW-^6+Sl2=hioFLy:<oE1^OCd-<Ub9.&-XE-:sD^1:5*p+]6)acgpSk');
define('SECURE_AUTH_SALT', '+<,Z41 kvUnN!pm,[N!_ld]0+`133DSrG;L(-Mu|X4.]K.}Aywx^s;+XZ+ueIvsv');
define('LOGGED_IN_SALT',   '1Eu@G5_(v--oGU{TGL|[a&n/`q V%;OMhPx9;,PmUM|wsx)_!Ru+K|BY5E,Bc.nt');
define('NONCE_SALT',       'U|xB2Ual^L@n lF+s&42U|C|.jf~5g]>IWcMy:!JeD]omp?8O{qI0y{yv]|+)cT{');

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname(__FILE__) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';