'use strict'

###*
 # @ngdoc service
 # @name cognizantApp.factory:Register

 # @description

###
angular
  .module 'cognizantApp'
  .factory 'Register', ->
    register: (user,password,name,surname) ->
      reg = true
      for u in users
        if user is u.user
          reg = false
      if reg is true
        #register
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
      reg