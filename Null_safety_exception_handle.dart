import 'dart:io';

void main() {
  print("Please enter your age:");

  String? userInput = stdin.readLineSync();

  try {
    int? age = int.tryParse(userInput ?? '');

    if (age == null) {
      // Handle invalid input
      throw FormatException("Invalid input. Please enter a valid number.");
    }

    int yearsLeft = 100 - age;

    if (yearsLeft < 0) {
      print("You have already turned 100!");
    } else {
      print("You have $yearsLeft years left until you turn 100.");
    }
  } catch (e) {
    print("Error: ${e.toString()}");
  }
}
