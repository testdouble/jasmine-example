generatesOperand = require('./generates-operand')
generatesOperator = require('./generates-operator')

module.exports = ->
  operands:
    left: generatesOperand()
    right: generatesOperand()
  operator: generatesOperator()
