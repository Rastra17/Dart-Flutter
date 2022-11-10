import "dart:io";

class Shape {
  int side1 = 0;
  int side2 = 0;

  Shape(int side1, int side2) { // Parent values will be passed down to children
    this.side1 = side1;
    this.side2 = side2;
  }

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
  Square(int side1, [int side2 = 0]) : super(side1, side2);

  @override
  void area() {
    print("Area of square: ${side1 * side1}");
  }
}

void main(List<String> args) {
  print("1. Calculate the area of square");
  print("2. Calculate the area of triangle");

  stdout.write("Enter your choice: ");
  int choice = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the base: ");
  int side1 = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      Square areaSquar = Square(side1);
      areaSquar.area();
      break;
    case 2:
      stdout.write("Enter the height: ");
      int side2 = int.parse(stdin.readLineSync()!);

      Triangle areaTrig = Triangle(side1, side2);
      areaTrig.area();
      break;
  }
}