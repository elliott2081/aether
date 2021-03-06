Aether = require '../aether'

describe "Aether", ->
  describe "Basic tests", ->
    it "doesn't immediately break", ->
      aether = new Aether()
      code = "var x = 3;"
      expect(aether.canTranspile(code)).toEqual true

  describe "Transpile heuristics", ->
    aether = null
    beforeEach ->
      aether = new Aether()
    it "Compiles a blank piece of code", ->
      raw = ""
      expect(aether.canTranspile(raw)).toEqual true
