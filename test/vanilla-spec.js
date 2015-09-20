describe('Math', function(){
  var subject, result;
  beforeEach(function(){
    subject = new Math();
  });

  describe('#add', function(){
    beforeEach(function(){
      result = subject.add(5,3);
    });
    it('adds two numbers', function(){
      expect(result).toEqual(8);
    });
  });
});
