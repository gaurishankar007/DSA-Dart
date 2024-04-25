void main() {
  // Integer
  int age = 30;
  print('Age: $age');

  // Double
  double height = 5.9;
  print('Height: $height');

  // Num
  num distance = 100.5;
  print('Distance: $distance');
  num temperature = 98;
  print('Temperature: $temperature');

  // String
  String name = 'Alice';
  print('Name: $name');

  // Boolean
  bool isStudent = true;
  print('Is student: $isStudent');

  // List
  List<int> numbers = [1, 2, 3, 4, 5];
  print('Numbers: $numbers');

  // Map
  Map<String, String> fruits = {
    'apple': 'red',
    'banana': 'yellow',
    'grape': 'purple',
  };
  print('Fruits: $fruits');

  // sets
  Set<int> setNumbers = {1, 2, 3, 4, 5};
  print('Set numbers: $setNumbers');

  // Records
  var record = ('first', a: 2, b: true, 'last');
  print('Record: $record');
  final ({int a, int b}) recordAB = (a: 1, b: 2);
  print('Record AB: $recordAB');

  // Runes
  Runes emojis = Runes('\u{1F60A} \u{1F60D} \u{1F618}');
  print('Emojis: ${String.fromCharCodes(emojis)}');

  // Symbols
  Symbol symbol = #mySymbol;
  print('Symbol: $symbol');

  // Generics
  List<Map<String, String>> fruitsList = [
    {'apple': 'red'},
    {'banana': 'yellow'},
    {'grape': 'purple'},
  ];
  print('Fruits list: $fruitsList');
}
