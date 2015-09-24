module.exports = (problem) ->
  left = problem.operands.left
  right = problem.operands.right

  switch problem.operator
    when '+' then left + right
    when '-' then left - right
    when '*' then left * right
    when '/' then left / right
