import 'package:toy_repository/toy_repository.dart';

class ToyDetails {
  ToyDetails({
    required this.age,
    required this.gender,
    required this.condition,
  });

  ToyDetails.fromJson(Map<String, dynamic> json)
      : age = ToyAge.values.firstWhere(
          (e) => e.toString().split('.').last == json['age'] as String,
        ),
        gender = ToyGender.values.firstWhere(
          (e) => e.toString().split('.').last == json['gender'] as String,
        ),
        condition = ToyCondition.values.firstWhere(
          (e) => e.toString().split('.').last == json['condition'] as String,
        );

  final ToyAge age;
  final ToyGender gender;
  final ToyCondition condition;

  Map<String, dynamic> toJson() => {
        'age': age.toString().split('.').last,
        'gender': gender.toString().split('.').last,
        'condition': condition.toString().split('.').last,
      };
}
