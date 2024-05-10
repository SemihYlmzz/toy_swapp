enum ToyGender {
  unisex,
  boy,
  girl,
}

extension ToyGenderDisplayName on ToyGender {
  String get displayName {
    return switch (this) {
      ToyGender.unisex => 'Both',
      ToyGender.boy => 'Boys',
      ToyGender.girl => 'Girls',
    };
  }
}
