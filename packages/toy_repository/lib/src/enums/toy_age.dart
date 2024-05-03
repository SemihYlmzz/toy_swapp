enum ToyAge {
  zero,
  one,
  two,
  three,
  four,
  five,
  six,
}

extension ToyAgeDisplayName on ToyAge {
  String get displayName {
    switch (this) {
      case ToyAge.zero:
        return '0';
      case ToyAge.one:
        return '1';
      case ToyAge.two:
        return '2';
      case ToyAge.three:
        return '3';
      case ToyAge.four:
        return '4';
      case ToyAge.five:
        return '5';
      case ToyAge.six:
        return '6';
    }
  }
}
