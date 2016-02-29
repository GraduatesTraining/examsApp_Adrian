'use strict'

###* @ngdoc object
 # @name cognizantApp
 # @description

###
angular
  .module 'cognizantApp', [
    'ngRoute',
    'ui.bootstrap',
    'home',
    'LocalStorageModule'
  ]
  .config [
    'localStorageServiceProvider'
    (localStorageServiceProvider) ->
      localStorageServiceProvider.setPrefix 'ls'
      return
  ]