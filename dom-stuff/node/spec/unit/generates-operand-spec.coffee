describe 'generatesOperand', ->
  Given -> @subject = requireSubject 'lib/generates-operand',
    './picks-random': @picksRandom = td.create('pick')

  Given -> td.when(@picksRandom([0..100])).thenReturn(8)
  When -> @result = @subject()
  Then -> @result == 8
