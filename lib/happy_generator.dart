import 'dart:math';

class HappyGenerator {
  static final List _letters = "abcdefghijklmnopqrstuvwxyz".split("");
  static final List _numbers = "0123456789".split("");
  static String uid([maxLength = 12]) {
    var value = "";
    for (var i = 0; i < maxLength; i++) {
      _letters.shuffle();
      _numbers.shuffle();
      value += Random().nextBool()
          ? Random().nextBool()
              ? _letters.first.toString().toUpperCase()
              : _letters.first
          : _numbers.first;
    }

    return value;
  }
}
