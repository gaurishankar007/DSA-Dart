void main() {
  // If-else statement
  int age = 20;
  if (age >= 18) {
    print('You are an adult');
  } else {
    print('You are a minor');
  }

  // Ternary operator
  int number = 10;
  String result = number % 2 == 0 ? 'Even' : 'Odd';
  print('Number is $result');

  // Switch statement
  String grade = 'A';
  switch (grade) {
    case 'A':
      print('Excellent');
      break;
    case 'B':
      print('Good');
      break;
    case 'C':
      print('Average');
      break;
    case 'D':
      print('Poor');
      break;
    default:
      print('Invalid grade');
  }

  // For loop
  for (int i = 1; i <= 5; i++) {
    print('Number: $i');
  }

  // For-in loop
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int number in numbers) {
    print('Number: $number');
  }

  // While loop
  int count = 1;
  while (count <= 5) {
    print('Count: $count');
    count++;
  }

  // Do-while loop
  int value = 1;
  do {
    print('Value: $value');
    value++;
  } while (value <= 5);

  // Break statement
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      break;
    }
    print('Number: $i');
  }

  // Continue statement
  for (int i = 1; i <= 5; i++) {
    if (i == 3) {
      continue;
    }
    print('Number: $i');
  }

  // Nested loop
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print('i: $i, j: $j');
    }
  }
}
