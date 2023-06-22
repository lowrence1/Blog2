<?php get_header();?>

<section class="banner">
      <div class="container">
        <div class="banner__wrapper">
          <h1>The Blog</h1>
          <div class="banner__grid">
            <div class="banner__main">
            <?php
            $cardLg = new WP_Query(array(
                'post_type' => 'post',      
                'tax_query' => array(
                    array(
                        'taxonomy' => 'category',
                        'field' => 'slug',
                        'terms' => 'lg-banner',
                        'include_children' => false,
                    ),
                    ),
            ));
            ?>
                <?php if($cardLg->have_posts()) : while($cardLg->have_posts()) : $cardLg->the_post()?>
              <article class="banner__story">
                <?php the_post_thumbnail(); ?>
                <div class="banner__story__content">
                  <small><?php echo get_the_date('M, d, Y'); ?></small>
                  <h2><?php the_title(); ?></h2>
                  <p>
                    <?php echo wp_trim_words(get_the_content(), 30); ?>
                  </p>
                  <a href="<?php the_permalink(); ?>">Read More...</a>
                </div>
              </article>

              <?php endwhile;
              else : 
                echo "No Content!!!";
              endif;
              wp_reset_postdata();
              ?>
            </div>

            <div class="banner__sidebar">
            <?php
            $cardSm = new WP_Query(array(
                'post_type' => 'post',
                'posts_per_page' => 3,     
                'tax_query' => array(
                    array(
                        'taxonomy' => 'category',
                        'field' => 'slug',
                        'terms' => 'card-sm-banner',
                        'include_children' => false,
                    ),
                    ),
            ));
            ?>
                <?php if($cardSm->have_posts()) : while($cardSm->have_posts()) : $cardSm->the_post()?>
              <div class="card__sm">
              <?php the_post_thumbnail('banner-sm'); ?>
                <div class="card__sm__content">
                  <small><?php echo get_the_date('M, d, Y'); ?></small>
                  <h3><?php the_title(); ?></h3>
                  <a href="<?php the_permalink(); ?>">Read More...</a>
                </div>
              </div>
              <?php endwhile;
              else : 
                echo "No Content!!!";
              endif;
              wp_reset_postdata();
              ?>
            </div>
           
          </div>
        </div>
      </div>
    </section>

    <section class="latest">
      <div class="container">
        <h2>Latest Story</h2>
        <div class="latest__wrapper">
        <?php
            $latest = new WP_Query(array(
                'post_type' => 'post',
                'posts_per_page' => 3,
                'tax_query' => array(
                  array(
                      'taxonomy' => 'category',
                      'field' => 'slug',
                      'terms' => 'latest-md',
                      'include_children' => false,
                  ),
                  ),      
                'date_query' => array(
                    array(
                        'after' => 'June 22, 2023 ',
                        'before' => 'June 25, 2023',
                        'inclusive' => true,
                    ),
                    ),
            ));
            ?>
                <?php if($latest->have_posts()) : while($latest->have_posts()) : $latest->the_post()?>
        <div class="card__md">
        <?php the_post_thumbnail('thumbnail'); ?>
            <div class="card__md__content">
              <ul>
                <li><small><?php echo get_the_date('M, d, Y'); ?></small></li>
                <li><small>Fashion</small></li>
              </ul>
              <h3>
                <?php the_title() ?>
              </h3>

              <p>
                <?php echo wp_trim_words(get_the_content(), 20); ?>
              </p>
              <a href="<?php the_permalink(); ?>">Read More...</a>
            </div>
          </div>
          <?php endwhile;
              else : 
                echo "No Content!!!";
              endif;
              wp_reset_postdata();
              ?>
          
        </div>
      </div>
    </section>

    <section class="feature">
      <div class="feature__content">
        <h2>Feature New</h2>
        <h3 class="block__header">
          Lorem ipsum dolor, sit amet consectetur adipisicing elit.
        </h3>
        <p>
          Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fuga id
          perferendis quisquam error culpa non iure blanditiis placeat rem
          itaque autem nihil ducimus
        </p>
      </div>

      <div class="container">
      <?php
            $featured = new WP_Query(array(
                'post_type' => 'post',
                'posts_per_page' => 1,      
                'tax_query' => array(
                    array(
                      'taxonomy' => 'category',
                      'field' => 'slug',
                      'terms' => 'Feature-Lg',
                      'include_children' => false,
                    ),
                    ),
            ));
            ?>
                <?php if($featured->have_posts()) : while($featured->have_posts()) : $featured->the_post()?>
        <div class="feature__img">
        <?php the_post_thumbnail('banner-sm'); ?>
        </div>
      </div>
      <?php endwhile;
              else : 
                echo "No Content!!!";
              endif;
              wp_reset_postdata();
              ?>

      <div class="container">
        <div class="feature__wrapper">
          <div class="feature__main">
          <?php
            $featured_md = new WP_Query(array(
                'post_type' => 'post',
                'posts_per_page' => 4,      
                'tax_query' => array(
                  array(
                    'taxonomy' => 'category',
                    'field' => 'slug',
                    'terms' => 'feature-md',
                    'include_children' => false,
                  ),
                    ),
            ));
            ?>
                <?php if($featured_md->have_posts()) : while($featured_md->have_posts()) : $featured_md->the_post()?>
            <article class="card__lg">
            <?php the_post_thumbnail('thumbnail'); ?>
             
              <div class="card__lg__content">
                <small><?php echo get_the_date('M, d, Y'); ?></small>
                <h3>
                <?php the_title() ?>
                </h3>
                <p>
                <?php echo wp_trim_words(get_the_content(), 20); ?>
              </p>
              <a href="<?php the_permalink(); ?>">Read More...</a>
              </div>
            </article>
            <?php endwhile;
              else : 
                echo "No Content!!!";
              endif;
              wp_reset_postdata();
              ?>
          </div>
          

          <div class="feature__sidebar">
          <?php
            $featured_mini = new WP_Query(array(
                'post_type' => 'post',
                'posts_per_page' => 6,      
                'tax_query' => array(
                  array(
                    'taxonomy' => 'category',
                    'field' => 'slug',
                    'terms' => 'feature-mini',
                    'include_children' => false,
                  ),
                    ),
            ));
            ?>
                <?php if($featured_mini->have_posts()) : while($featured_mini->have_posts()) : $featured_mini->the_post()?>
            <div class="card__mini">
              <small><?php echo get_the_date('M, d, Y'); ?></small>
              <h3>
                <?php the_title() ?>
                </h3>
                <p>
                <?php echo wp_trim_words(get_the_content(), 20); ?>
              </p>
              <a href="<?php the_permalink(); ?>">Read More...</a>
              </div>
              <?php endwhile;
              else : 
                echo "No Content!!!";
              endif;
              wp_reset_postdata();
              ?>
            </div>
            

          </div>
        </div>
      </div>
    </section>

    



<?php get_footer(); ?>


<!-- Pang control -->
<!-- 'meta_query' => array(
 'key' => 'feat-size',
 'value' => 'feat-lg',
 'terms' => 'feature-lg',
)  -->
