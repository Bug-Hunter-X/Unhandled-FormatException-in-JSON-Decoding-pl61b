# Unhandled FormatException in Dart JSON Decoding
This repository demonstrates a common error in Dart asynchronous programming:  unhandled `FormatException` during JSON decoding.
The `bug.dart` file shows the problematic code. The `bugSolution.dart` file provides a corrected version.
The issue arises from the `jsonDecode` function not being wrapped in proper error handling, potentially leading to app crashes if the server returns invalid JSON.
The solution improves error handling and provides more informative error messages.