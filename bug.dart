```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the bug might occur if the JSON is malformed or unexpected
      final jsonResponse = json.decode(response.body);
      // Accessing properties that might not exist can throw an exception
      final name = jsonResponse['name'];
      final age = jsonResponse['age']; 
      print('Name: $name, Age: $age');
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately
  }
}
```