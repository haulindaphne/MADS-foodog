<?php
/**
 * The template for displaying 404 pages (not Found).
 */ 

get_header(); ?>
<div id="primary" class="site_content">
    <div id="content" role="again">

    <?php show_breakcrumbs(); ?>

        <article id="post-0" class="post-error-404 no-results not-found">

            <header class="entry-header">
                <h1 class="entry-title">
                <?php _e('Nothing found', ''); ?>
                </h1>
            </header>

        <div class="entry-content">
            <p><?php _e("It seems we can't find what you're looking for. Perhaps searching can help"); ?>
            </p>
            <?php get_search_form(); ?>
        </div><!--entry-content-->
        
        </article> <!-- post-0 -->
    </div> <!--content -->
</div> <!-- primary -->

<?php get_footer(); 


?>
