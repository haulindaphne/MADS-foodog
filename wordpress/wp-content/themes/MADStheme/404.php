<?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */

get_header(); ?>

    <div class="404_page_header">
        <img id="dog" src="http://localhost/MADS-foodog/wordpress/wp-admin/images/ooups.jpg" alt="chien dessin au crayon">
        <p class="page-title"><?php _e( 'An error occured unexpectedly !', 'MADS-foodog' ); ?></p>

    <div class="page-content">
        <p><?php _e( 'It looks like nothing was found at this location.'); ?></p>
        <p><?php _e('Please try a search?', 'MADS-foodog' ); ?></p>

        <?php get_search_form(); ?>
    </div><!-- .page-content -->
</div> <!-- .404-page-header -->







