<?php wp_footer(); ?>

<footer class="footer">
      <div class="footer__wrapper">
        <a href="<?php echo get_site_url('/') ?>">BLOG</a>
        <?php
          wp_nav_menu(array(
            'theme_location' => 'footer_menu'
          ))
          ?>
        <p>Copyrights 2022. All Right Reserved</p>
        <?php echo get_template_directory_uri(); ?>
      </div>
    </footer>
    <script src="./script.js"></script>
  </body>
</html>