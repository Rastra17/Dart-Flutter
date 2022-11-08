import "dart:io";

void main(List<String> args) {
  stdout.write("Enter a number to reverse: "); //Prints without line break
  int num = int.parse(stdin.readLineSync()!);
  int rev;

  if(num < 0) {
    rev = reverse(num);
    rev = rev * -1;
  } else {
    rev = reverse(num);
  }

  print("The reverse of the input is: $rev");
}

int reverse(int num) {
  int rev = 0;
  if(num < 0) {
    num = num * -1;
  }

  while(num != 0) {
    rev = (rev * 10) + (num % 10);
    num = num ~/ 10;
  }
  return rev;
}
