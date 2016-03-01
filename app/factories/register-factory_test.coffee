###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'Register', ->
  factory = undefined

  beforeEach module 'cognizantApp'

  beforeEach inject (Register) ->
    factory = Register

  it 'should have someValue be Register', ->
    expect(factory.someValue).toEqual 'Register'

  it 'should have someMethod return Register', ->
    expect(factory.someMethod()).toEqual 'Register'
