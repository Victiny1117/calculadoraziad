class Calculator {

    double sum(double num1, double num2) {
    return num1 + num2;
    //suma
  }
  double subs(double num1, double num2) {
    return num1 - num2;
    //resta
  }

  double div(double num1, double num2) {
    return num1 / num2;
    //division
  }

  double mult(double num1, double num2) {
    return num1 * num2;
    //multiplicacion
  }

  double perc(double num1) {
    return num1 / 100;
    //porcentaje
  }

  double equals(double num1, double num2, String sign) {
    
    switch(sign) {
      case '+':
      return sum(num1, num2);
      break;
      case '-':
      return subs(num1, num2);
      break;
      case '*':
      return mult(num1, num2);
      break;
      case '/':
      return div(num1, num2);
      break;
      case '%':
      return perc(num1);
      break;
    }
    return 0;
  }
}