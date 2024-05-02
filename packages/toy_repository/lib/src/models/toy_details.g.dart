// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'toy_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ToyDetailsImpl _$$ToyDetailsImplFromJson(Map json) => _$ToyDetailsImpl(
      age: $enumDecode(_$ToyAgeEnumMap, json['age']),
      gender: $enumDecode(_$ToyGenderEnumMap, json['gender']),
      condition: $enumDecode(_$ToyConditionEnumMap, json['condition']),
    );

Map<String, dynamic> _$$ToyDetailsImplToJson(_$ToyDetailsImpl instance) =>
    <String, dynamic>{
      'age': _$ToyAgeEnumMap[instance.age]!,
      'gender': _$ToyGenderEnumMap[instance.gender]!,
      'condition': _$ToyConditionEnumMap[instance.condition]!,
    };

const _$ToyAgeEnumMap = {
  ToyAge.zero: 'zero',
  ToyAge.one: 'one',
  ToyAge.two: 'two',
  ToyAge.three: 'three',
  ToyAge.four: 'four',
  ToyAge.five: 'five',
  ToyAge.six: 'six',
};

const _$ToyGenderEnumMap = {
  ToyGender.unisex: 'unisex',
  ToyGender.boy: 'boy',
  ToyGender.girl: 'girl',
};

const _$ToyConditionEnumMap = {
  ToyCondition.brandNew: 'brandNew',
  ToyCondition.good: 'good',
  ToyCondition.normal: 'normal',
  ToyCondition.bad: 'bad',
  ToyCondition.broken: 'broken',
};
