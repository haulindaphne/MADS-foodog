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
define('AUTH_KEY',         '?2((I0*o*TTm|11 uAt!}f6FhA:rMsy/f~_|pl&IV34Ji=bNz*Y[X_<2-SAOvBsO');
define('SECURE_AUTH_KEY',  '^l)I2fdRtNDs3r?ape+`1}Q})1ES*13V#}TSg,)IDDS`e<v3!ru]/p>GRhw`bHt[');
define('LOGGED_IN_KEY',    'Up7qT7_A8NLv+z`7GbJqkKEcD M+EOPJ%qbWro|O@j_ g7(%}EfBS$xA6Zz>o~[4');
define('NONCE_KEY',        'I<tFP]bjCuGa]xu9Lk^8Cd6.S6}:0m>R&sZ{:-X1[8,?{?P]FgWe:*W~~(GP?un=');
define('AUTH_SALT',        '`-30qOH%@6AFwYpZGg-y6qb;}q$_-OY58B,zb9yqZ.Vf+]U47w^.yWm]c[v>vQ^.');
define('SECURE_AUTH_SALT', 'M[=~Gsqm?.|-*49G%GH:.OMr`@B>W?gC2R}HGyTJk|jqIKRU<.=X].!}lOC}Z~A ');
define('LOGGED_IN_SALT',   '9&:Ea1|IXu |oX82vr)s#c9.TNAYLWkpouF}{/;N=)`sF*XWW_!q+s(&jiX&?7d{');
define('NONCE_SALT',       'q@S?tSK(U83Qf3d%+2^?a:J!K!?3nzbm-aB/V7^cy7UX}BzMsni>N w]pRNW+[y#');

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
