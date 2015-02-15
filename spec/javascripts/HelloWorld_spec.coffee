describe "HelloWorld", ->
  it 'works', ->
    expect(add(1)).toBe(2)

  add = (value) ->
    value + 1