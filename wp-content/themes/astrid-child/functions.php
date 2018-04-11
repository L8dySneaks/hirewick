<?php

/**
* Footer credits
*/
function astrid_child_footer_credits() {
	echo '<span class="sep"> &copy; 2018 Jared Wickham | Developed by: <a href="http://stephsymosko.com">Stephanie Symosko</a> </span>';
}
add_action( 'astrid_child_footer', 'astrid_child_footer_credits' );

/**
 * Enqueue scripts and styles.
 */
// function child_scripts() {
//
//  	 wp_enqueue_script( 'child_scripts', get_template_directory_uri() . '/js/scripts.js', array( 'jquery' ), '1.0', true );
//
// }
// add_action('wp_enqueue_scripts', 'child_scripts');


 function theme_js() {
    wp_enqueue_script( 'theme_js', get_stylesheet_directory_uri() . '/js/scripts.js', array( 'jquery' ), '1.0', true );
}
add_action('wp_enqueue_scripts', 'theme_js');

?>
