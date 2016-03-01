'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Register

 # @description

###
angular
  .module 'cognizantApp'
  .factory 'Register', [
    'localStorageService'
    'UsersIni'
    (localStorageService,UsersIni) ->
      register: (user,password,name,surname) ->
        reg = true
        if !localStorageService.get('users')
          UsersIni.usersIni()
        users = localStorageService.get('users')
        for u in users
          if user is u.user
            reg = false
        if reg is true
          lastId = users[users.length - 1].id
          newId = lastId + 1
          newUser = {
            "id": newId
            "user": user
            "password": password
            "name": name
            "surname": surname
          }
          users.push(newUser)
          localStorageService.set('users',users)
        reg
  ]