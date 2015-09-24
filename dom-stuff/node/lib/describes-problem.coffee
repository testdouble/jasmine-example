module.exports = (p) ->
  p.description = "#{p.operands.left} #{p.operator} #{p.operands.right}"
  p
