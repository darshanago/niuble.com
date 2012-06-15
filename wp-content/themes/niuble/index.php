<?php get_header(); ?>

<?php if ( have_posts() ) : ?>

    <?php content_nav( 'nav-above' ); ?>

    <?php /* Start the Loop */ ?>
    <?php $last_date = ''; 
        while ( have_posts() ) : 
            the_post();
            $the_date = get_the_date('M j');
            if( $the_date != $last_date ):?>
                <div class="date_septation nb_block"><?php echo $the_date?></div>
            <?php endif; $last_date = $the_date;?>

            <?php get_template_part( 'content', 'index' ); ?>

    <?php endwhile; ?>

    <?php content_nav( 'nav-below' ); ?>

<?php else : ?>

    <article id="post-0" class="post no-results not-found">
        <header class="entry-header">
            <h1 class="entry-title"><?php _e( 'Nothing Found', 'twentyeleven' ); ?></h1>
        </header><!-- .entry-header -->

        <div class="entry-content">
            <p><?php _e( 'Apologies, but no results were found for the requested archive. Perhaps searching will help find a related post.', 'twentyeleven' ); ?></p>
            <?php get_search_form(); ?>
        </div><!-- .entry-content -->
    </article><!-- #post-0 -->

<?php endif; ?>

<?php get_footer(); ?>
