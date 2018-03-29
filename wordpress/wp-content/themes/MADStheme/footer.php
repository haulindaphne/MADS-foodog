<div id="footer">
    <div id="footerInfo">
        <p> Copyright &#169; MADS TEAM
            <?php print(date(Y)); ?>
            <?php bloginfo('name'); ?>
            <br /> Blog propulsé par
            <a href="http://wordpress.org/">WordPress</a> et con&ccedil;u par
            <a href="http://www.MADSteam.com">MADS TEAM</a>
            <br />
            <a href="feed:<?php bloginfo('rss2_url'); ?>">Articles (RSS)</a> et
            <a href="feed:<?php bloginfo('comments_rss2_url'); ?>">Commentaires (RSS)</a>.
            <?php echo get_num_queries(); ?> requêtes.
            <?php timer_stop(1); ?> secondes. 
        </p>
</div>
<div id="footerEnd">
    <ul>
        <li><a href="https://fr-fr.facebook.com/"><img src="http://localhost/MADS-foodog/wordpress/wp-admin/images/face.png" alt="facebook"></a></li>
        <li><a href="https://twitter.com/?lang=fr"><img src="http://localhost/MADS-foodog/wordpress/wp-admin/images/twit.png" alt="twitter"></a></li>
        <li><a href="https://www.instagram.com/?hl=fr"><img src="http://localhost/MADS-foodog/wordpress/wp-admin/images/inst.png" alt="instagram"></a></li>
    </ul>
</div>
</div>