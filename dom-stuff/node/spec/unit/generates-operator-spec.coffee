describe 'generatesOperator', ->
  Given -> @subject = requireSubject 'lib/generates-operator',
    './picks-random': @picksRandom = td.create('pick')

  Given -> td.when(@picksRandom(['+','-','*','/'])).thenReturn('*')
  When -> @result = @subject()
  Then -> @result == '*'
