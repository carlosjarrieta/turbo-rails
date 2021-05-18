// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import "@hotwired/turbo-rails"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
ActiveStorage.start()

import "bootstrap"
import "../stylesheets/application"



var jQuery = require('jquery')
global.$ = global.jQuery = jQuery;
window.$ = window.jQuery = jQuery;


// include jQuery in global and window scope (so you can access it globally)
// in your web browser, when you type $('.div'), it is actually refering to global.$('.div')


// include moment in global and window scope (so you can access it globally)
var moment = require('moment')
global.moment = moment;
window.moment = moment;


import "daterangepicker"
import "jquery-validation";
import '@client-side-validations/client-side-validations'
import '@client-side-validations/simple-form/dist/simple-form.bootstrap4'
