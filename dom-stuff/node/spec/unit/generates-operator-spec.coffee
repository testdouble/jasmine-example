describe 'generatesOperator', ->
  Given -> @subject = requireSubject 'lib/generates-operator',
    './picks-random': @picksRandom = td.create('pick')

  Given -> td.when(@picksRandom([0..100])).thenReturn(8)
  When -> @result = @subject()
  Then -> @result == 8
