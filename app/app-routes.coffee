'use strict'

angular
  .module 'cognizantApp'
  .config ($routeProvider) ->
    $routeProvider.otherwise {
      redirectTo: '/home'
    }
