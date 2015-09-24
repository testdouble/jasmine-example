describe 'createsProblem', ->
  Given -> @subject = requireSubject 'lib/creates-problem',
    './generates-operand': @generatesOperand = td.create('operand')
    './generates-operator': @generatesOperator = td.create('operator')

  Given -> td.when(@generatesOperand()).thenReturn(8,9)
  Given -> td.when(@generatesOperator()).thenReturn('*')
  When -> @result = @subject()
  Then -> expect(@result).toEqual
    operands:
      left: 8
      right: 9
    operator: '*'
