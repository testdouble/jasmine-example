describe 'describesProblem', ->
  Given -> @subject = requireSubject('lib/describes-problem')

  Given -> @problem = {
    operands:
      left: 8
      right: 9
    operator: '/'
  }
  When -> @result = @subject(@problem)
  Then -> @result.description == "8 / 9"
