import "dart:io";

class CalculatePercentageInterface {
  double Percentage() {
    print("This method is for calculating Percentage.");
    return 0.0;
  }

  void setValues(double percentage) {
    print("This method is to assign values within instances.");
  }
}

class ProblemPercentage implements CalculatePercentageInterface {
  double _filesize = 0.0;
  int _neededsize = 8192;
  double _percentage = 0.0;

  ProblemPercentage() {
    print("/Percentage Calculator\\");
  }

  @override
  void setValues(double filesize) {
    this._neededsize = _neededsize;
    this._filesize = filesize;
    this._percentage = _percentage;
  }

  @override
  double Percentage() {
    this._percentage = (this._neededsize / this._filesize) * 100;
    return this._percentage;
  }
}

void main(List<String> args) {
  ProblemPercentage object = ProblemPercentage();

  stdout.write("Enter the file size in KB: ");
  double filesize = double.parse(stdin.readLineSync()!);

  object.setValues(filesize);
  dynamic result = object.Percentage();
  result = result.floor();

  if (result < 1) {
    print("Sorry! The file cannot be compressed to optimal size.");
  }
  else {
    print("The Percentage needed to optimize the file is: $result%");
  }
}
