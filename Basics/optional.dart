void main(List<String> args) {
  print(add(2, 3));
  print(add(2, 3, 5));

  print(sub(second: 5)); //Named Parameters
}

int add(int first, int second, [int third = 0]) { //Optional Parameters
  return first + second + third;
}

int sub({int? first, int? second}) {
  first = first ?? 0; // Initializing null types to 0
  second = second ?? 0;
  return first - second;
}
