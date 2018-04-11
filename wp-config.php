<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'hirewick');

/** MySQL database username */
define('DB_USER', 'wick_admin');

/** MySQL database password */
define('DB_PASSWORD', 'wickadmin');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'UhQtdy^!~JHC{pf.(0[J(5Z^~JrB;^378,5X/ZKgA~}:T&i,i G,3n8{-nszM?Au');
define('SECURE_AUTH_KEY',  '6@<]b[#aV<B0hK/PlQdMeNsVU|6DZ53ojedThP@rk`J3o46n2v{_ml2Q@%<!0{-9');
define('LOGGED_IN_KEY',    '6Psxoer;z6g*f#3}~Xmj70dE I$D|NHJ;Q^e|=_eA}Mf3B )U1}CbN|s78j7Pc<*');
define('NONCE_KEY',        '(!^VT1iZkxzJ=)6tW2l%owygx+J.`c,7so]j=%@PPJIkFb,2F?2Bp|_$E9W@?j&U');
define('AUTH_SALT',        '7QSWn(|oCe)yLWo&|ma!X48U/{b4z)x4X}6.(lW.{up4$H~73SL_,t]IRJ@n<2O]');
define('SECURE_AUTH_SALT', 'dv+-WBr7lF57j9^yv{shjjcZH{ 8TNzvWM;O%(o9g=I7qB+:knmBAg]{.i5$joxY');
define('LOGGED_IN_SALT',   'KPwJ:(4GCQj1YX`9;[<@yGHhZ/.LH-v;FtFity,c)X6r{H^B0(u[aeDKlK9jDuc1');
define('NONCE_SALT',       '#QYtC4PyE#V35dpRuVvnEwkM4u/w=#cD l&liB?{`_Thse{Ja[cZZe88O_5e.QZ<');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
