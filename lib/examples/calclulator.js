Calculator = function(){};

Calculator.prototype.add = function(){
  return _(arguments).toArray().reduce(function(memo, value){
    return memo + value;
  }, 0)
};

