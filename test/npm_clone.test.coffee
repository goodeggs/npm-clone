require 'mocha-sinon'
expect = require('chai').expect

{exec} = require 'child_process'
path = require 'path'

describe 'npm-clone', ->
  it 'prints usage', (done) ->
    exec path.resolve(__dirname, '../bin/npm-clone.js'), (err, stdout, stderr) ->
      expect(err).not.to.be.defined
      expect(stdout).to.contain 'usage:'
      done()