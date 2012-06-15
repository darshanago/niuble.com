<article id="post-<?php the_ID(); ?>" class="index_content single">
    <header class="clearfix">
        <div class="date_septation nb_block"><?php echo get_the_date('M j, Y')?></div>
        <h1 class="entry-title nb_block"><a href="<?php the_permalink(); ?>" title="<?php printf( esc_attr__( 'Permalink to %s', 'niuble' ), the_title_attribute( 'echo=0' ) ); ?>" rel="bookmark"><?php the_title(); ?></a></h1>
        <?php 
        $categories = preg_replace('@</?a.*?>@i', '', get_the_category_list(' '));
        if($categories):
        ?>
            <div class="entry-cat nb_block"><?php echo $categories?></div>
        <?php endif;?>
    </header>

	<section class="entry-content">
		<?php the_content(); ?>
	</section><!-- .entry-content -->

    <aside id="comment">
        <?php comments_template( '', true ); ?>
    </aside>
</article><!-- #post-<?php the_ID(); ?> -->
