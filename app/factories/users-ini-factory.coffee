'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:UsersIni

 # @description

###
angular
  .module 'cognizantApp'
  .factory 'UsersIni', [
    'localStorageService'
    (localStorageService) ->
      usersIni: ->
        users = [
                  {
                    "id": 0
                    "user": "admin"
                    "password": "1234"
                    "name": ""
                    "surname": ""
                  }
                ]
        localStorageService.set('users',users)
  ]
