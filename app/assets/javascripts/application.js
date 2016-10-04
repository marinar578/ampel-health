// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .
console.log("loaded");
$(document).ready(function(){
    $('#nav-menu').click(function(){
    $('.menu-header-ul').toggle();
    })

    var menu_items = $('.menu-header-ul li');
    menu_items.hover(function(){
    $(this).children('a').addClass("hover");
    $(this).children('ul').show();
    }, function(){
    $(this).children('a').removeClass("hover");
    $(this).children('ul').hide();
    });


})