describe 'getsProblem', ->
  Given -> @createsProblem = td.create('create')
  Given -> @savesProblem = td.create('save')
  Given -> @describesProblem = td.create('describe')
  Given -> @subject = requireSubject 'lib/gets-problem',
    './creates-problem': @createsProblem
    './saves-problem': @savesProblem
    './describes-problem': @describesProblem

  Given -> td.when(@createsProblem()).thenReturn("C")
  Given -> td.when(@savesProblem("C")).thenReturn("S")
  Given -> td.when(@describesProblem("S")).thenReturn("D")
  When -> @result = @subject()
  Then -> @result == "D"
