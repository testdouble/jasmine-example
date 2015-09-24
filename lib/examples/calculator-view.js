CalculatorView = function(calculator){
  this.calculator = calculator || new Calculator();
};

CalculatorView.prototype.submit = function(left,right){
  return this.calculator.add(left, right);
}
