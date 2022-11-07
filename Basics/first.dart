import "dart:io";

void main(List<String> args) {
  print("Enter first number:");
  int first = int.parse(stdin.readLineSync()!);
  //Exclamation mark defines a variable to be not null whereas Question mark 
  //defines that it is a null value
  print("Enter second number:");
  int second = int.parse(stdin.readLineSync()!);

  int sum = add(first, second);
  print("Sum of $first and $second is: $sum");
}

int add(int first, int second) {
  return first + second;
}
