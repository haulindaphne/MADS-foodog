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
define('DB_NAME', 'wordpress');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

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
define('AUTH_KEY',         'A36_1Md?hM.qNfL9QHI+LOB+VwrBl]omwJ0CgeISI_zgm*(YFV&nT629l)y=4s}l');
define('SECURE_AUTH_KEY',  ';ica*Lr4[EOE`%h<kCm@cD*y_;RA 51G3*[>f;v3>FBZ$=8uY,G2PT@(0*>c>!m*');
define('LOGGED_IN_KEY',    '5_wwOPL2u*82b =8<Vh #[IlMS5jQ7FWA(.l!]< $;MUN5YS )SDvcI2(;r/TlIC');
define('NONCE_KEY',        ')xeKn#] R4Cibn&S4 PJ]saO:Kr$^n SQw?6O|;0VgkcW<c0)^/]{V+W%S(2c:qC');
define('AUTH_SALT',        'Iq32-[T[ji_VG4]M)7*F{SHT.:`h,8,nS4Nvt}b tyzyDt5$,,QMo@omRl% zS`p');
define('SECURE_AUTH_SALT', '%G),T6gA*Gv|*Ec80@Bp.1AqWkAS_sAZ]H$2lw!Sx,Hp&!0$|Xgg>%+N28[e@ n>');
define('LOGGED_IN_SALT',   '_=AYq5;uo$4<bJZmnuWKPA,le%MDtK7}ien;.YVq&(oMGC^B|ms@r?%kVJ4iC?oa');
define('NONCE_SALT',       'J%Vg#5,S8ih<Zl,KOV+NBU.ZE?*nuT`8$<-JGg|HgS;x6e!ise>Go]4Tyz2-,@%p');

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
