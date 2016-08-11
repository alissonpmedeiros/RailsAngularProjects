( function() {
  'use strict';
  angular.module('demo', [
    // Libraries
    'templates',
    'ngRoute',
    'Devise',
    'public.ctrl.signIn',
    'public.ctrl.sessions'
  ])
  .config(['$routeProvider',
    function($routeProvider) {
      $routeProvider
        .when('/', {
          templateUrl: 'demo/public/landing/landing.html'
        })
        .when('/sign_in', {
          templateUrl: 'demo/public/sign_in/sign_in.html'
        });

    }
  ]);
})();