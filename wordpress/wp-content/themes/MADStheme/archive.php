            <?php get_header(); ?>
            <!-- ouvrir header,php -->
            <div id="content">
                <?php if(have_posts()) : ?>
                <?php while(have_posts()) : the_post(); ?>
                <div class="post" id="post-<?php the_ID(); ?>">
                    <h2>
                        <p class="postmetadata">
                            <?php // the_time('j F Y') ?> <!--par -->
                            <!-- <?php // the_author() ?> | Cat&eacute;gorie: -->
                            <?php the_category(', ') ?>
                            <?php // comments_popup_link('Pas de commentaires', '1 Commentaire', '% Commentaires'); ?>
                            <?php // edit_post_link('Editer', ' &#124; ', ''); ?>
                        </p>
                        <a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>">
                          <?php
                          add_theme_support( 'post-thumbnails', array( 'post' ) );
                          // Ajouter les images à la une sur les articles uniquement
                           the_post_thumbnail();
                            // affiche la miniature par défaut
                            // ?>
                            <?php the_title(); ?>
                        </a>
                    </h2>
                    <div class="post_content">
                        <?php the_excerpt(); ?>
                    </div>
                </div>
                <?php endwhile; ?>
                <?php endif; ?>
            </div>
        </div>

        <?php get_sidebar(); ?>

        <?php get_footer(); ?>
    </body>
</html>
