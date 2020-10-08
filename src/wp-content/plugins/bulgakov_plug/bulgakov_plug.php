<?php
/*
 * @package Bulgakov-plug
 * Plugin name:         Bulgakov plugin
 * Description:         My First Plugin
 * Version:             0.001
 * Author:              Bulgakov A.S.
 */

defined('ABSPATH') or die;

if (!function_exists('add_action')) {
    exit;
}

class BulgakovPlug
{

    /**
     * BulgakovPlug constructor.
     */
    public function __construct()
    {
        add_action('init', array($this, 'custom_post_type'));
    }

    function activate() {
        $this->custom_post_type();
        flush_rewrite_rules();
    }

    function deactivate() {
        flush_rewrite_rules();
    }

    function custom_post_type() {
        register_post_type('book', ['public' => true, 'label' => 'Books']);
    }
}

if (class_exists('BulgakovPlug')) {
    $bp = new BulgakovPlug();
}

register_activation_hook(__FILE__, array($bp, 'activate'));
register_deactivation_hook(__FILE__, array($bp, 'deactivate'));
