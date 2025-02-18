# Dart: Handling Missing Keys in JSON Responses

This repository demonstrates a common error in Dart when working with JSON responses from APIs: attempting to access a key that does not exist.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a corrected version.

The issue arises when making assumptions about the structure of the JSON data received. If the server's response changes or a key is missing, the application may crash with an error.

The solution involves implementing robust error handling to gracefully handle missing keys and avoid unexpected exceptions.