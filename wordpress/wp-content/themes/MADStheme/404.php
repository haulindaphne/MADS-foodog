<?php
/**
 * The template for displaying 404 pages (Not Found)
 *
 * @package WordPress
 * @subpackage Twenty_Thirteen
 * @since Twenty Thirteen 1.0
 */

get_header(); ?>


            <div class="page-header">
                <p class="page-title"><?php _e( 'An error occured unexpectedly !', 'MADS-foodog' ); ?></p>
            </div>

            <div class="page-content">
                <p><?php _e( 'It looks like nothing was found at this location.'); ?></p>
                <p><?php _e('Please try a search?', 'MADS-foodog' ); ?></p>

                <?php get_search_form(); ?>
            </div><!-- .page-content -->






