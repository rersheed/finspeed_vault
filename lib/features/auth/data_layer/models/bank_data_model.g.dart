// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BankDataModelImpl _$$BankDataModelImplFromJson(Map<String, dynamic> json) =>
    _$BankDataModelImpl(
      bankName: json['bankName'] as String,
      accountNumber: json['accountNumber'] as String,
      accountName: json['accountName'] as String,
      logo: json['logo'] as String,
      isSelected: json['isSelected'] as bool,
    );

Map<String, dynamic> _$$BankDataModelImplToJson(_$BankDataModelImpl instance) =>
    <String, dynamic>{
      'bankName': instance.bankName,
      'accountNumber': instance.accountNumber,
      'accountName': instance.accountName,
      'logo': instance.logo,
      'isSelected': instance.isSelected,
    };
