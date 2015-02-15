describe 'Constant: VERSION', ->
  VERSION = null
  beforeEach ->
    # Load the constant's module
    module 'myApp'

    # Inject in angular constructs otherwise,
    #  you would need to inject these into each test
    inject (_VERSION_) ->
      VERSION = _VERSION_

  it 'should exist', ->
    expect(!!VERSION).toBe yes

  describe 'the constant', ->
    # Add specs
    it 'should be set to 1.0', ->
      expect(VERSION).toEqual("1.0")