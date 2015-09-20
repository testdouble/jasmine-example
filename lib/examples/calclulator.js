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

Calculator.prototype.memoryClear = function(){
  this.memory = 0;
  return this.memory;
};

Calculator.prototype.memoryAdd = function(){
  this.memory = this.add.apply(this, [this.memory].concat(_.toArray(arguments)));
  return this.memory;
};
