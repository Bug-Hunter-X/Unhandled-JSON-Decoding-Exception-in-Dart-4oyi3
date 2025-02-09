# Unhandled JSON Decoding Exception in Dart

This repository demonstrates a common error in Dart applications when dealing with JSON responses from APIs:  unhandled exceptions during JSON decoding. The `bug.dart` file contains code that attempts to access JSON keys that may not always be present in the response, resulting in runtime errors. The `bugSolution.dart` file shows how to handle this error gracefully using proper error handling and null checks.

## How to Reproduce

1. Clone the repository.
2. Run `bug.dart`. You'll likely see an error related to accessing a missing key in the JSON data.
3. Then run `bugSolution.dart` to see how the issue can be solved.

## Solution

The solution involves using error handling and null checks to gracefully handle cases where expected keys might be absent from the JSON response.