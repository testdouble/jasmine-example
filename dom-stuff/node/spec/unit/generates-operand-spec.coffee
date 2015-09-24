describe 'generatesOperand', ->
  Given -> @subject = requireSubject 'lib/generates-operand',
    './picks-random': @picksRandom = td.create('pick')

  Given -> td.when(@picksRandom(['+','-','*','/'])).thenReturn('*')
  When -> @result = @subject()
  Then -> @result == '*'
