describe 'solvesProblem', ->
  Given -> @subject = requireSubject('lib/solves-problem')

  context 'addition', ->
    Given -> @problem =
      operands:
        left: 5
        right: 3
      operator: '+'
    When -> @result = @subject(@problem)
    Then -> @result == 8

  context 'subtraction', ->
    Given -> @problem =
      operands:
        left: 5
        right: 3
      operator: '-'
    When -> @result = @subject(@problem)
    Then -> @result == 2

  context 'multiplication', ->
    Given -> @problem =
      operands:
        left: 5
        right: 3
      operator: '*'
    When -> @result = @subject(@problem)
    Then -> @result == 15

  context 'divide', ->
    Given -> @problem =
      operands:
        left: 8
        right: 2
      operator: '/'
    When -> @result = @subject(@problem)
    Then -> @result == 4
