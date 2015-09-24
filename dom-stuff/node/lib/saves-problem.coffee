savedProblems = []

module.exports = (problem) ->
  savedProblems.push(problem)
  problem.id = savedProblems.length
  problem

module.exports.retrieve = (id) ->
  savedProblems[id - 1]
