<!-- FORMULAIRE RECHERCHE -->

<form method="get" id="searchform" action="<?php bloginfo('home'); ?>/">
    <div>
        <input id="search_form_text" type="text" value="<?php the_search_query(); ?>" name="s" id="s" />
        <input id="search_form_submit" type="submit" value="Search" /> 
    </div>
</form>