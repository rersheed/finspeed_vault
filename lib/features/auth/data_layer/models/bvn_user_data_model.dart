import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bvn_user_data_model.freezed.dart';
part 'bvn_user_data_model.g.dart';

@freezed
class BVNUserDataModel with _$BVNUserDataModel {
  const factory BVNUserDataModel({
    required String firstName,
    required String lastName,
    required String dateOfBirth,
    required String stateOfOrigin,
  }) = _BVNUserDataModel;

  factory BVNUserDataModel.fromJson(Map<String, dynamic> json) =>
      _$BVNUserDataModelFromJson(json);
}
