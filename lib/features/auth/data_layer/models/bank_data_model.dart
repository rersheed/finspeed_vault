import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_data_model.freezed.dart';
part 'bank_data_model.g.dart';

@freezed
class BankDataModel with _$BankDataModel {
  const factory BankDataModel({
    required String bankName,
    required String accountNumber,
    required String accountName,
    required String logo,
    required bool isSelected,
  }) = _BankDataModel;

  factory BankDataModel.fromJson(Map<String, dynamic> json) =>
      _$BankDataModelFromJson(json);
}
