describe('Calculator (Vanilla API)', function(){
  var subject, result;
  beforeEach(function(){
    subject = new Calculator();
  });

  describe('#add', function(){
    it('adds two numbers', function(){
      result = subject.add(5,3);

      expect(result).toEqual(8);
    });

    it('adds three numbers', function(){
      result = subject.add(5,3,2);

      expect(result).toEqual(10);
    });

    it('handles some edge cases', function(){
      expect(subject.add()).toEqual(0);
      expect(subject.add(5)).toEqual(5);
      expect(subject.add(-1,-6)).toEqual(-7);
    });
  });

  describe('#memoryAdd', function(){
    it('starts at zero', function(){
      expect(subject.memoryRecall()).toEqual(0);
    });

    context('with a number added to it', function(){
      beforeEach(function(){
        subject.memoryAdd(5);
      });
      it('stores the first number', function(){
        expect(subject.memoryRecall()).toEqual(5);
      });

      context('adding two more numbers', function(){
        beforeEach(function(){
          result = subject.memoryAdd(6, 9);
        });
        it('returns the sum', function() {
          expect(result).toEqual(20);
        });
        it('stores the sum', function(){
          expect(subject.memoryRecall()).toEqual(20);
        });
      });
    });
  });
});
