```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);
      // Check if keys exist before accessing them
      final name = jsonResponse['name'] ?? 'Unknown';
      final age = jsonResponse['age'] ?? 0;
      print('Name: $name, Age: $age');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Handle the error appropriately.  For example, you might display a user-friendly message
  }
}
```