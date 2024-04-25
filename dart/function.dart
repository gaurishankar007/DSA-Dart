void main() {
  // Optional parameters
  print(sum(2, 3)); // Output: 5
  print(sum(2)); // Output: 2

  // Named parameters
  print(sayHello(name: 'Alice')); // Output: Hello, Alice!
  print(sayHello(greeting: 'Hi', name: 'Bob')); // Output: Hi, Bob!

  // Anonymous functions
  var numbers = [1, 2, 3, 4, 5];
  numbers.forEach((number) {
    print(number);
  });

  // Arrow functions
  numbers.forEach((number) => print(number));

  // Async and await
  print('Fetching user details...');
  fetchUserDetails();

  // Closures
  Function add2 = makeAdder(2);
  print(add2(3)); // Output: 5
}

// Optional parameters
int sum(int a, [int b = 0]) {
  return a + b;
}

// Named parameters
String sayHello({String greeting = 'Hello', String name = 'Guest'}) {
  return '$greeting, $name!';
}

// Async and await
Future<void> fetchUserDetails() async {
  var userDetails = await Future.delayed(Duration(seconds: 3), () => 'Alice, 30 years old');
  print('User details: $userDetails');
}

// Closures
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}
