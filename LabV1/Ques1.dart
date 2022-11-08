import "dart:io";

void main(List<String> args) {
  stdout.write("Enter the length of the polygon: ");
  int length = int.parse(stdin.readLineSync()!);

  stdout.write("Enter the breadth of the polygon: ");
  int breadth = int.parse(stdin.readLineSync()!);

  bool check = checkSquare(length, breadth);
  if (check == true) {
    print("The inputs defines a square");
  } else {
    print("The inputs defines a rectangle");
  }
}

bool checkSquare(int length, int breadth) {
  bool flag = false;
  if (length == breadth) {
    flag = true;
  }
  return flag;
}
