enum ToyCondition {
  brandNew,
  good,
  normal,
  bad,
  broken,
}

extension ToyConditionDisplayName on ToyCondition {
  String get displayName {
    switch (this) {
      case ToyCondition.brandNew:
        return 'New';
      case ToyCondition.good:
        return 'Good';
      case ToyCondition.normal:
        return 'Normal';
      case ToyCondition.bad:
        return 'Bad';
      case ToyCondition.broken:
        return 'Broken';
    }
  }
}
