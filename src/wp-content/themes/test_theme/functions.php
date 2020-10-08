<?php

function bulgakov_files()
{
    // microtime() for developer mode in production change it to - version number like "1.0", "2.0" etc.
    wp_enqueue_script('main-bulgakov-js', get_theme_file_uri('/js/scripts-bundled.js'), null, microtime(), true);
    wp_enqueue_style('custom-google-fonts',
        'https://fonts.googleapis.com/css2?family=Roboto+Condensed:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap');
    wp_enqueue_style('font-awesome', 'https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css');
    wp_enqueue_style('bulgakov_main_styles', get_stylesheet_uri(), null, microtime());
}

add_action('wp_enqueue_scripts', 'bulgakov_files');

add_action('after_setup_theme', 'bulgakov_features');

function bulgakov_features()
{
    add_theme_support('title-tag');
}
