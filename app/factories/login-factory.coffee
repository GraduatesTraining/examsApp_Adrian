'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Login

 # @description

###
angular
  .module 'cognizantApp'
  .factory 'Login', ->
    login: (user,password) ->
      for u in users
        if user is u.user and password is u.password
          auth = true
          break
      auth