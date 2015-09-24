describe 'CalculatorView', ->
  Given -> @calculator = td.create(Calculator)
  Given -> @subject = new CalculatorView(@calculator)

  describe 'it uses the calculator', ->
    Given -> td.when(@calculator.add(42, 1337)).thenReturn(13)
    When -> @result = @subject.submit(42, 1337)
    Then -> @result == 13
