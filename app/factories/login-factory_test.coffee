###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Login', ->
  factory = undefined

  beforeEach module 'cognizantApp'

  beforeEach inject (Login) ->
    factory = Login

  it 'should have someValue be Login', ->
    expect(factory.someValue).toEqual 'Login'

  it 'should have someMethod return Login', ->
    expect(factory.someMethod()).toEqual 'Login'
