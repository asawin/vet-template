/**
 * Let's you use lodash as a service from a controller.
 * Adapted from https://github.com/andresesfm/angular-underscore-module
 * Homepage https://github.com/kmc059000
 */
angular.module('lodash', []).factory('_', function() {
    return window._; // assumes lodash has already been loaded on the page
});
