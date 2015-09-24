createsProblem = require('./creates-problem')
savesProblem = require('./saves-problem')
describesProblem = require('./describes-problem')

module.exports = ->
  describesProblem(savesProblem(createsProblem()))
