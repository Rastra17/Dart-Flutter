// WAP to create a menu driven program which has a banking system
// 1. Create Account
// 2. To deposit amount
// 3. Withdraw Amount
// 4. Check Balance
// 5. Do you want to continue?

import "dart:io";

abstract class CheckBalance {
  int balanceCheck();
}

abstract class Transaction extends CheckBalance {
  void deposit(int moneyDeposited);
  void withdraw(int moneyWithdrawn);
}

class Menu extends Transaction {
  String? _name;
  int _balance = 0;
  Map _UserData = Map<String, dynamic>();

  Menu() {
    print("Welcome to the Bank!");
  }

  void createAccount(String name) {
    this._name = name;

    this._UserData["Name"] = this._name;
    this._UserData["Balance"] = this._balance;
  }

  @override
  int balanceCheck() {
    return this._balance;
  }

  @override
  void deposit(int moneyDeposited) {
    this._balance = this._balance + moneyDeposited;
    print("${moneyDeposited} has been deposited to your account.");
  }

  @override
  void withdraw(int moneyWithdrawn) {
    if (moneyWithdrawn > this._balance) {
      print("You do not have enough balance in your account!");
    } else {
      this._balance = this._balance - moneyWithdrawn;
      print("${moneyWithdrawn} has been withdrawn from your account.");
    }
  }
}

void main(List<String> args) {
  int choice;
  String? name;

  print("");
  Menu object = Menu();

  while (true) {
    print("");
    print("What do you want to do?");
    print("1. Create Account");
    print("2. Check Balance");
    print("3. Deposit");
    print("4. Withdraw");
    print("5. Quit the Program?");
    print("");

    stdout.write("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    print("");

    if (choice == 1) {
      stdout.write("Enter your name: ");
      name = stdin.readLineSync()!;
      object.createAccount(name);
      print(object._UserData);
    } else if (choice == 2 && name != null) {
      int check = object.balanceCheck();
      print("Your balance: $check");
    } else if (choice == 3 && name != null) {
      stdout.write("How much are you depositing: ");
      int moneyDeposited = int.parse(stdin.readLineSync()!);
      object.deposit(moneyDeposited);
    } else if (choice == 4 && name != null) {
      stdout.write("How much are you withdrawing: ");
      int moneyWithdrawn = int.parse(stdin.readLineSync()!);
      object.withdraw(moneyWithdrawn);
    } else if (choice == 5) {
      stdout.write("Are you sure? (Y/N): ");
      String confirm = stdin.readLineSync()!;

      if (confirm == 'Y' || confirm == 'y') {
        break;
      } else if (confirm == 'N' || confirm == 'n') {
        continue;
      } else {
        print("Invalid choice!");
      }
    } else if (name == null) {
      print("Create your account first!");
    } else {
      print("Invalid Choice");
    }
  }
}
