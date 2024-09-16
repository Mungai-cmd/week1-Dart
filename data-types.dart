void main() {
  // Define and initialize variables
  int myInt = 42;
  double myDouble = 3.14;
  String myString = "Hello, Dart!";
  bool myBool = true;
  List<int> myList = [1, 2, 3, 4, 5];

  print("Integer: $myInt");
  print("Double: $myDouble");
  print("String: $myString");
  print("Boolean: $myBool");
  print("List: $myList");

  // Type Conversion
  StringToIntAndDouble("123", "45.67");
  IntToStringAndDouble(456);
  
  // Control Flow Examples
  numberCheck(10);
  votingEligibility(17);
  dayOfWeek(3);

  // Loops
  print("For loop:");
  forLoopExample();

  print("While loop:");
  whileLoopExample();

  print("Do-while loop:");
  doWhileLoopExample();

  // Combining Data Types and Control Flow
  complexExample();
}

// Type Conversion Functions
void StringToIntAndDouble(String intString, String doubleString) {
  int intValue = int.parse(intString);
  double doubleValue = double.parse(doubleString);
  
  print("String to Int: $intValue");
  print("String to Double: $doubleValue");
}

void IntToStringAndDouble(int intValue) {
  String stringValue = intValue.toString();
  double doubleValue = intValue.toDouble();
  
  print("Int to String: $stringValue");
  print("Int to Double: $doubleValue");
}

// Control Flow Examples

void numberCheck(int number) {
  if (number > 0) {
    print("The number is positive.");
  } else if (number < 0) {
    print("The number is negative.");
  } else {
    print("The number is zero.");
  }
}

void votingEligibility(int age) {
  if (age >= 18) {
    print("Eligible to vote.");
  } else {
    print("Not eligible to vote.");
  }
}

void dayOfWeek(int day) {
  switch (day) {
    case 1:
      print("Monday");
      break;
    case 2:
      print("Tuesday");
      break;
    case 3:
      print("Wednesday");
      break;
    case 4:
      print("Thursday");
      break;
    case 5:
      print("Friday");
      break;
    case 6:
      print("Saturday");
      break;
    case 7:
      print("Sunday");
      break;
    default:
      print("Invalid day");
  }
}

// Loops Examples

void forLoopExample() {
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
}

void whileLoopExample() {
  int i = 10;
  while (i >= 1) {
    print(i);
    i--;
  }
}

void doWhileLoopExample() {
  int i = 1;
  do {
    print(i);
    i++;
  } while (i <= 5);
}

// Combining Data Types and Control Flow

void complexExample() {
  List<int> numbers = [1, 4, 7, 12, 25, 56];
  
  for (int number in numbers) {
    print("Number: $number");
    
    if (number % 2 == 0) {
      print("The number is even.");
    } else {
      print("The number is odd.");
    }
    
    switch (number) {
      case int n when (n >= 1 && n <= 10):
        print("The number is small.");
        break;
      case int n when (n >= 11 && n <= 100):
        print("The number is medium.");
        break;
      case int n when (n > 100):
        print("The number is large.");
        break;
      default:
        print("The number is out of range.");
    }
  }
}
