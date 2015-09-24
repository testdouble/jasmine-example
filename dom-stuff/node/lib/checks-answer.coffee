savesProblem = require('./saves-problem')
solvesProblem = require('./solves-problem')

module.exports = (id, solution) ->
  problem = savesProblem.retrieve(id)
  solvesProblem(problem) == solution
