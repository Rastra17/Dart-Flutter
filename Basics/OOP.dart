import "dart:io";

class Calculator {
  int first = 0;
  int second = 0;

  Calculator(this.first, this.second);

  int displaySum() {
    return this.first + this.second;
  }

  int displaySub() {
    return this.first - this.second;
  }
}

void main(List<String> args) {
  stdout.write("Enter first number: ");
  int first = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int second = int.parse(stdin.readLineSync()!);

  Calculator calc = Calculator(first, second);

  print("Sum is: ${calc.displaySum()}");
}
