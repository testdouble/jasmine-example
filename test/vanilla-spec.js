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

});
