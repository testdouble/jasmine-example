describe 'checksAnswer', ->
  Given -> @savesProblem = { retrieve: td.create('retrieve') }
  Given -> @subject = requireSubject 'lib/checks-answer',
    './saves-problem': @savesProblem
    './solves-problem': @solvesProblem = td.create('solve')

  describe 'some example', ->
    Given -> @id = 8
    Given -> td.when(@savesProblem.retrieve(@id)).thenReturn('a problem')
    Given -> td.when(@solvesProblem('a problem')).thenReturn(42)

    context 'correct answer', ->
      When -> @result = @subject(@id, 42)
      Then -> @result == true

    context 'incorrect answer', ->
      When -> @result = @subject(@id, -1)
      Then -> @result == false
