/// Dart typedef example

void main() {
  Map<String, List<String>> m1 = {
    'key1': ['value1', 'value2'],
    'key2': ['value3', 'value4'],
  };

  // Using typedef
  ListMapper<String> m2 = {
    'key1': ['value1', 'value2'],
    'key2': ['value3', 'value4'],
  };

  print(m1);
  print(m2);
}

typedef ListMapper<X> = Map<X, List<X>>;
