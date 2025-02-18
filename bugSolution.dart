```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      //Safely access the key using the ?? operator
      final value = jsonData['nonExistentKey'] ?? 'Default Value';
      print(value); // Prints 'Default Value' if the key is missing
    } else {
      throw Exception('Failed to load data');
    }
  } catch (e) {
    print('Error: $e');
    rethrow; 
  }
}
```