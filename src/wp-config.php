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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wp' );

/** MySQL database username */
define( 'DB_USER', 'wp' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wp' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         's(}%|hiY%k2u-Sm3i:%<2{6|dwl<{-o4#EWc`9E,k(9-`5/|m:<C5X>6{$e@0Idx' );
define( 'SECURE_AUTH_KEY',  '8{p`IZ-].7fRFz7|bXy6@2}w~Tq}#=3RMtb-:bau-$y0HK;:`+YZ-t^{-E.Ke1}l' );
define( 'LOGGED_IN_KEY',    'bz^/BD:AGpKphk(10j^GLh67:Y]QAS2r -|.bg}O*VzNk$`X:(%/MtS*xo8h3egg' );
define( 'NONCE_KEY',        'r9-wb( K)zPlsL*GA[2`on pnSWJ~0kE 0xpJLva7vGNF?1X$D$WdU<h+ivg)U^:' );
define( 'AUTH_SALT',        '|:^DG;A.Uso#3i6i0uN2wG>{A+:&c<Y#ei8Me6F%T~~o%s&_N]lS61 d;M[s>9I8' );
define( 'SECURE_AUTH_SALT', ')%j[G Vkk:T])I8|(-IVZiEY]SKC5IKR.nSe!}j|fA;yG[gQ:WhE)=`c%^Kk#wv6' );
define( 'LOGGED_IN_SALT',   '~N.]C~*)BF?y7Yk{Ne+rGKFxs,*^eZx5ZbtYXq!%oa^74Qf5T[y9+B,lk4#bt!N?' );
define( 'NONCE_SALT',       'y51?7W?je5JC:sWLlA[6Ig~5H4&zE.^/JY!(sZL41nx2kW$WpEt<4;yJXCBrxrvi' );

/**#@-*/

/**
 * WordPress Database Table prefix.
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
define( 'WP_DEBUG', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
