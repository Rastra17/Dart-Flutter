import "dart:io";

class Shape {
  int side1;
  int side2;

  Shape(this.side1, this.side2);

  void area() {
    print("This is the parent class");
  }
}

class Triangle extends Shape {
  Triangle(int side1, int side2) : super(side1, side2);

  @override
  void area() {
    print("Area of triangle: ${0.5 * (side1 * side2)}");
  }
}

class Square extends Shape {
  Square(int side1, int side2) : super(side1, side2);

  @override
  void area() {
    print("Area of square: ${side1 * side1}");
  }
}

void main(List<String> args) {
  stdout.write("Enter first number: ");
  int side1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int side2 = int.parse(stdin.readLineSync()!);

  Square areaSquar = Square(side1, side2);
  areaSquar.area();

  Triangle areaTrig = Triangle(side1, side2);
  areaTrig.area();
}
