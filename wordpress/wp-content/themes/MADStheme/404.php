<?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */

get_header(); ?>

    <div class="page_header_404 ">
        
        <img id="dog" src="http://localhost/MADS-foodog/wordpress/wp-admin/images/ooups.jpg" alt="chien dessin au crayon">
        
        <div class="page_title_404">
            <p><?php _e( 'An error occured unexpectedly !', 'MADS-foodog' ); ?></p>
        </div>

        <div class="page_content_404">
            <p><?php _e( 'It looks like nothing was found at this location.'); ?></p>
            <p><?php _e('Try to find something else?', 'MADS-foodog' ); ?></p>
        </div><!-- .page_content_404 -->

        <?php get_search_form(); ?>
        
    </div> <!-- .page_header_404  -->







