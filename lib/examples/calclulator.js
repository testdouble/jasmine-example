Calculator = function(){
  this.memory = 0;
};

Calculator.prototype.add = function(){
  return _(arguments).toArray().reduce(function(memo, value){
    return memo + value;
  }, 0)
};

Calculator.prototype.memoryRecall = function(){
  return this.memory;
};

Calculator.prototype.memoryAdd = function(value){
  this.memory = value;
};
