'use strict'

###*
 # @ngdoc object
 # @name cognizantApp.controller:FormLoginCtrl

 # @description

###
class FormLoginCtrl
  constructor: ->
    @ctrlName = 'FormLoginCtrl'
    
angular
  .module('cognizantApp')
  .controller 'FormLoginCtrl', [
    'Login'
    'Register'
    (Login,Register) ->
      @loginError = false
      @registerError = false
      @regFields = false
      @login = (user,password) ->
        auth = Login.login(user,password)
        @loginError = !auth
        if auth is true
          location.href = "/home/home.tpl.html"
        return
      @goRegister = ->
        @loginError = false
        @regFields = true
        return
      @register = (user,password,name,surname) ->
        reg = Register.register(user,password,name,surname)
        @registerError = !reg
        if reg is true
          location.href = "/home/home.tpl.html"
        return
      return
  ]
@users = [
  {
    "id":0,
    "user":"admin"
    "password":"1234"
    "name":"admin"
    "surname":"admin"
  },
  {
    "id":1,
    "user":"ahueban"
    "password":"cognizant"
    "name":"Adrian"
    "surname":"Huertes"
  }
]