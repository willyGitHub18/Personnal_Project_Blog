// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require popper
//= require bootstrap
//= require js/plugins/plugins
//= require js/assan.custom
//= require cubeportfolio/js/jquery.cubeportfolio.min
// require turbolinks
//= require trix
//= require_tree .

    //projects
    (function ($, window, document, undefined) {
        'use strict';

        // init cubeportfolio
        $('#js-grid-lightbox-gallery').cubeportfolio({
            filters: '#js-filters-lightbox-gallery1, #js-filters-lightbox-gallery2',
            layoutMode: 'grid',
            mediaQueries: [{
                    width: 1500,
                    cols: 4
                }, {
                    width: 1100,
                    cols: 3
                }, {
                    width: 800,
                    cols: 3
                }, {
                    width: 480,
                    cols: 2,
                    options: {
                        caption: ''
                    }
                }],
            defaultFilter: '*',
            animationType: 'flipOutDelay',
            gapHorizontal: 15,
            gapVertical: 15,
            gridAdjustment: 'responsive',
            caption: 'overlayBottomAlong',
            displayType: 'sequentially',
            displayTypeSpeed: 100,
            // lightbox
            lightboxDelegate: '.cbp-lightbox',
            lightboxGallery: true,
            lightboxTitleSrc: 'data-title',
            lightboxCounter: '<div class="cbp-popup-lightbox-counter">{{current}} of {{total}}</div>'
        });
    })(jQuery, window, document);
