library happy_package;

extension HappyDateTime on DateTime {
  String toDMY([String separator = "/"]) {
    return "$day$separator$month$separator$year";
  }

  String toYMD([String separator = "/"]) {
    return "$year$separator$month$separator$day";
  }

  static DateTime fromDMY(String dmy, [String separator = "/"]) {
    int d = dmy.split(separator).first.toInt;
    int m = dmy.split(separator).elementAt(1).toInt;
    int y = dmy.split(separator).last.toInt;
    return DateTime(y, m, d);
  }

  static DateTime fromYMD(String ymd, [String separator = "/"]) {
    int d = ymd.split(separator).last.toInt;
    int m = ymd.split(separator).elementAt(1).toInt;
    int y = ymd.split(separator).first.toInt;
    return DateTime(y, m, d);
  }
}

extension HappyNum on num {
  bool get hasDecimal {
    return round() != this;
  }

  String get twoDigits {
    String prefix = this < 10 ? "0" : "";
    return "$prefix$this";
  }

  bool divisibleBy(num n) {
    return this % n == 0;
  }

  List<num> dividers() {
    List<num> dividers = [];
    for (int i = 2; i <= this / 2; i++) {
      if (divisibleBy(i)) dividers.add(i);
    }
    return dividers;
  }

  bool get isPrime {
    return dividers().isEmpty;
  }
}

extension HappyString on String {
  List<String> get toList {
    return split("");
  }

  bool get isBlank {
    return trim().isEmpty;
  }

  String get shuffle {
    List spliited = toList;
    spliited.shuffle();
    return spliited.join();
  }

  String get capitalize => replaceFirst(toList.first, toList.first.toUpperCase());

  int get toInt => int.parse(this);
  double get toDouble => double.parse(this);
}

void main(List<String> args) {
 
}
