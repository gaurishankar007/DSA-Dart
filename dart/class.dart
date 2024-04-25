void main() {
  // Using Default Constructor
  var person1 = Person('Alice', 30, Gender.female, 'Bob');
  print('${person1.name} is married to ${person1.spouse}'); // Output: Alice is married to Bob
  print("${person1.name} is ${person1.gender.getGenderQuality}.");

  // Using Named Constructor
  var person2 = Person.fromMap({
    'name': 'Charlie',
    'age': 35,
    'gender': 'male',
    'spouse': 'Diana',
  });
  print('${person2.name} is married to ${person2.spouse}'); // Output: Charlie is married to Diana

  // Using Parameterized Constructor
  var person3 = Person.namedConstructor(
    name: 'Eve',
    age: 40,
    gender: Gender.female,
    spouse: 'Frank',
  );
  print('${person3.name} is married to ${person3.spouse}'); // Output: Eve is married to Frank

  // Student class
  var student = Student('Alice', 20, Gender.female, '', 'Software Engineer', false);
  print(
    '${student.name} wants to become a ${student.dreamCareer}',
  ); // Output: Alice wants to become a Software Engineer

  // Using Mixin
  student.greet("Emma"); // Output: Hello, Emma. Nice to meet you!

  // Using Extension
  print(
    "${student.name}'s study is ${student.studyStatus}",
  ); // Output: Alice is studying in progress
}

// Enum for Gender
enum Gender {
  male,
  female,
  other;

  String get getGenderQuality => switch (this) {
        male => 'masculine',
        female => 'feminine',
        other => 'neutral',
      };
}

class Person {
  late String name;
  late int age;
  late String _spouse; // Private instance variable
  late Gender gender; // Instance variable of type Gender

  // Default Constructor
  Person(this.name, this.age, this.gender, [this._spouse = '']);

  // Named Constructor
  Person.fromMap(Map<String, dynamic> map)
      : name = map['name'],
        age = map['age'],
        gender = Gender.values.firstWhere((e) => e.toString() == 'Gender.${map['gender']}'),
        _spouse = map['spouse'] ?? '';

  // Parameterized Constructor
  Person.namedConstructor({
    required this.name,
    required this.age,
    required this.gender,
    String spouse = '',
  }) : _spouse = spouse;

  // Getter for private field _spouse
  String get spouse => _spouse;

  // Factory constructor
  factory Person.fromGenderAndMap(Gender gender, Map<String, dynamic> map) {
    return Person(
      map['name'],
      map['age'],
      gender,
      map['spouse'] ?? '',
    );
  }
}

// Mixin for Greetings
mixin GreetingsMixin {
  void greet(String name) {
    print('Hello, $name. Nice to meet you!');
  }
}

// Extending Person class
class Student extends Person with GreetingsMixin {
  late String dreamCareer;
  late bool isStudyCompleted;

  Student(
      String name, int age, Gender gender, String spouse, this.dreamCareer, this.isStudyCompleted)
      : super(name, age, gender, spouse);

  Student.fromMapAndDetails(Map<String, dynamic> map, this.dreamCareer, this.isStudyCompleted)
      : super.fromMap(map);
}

extension on Student {
  String get studyStatus => isStudyCompleted ? 'completed' : 'in progress';
}
