describe 'checksAnswer', ->
  Given -> @savesProblem = { retrieve: td.create('retrieve') }
  Given -> @subject = requireSubject 'lib/checks-answer',
    './saves-problem': @savesProblem

  describe 'some example', ->
    Given -> @id = 8
    Given -> td.when(@savesProblem.retrieve(@id)).thenReturn
      operands:
        left: 1
        right: 1
      operator: '+'

    context 'correct answer', ->
      When -> @result = @subject(@id, 2)
      Then -> @result == true

    context 'incorrect answer', ->
      When -> @result = @subject(@id, -1)
      Then -> @result == false
