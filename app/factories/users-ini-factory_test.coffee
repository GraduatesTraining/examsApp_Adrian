###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'UsersIni', ->
  factory = undefined

  beforeEach module 'cognizantApp'

  beforeEach inject (UsersIni) ->
    factory = UsersIni

  it 'should have someValue be UsersIni', ->
    expect(factory.someValue).toEqual 'UsersIni'

  it 'should have someMethod return UsersIni', ->
    expect(factory.someMethod()).toEqual 'UsersIni'
