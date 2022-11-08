import "dart:io";

void main(List<String> args) {
  stdout.write("Enter classes attended: ");
  int classAttended = int.parse(stdin.readLineSync()!);

  stdout.write("Enter classes happened: ");
  int classHappened = int.parse(stdin.readLineSync()!);

  double Percentage = checkAttendence(classHappened, classAttended);

  print("Your percentage of attendence: $Percentage %");

  if (Percentage >= 75) {
    print("You are allowed to sit in exams");
  } else {
    print("You are not allowed to sit in exams");
  }
}

double checkAttendence(int classHappened, int classAttended) {
  double AttendPercentage = (classAttended / classHappened) * 100;
  return AttendPercentage;
}
