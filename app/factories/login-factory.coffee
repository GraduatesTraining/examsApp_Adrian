'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Login

 # @description

###
angular
  .module 'cognizantApp'
  .factory 'Login', [
    'localStorageService'
    'UsersIni'
    (localStorageService,UsersIni) ->
      login: (user,password) ->
        if !localStorageService.get('users')
          UsersIni.usersIni()
        users = localStorageService.get('users')
        for u in users
          if user is u.user and password is u.password
            auth = true
            break
        auth
    ]