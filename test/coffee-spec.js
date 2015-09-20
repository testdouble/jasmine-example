describe 'Calculator (Vanilla API, CoffeeScript)', ->
  beforeEach ->
    @subject = new Calculator();

  describe '#add', ->
    it 'adds two numbers', ->
      @result = @subject.add(5,3);

      expect(@result).toEqual(8);

    it 'adds three numbers', ->
      @result = @subject.add(5,3,2);

      expect(@result).toEqual(10);

    it 'handles some edge cases', ->
      expect(@subject.add()).toEqual(0);
      expect(@subject.add(5)).toEqual(5);
      expect(@subject.add(-1,-6)).toEqual(-7);

  describe '#memoryAdd', ->
    it 'starts at zero', ->
      expect(@subject.memoryRecall()).toEqual(0);

    context 'with a number added to it', ->
      beforeEach ->
        @subject.memoryAdd(5);

      it 'stores the first number', ->
        expect(@subject.memoryRecall()).toEqual(5);

      context 'adding two more numbers', ->
        beforeEach ->
          @result = @subject.memoryAdd(6, 9);

        it 'returns the sum', function() {
          expect(@result).toEqual(20);

        it 'stores the sum', ->
          expect(@subject.memoryRecall()).toEqual(20);

        context('clearing the memory', ->
          beforeEach ->
            @result = @subject.memoryClear();

          it 'returns zero', ->
            expect(@result).toEqual(0);

          it 'stores zero', ->
            expect(@subject.memoryRecall()).toEqual(0)
