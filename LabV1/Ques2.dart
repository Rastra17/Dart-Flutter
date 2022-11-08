import "dart:io";

void main(List<String> args) {
  stdout.write("Enter the marks: ");
  int gradeInput = int.parse(stdin.readLineSync()!);
  String grade = gradeCheck(gradeInput);

  print("Your grade is: $grade");
}

String gradeCheck(int gradeInput) {
  String review = "";

  if (gradeInput >= 80) {
    review = 'A';
  } else if (gradeInput < 80 && gradeInput >= 60) {
    review = 'B';
  } else if (gradeInput < 60 && gradeInput >= 50) {
    review = 'C';
  } else if (gradeInput < 50 && gradeInput >= 45) {
    review = 'D';
  } else if (gradeInput < 45 && gradeInput >= 25) {
    review = 'E';
  } else {
    review = 'F';
  }
  return review;
}
