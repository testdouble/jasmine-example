describe 'savesProblem', ->
  Given -> @subject = requireSubject('lib/saves-problem')

  Given -> @problem = {stuff: 'yes'}
  When -> @result = @subject(@problem)
  Then -> @result.stuff == 'yes'
  And -> @result.id == 1

  context 'retrieving a saved problem', ->
    When -> @retrieved = @subject.retrieve(@result.id)
    Then -> @retrieved.stuff == 'yes'
