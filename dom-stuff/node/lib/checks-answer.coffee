savesProblem = require('./saves-problem')

module.exports = (id, solution) ->
  problem = savesProblem.retrieve(id)
  problem.operands.left + problem.operands.right == solution
