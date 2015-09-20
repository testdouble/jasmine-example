describe('Math', function(){
  var subject, result;
  beforeEach(function(){
    subject = new Math();
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
  });
});
