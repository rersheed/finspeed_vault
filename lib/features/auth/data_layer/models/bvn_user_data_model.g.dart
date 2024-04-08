// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bvn_user_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BVNUserDataModelImpl _$$BVNUserDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BVNUserDataModelImpl(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dateOfBirth: json['dateOfBirth'] as String,
      stateOfOrigin: json['stateOfOrigin'] as String,
    );

Map<String, dynamic> _$$BVNUserDataModelImplToJson(
        _$BVNUserDataModelImpl instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'dateOfBirth': instance.dateOfBirth,
      'stateOfOrigin': instance.stateOfOrigin,
    };
