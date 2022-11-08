import "dart:io";

void main(List<String> args) {
  List<int> arr = [1, 3];
  arr.add(30);
  var arra = [1, 2, "Kiran"];
  print(arra);

  List<int> inputArr = [];
  stdout.write("Enter the array limit: ");
  int lim = int.parse(stdin.readLineSync()!);

  for(int i = 0; i < lim; i++) {
    stdout.write("Enter the array element: ");
    int reader = int.parse(stdin.readLineSync()!);
    inputArr.add(reader);
  }
  var evenList = checkEven(inputArr);
  print("The even elements in the list: $evenList");

  print("The total elements in the list: $inputArr");

  bool SearchElement = linearSearch(inputArr);
  if(SearchElement == true) {
    print("Element found!");
  } else {
    print("Element not found!");
  }
}

List<int> checkEven(List<int> inputArr) {
  int leng = inputArr.length;
  List<int> arrayInEven = [];
  for(int i = 0; i < leng; i++) {
    if(inputArr[i] % 2 == 0) {
      arrayInEven.add(inputArr[i]);
    }
  }
  return arrayInEven;
}

bool linearSearch(List<int> inputArr) {
  bool flag = false;
  stdout.write("Enter the array element to search: ");
  int toSearch = int.parse(stdin.readLineSync()!);
  int leng = inputArr.length;
  for (int i = 0; i < leng; i++) {
    if (inputArr[i] == toSearch) {
      flag = true;
      break;
    }
  }
  return flag;
}
