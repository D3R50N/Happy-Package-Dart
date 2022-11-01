<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

# Helpful extensions for Dart basic classes

## Getting started

```bash
flutter pub get happy_package
```

## Usage

```dart
import 'package:happy_package/happy_package.dart';

const DateTime dt = DateTime(2003,22,02);
print(dt.toDMY("-")) // 02-22-2003

const String str = "hello";
print(str.shuffle.capitalize) // Elohl

print(3.0.hasDecimal) // false
print(3.1.hasDecimal) // true
```
