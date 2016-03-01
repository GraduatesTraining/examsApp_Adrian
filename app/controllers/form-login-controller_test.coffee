###global describe, beforeEach, it, expect, inject, module###
'use strict'

describe 'FormLoginCtrl', ->
  ctrl = undefined

  beforeEach module 'cognizantApp'

  beforeEach inject ($rootScope, $controller) ->
    ctrl = $controller 'FormLoginCtrl'

  it 'should have ctrlName as FormLoginCtrl', ->
    expect(ctrl.ctrlName).toEqual 'FormLoginCtrl'

