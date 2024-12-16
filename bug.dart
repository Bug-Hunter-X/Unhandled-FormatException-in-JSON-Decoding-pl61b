```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Process the data here. Note: the next line is the source of the bug
      final jsonData = jsonDecode(response.body);
      // ... further data processing ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle error properly and rethrow
    print('Error fetching data: $e');
    rethrow; // Allow calling function to handle the error
  }
}
```