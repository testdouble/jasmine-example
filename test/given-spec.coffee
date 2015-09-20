describe 'Calculator (-given API, CoffeeScript)', ->
  Given -> @subject = new Calculator()

  describe '#add', ->
    context 'adding two numbers', ->
      When -> @result = @subject.add(5,3)
      Then -> @result == 8

    context 'adding three numbers', ->
      When -> @result = @subject.add(5,3,2)
      Then -> @result == 10

    context 'handling some edge cases', ->
      Then -> @subject.add() == 0
      Then -> @subject.add(5) == 5
      Then -> @subject.add(-1,-6) == -7

  describe '#memoryAdd', ->
    context 'starting at zero', ->
      Then -> @subject.memoryRecall() == 0

    context 'with a number added to it', ->
      When -> @subject.memoryAdd(5)
      Then -> @subject.memoryRecall() == 5

      context 'adding two more numbers', ->
        When -> @result = @subject.memoryAdd(6, 9)
        Then -> @result == 20
        And -> @subject.memoryRecall() == 20

        context 'clearing the memory', ->
          When -> @result = @subject.memoryClear()
          Then -> @result == 0
          And -> @subject.memoryRecall() == 0



