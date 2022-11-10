import "dart:io";

class Shape {
  // _ in Dart is to tell the compiler that it is a private access modifier
  int _side1 = 0;
  int _side2 = 0;

  Shape(int side1, int side2) {
    // Parent values will be passed down to children
    this._side1 = side1;
    this._side2 = side2;
  }

  void area() {
    print("This is the parent class which will be overridden.");
  }

  void SetValues(int side1, int side2) { // Setter (not being used)
    this._side1 = side1;
    this._side2 = side2;
  } // These values are constructed outside the constructor to limit access

  List<int> GetValues() { // Getter (not being used)
    return [this._side1, this._side2];
  }
}

class Triangle extends Shape {
  Triangle(int side1, int side2) : super(side1, side2);

  @override
  void area() {
    print("Area of triangle: ${0.5 * (_side1 * _side2)}");
  }
}

class Square extends Shape {
  Square(int side1, [int side2 = 0]) : super(side1, side2);

  @override
  void area() {
    print("Area of square: ${_side1 * _side1}");
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
