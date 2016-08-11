( function() {
  'use strict';

  angular.module('public.ctrl.signIn', [])
  .controller('signInCtrl', ['Auth', '$location',
    function(Auth, $location) {
      this.credentials = { email: '', password: '' };

      this.signIn = function() {
        // Code to use 'angular-devise' component
        Auth.login(this.credentials).then(function(user) {
          $location.path("/");
          alert('Successfully signed in user!')
        }, function(error) {
          console.info('Error in authenticating user!');
          alert('Error in signing in user!');
        });
      }
    }
    
  ]);

})();