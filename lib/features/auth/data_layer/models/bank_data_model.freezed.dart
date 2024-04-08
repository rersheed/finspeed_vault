// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bank_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BankDataModel _$BankDataModelFromJson(Map<String, dynamic> json) {
  return _BankDataModel.fromJson(json);
}

/// @nodoc
mixin _$BankDataModel {
  String get bankName => throw _privateConstructorUsedError;
  String get accountNumber => throw _privateConstructorUsedError;
  String get accountName => throw _privateConstructorUsedError;
  String get logo => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BankDataModelCopyWith<BankDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BankDataModelCopyWith<$Res> {
  factory $BankDataModelCopyWith(
          BankDataModel value, $Res Function(BankDataModel) then) =
      _$BankDataModelCopyWithImpl<$Res, BankDataModel>;
  @useResult
  $Res call(
      {String bankName,
      String accountNumber,
      String accountName,
      String logo,
      bool isSelected});
}

/// @nodoc
class _$BankDataModelCopyWithImpl<$Res, $Val extends BankDataModel>
    implements $BankDataModelCopyWith<$Res> {
  _$BankDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? accountNumber = null,
    Object? accountName = null,
    Object? logo = null,
    Object? isSelected = null,
  }) {
    return _then(_value.copyWith(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BankDataModelImplCopyWith<$Res>
    implements $BankDataModelCopyWith<$Res> {
  factory _$$BankDataModelImplCopyWith(
          _$BankDataModelImpl value, $Res Function(_$BankDataModelImpl) then) =
      __$$BankDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String bankName,
      String accountNumber,
      String accountName,
      String logo,
      bool isSelected});
}

/// @nodoc
class __$$BankDataModelImplCopyWithImpl<$Res>
    extends _$BankDataModelCopyWithImpl<$Res, _$BankDataModelImpl>
    implements _$$BankDataModelImplCopyWith<$Res> {
  __$$BankDataModelImplCopyWithImpl(
      _$BankDataModelImpl _value, $Res Function(_$BankDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bankName = null,
    Object? accountNumber = null,
    Object? accountName = null,
    Object? logo = null,
    Object? isSelected = null,
  }) {
    return _then(_$BankDataModelImpl(
      bankName: null == bankName
          ? _value.bankName
          : bankName // ignore: cast_nullable_to_non_nullable
              as String,
      accountNumber: null == accountNumber
          ? _value.accountNumber
          : accountNumber // ignore: cast_nullable_to_non_nullable
              as String,
      accountName: null == accountName
          ? _value.accountName
          : accountName // ignore: cast_nullable_to_non_nullable
              as String,
      logo: null == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String,
      isSelected: null == isSelected
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BankDataModelImpl
    with DiagnosticableTreeMixin
    implements _BankDataModel {
  const _$BankDataModelImpl(
      {required this.bankName,
      required this.accountNumber,
      required this.accountName,
      required this.logo,
      required this.isSelected});

  factory _$BankDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BankDataModelImplFromJson(json);

  @override
  final String bankName;
  @override
  final String accountNumber;
  @override
  final String accountName;
  @override
  final String logo;
  @override
  final bool isSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BankDataModel(bankName: $bankName, accountNumber: $accountNumber, accountName: $accountName, logo: $logo, isSelected: $isSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BankDataModel'))
      ..add(DiagnosticsProperty('bankName', bankName))
      ..add(DiagnosticsProperty('accountNumber', accountNumber))
      ..add(DiagnosticsProperty('accountName', accountName))
      ..add(DiagnosticsProperty('logo', logo))
      ..add(DiagnosticsProperty('isSelected', isSelected));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BankDataModelImpl &&
            (identical(other.bankName, bankName) ||
                other.bankName == bankName) &&
            (identical(other.accountNumber, accountNumber) ||
                other.accountNumber == accountNumber) &&
            (identical(other.accountName, accountName) ||
                other.accountName == accountName) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.isSelected, isSelected) ||
                other.isSelected == isSelected));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, bankName, accountNumber, accountName, logo, isSelected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BankDataModelImplCopyWith<_$BankDataModelImpl> get copyWith =>
      __$$BankDataModelImplCopyWithImpl<_$BankDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BankDataModelImplToJson(
      this,
    );
  }
}

abstract class _BankDataModel implements BankDataModel {
  const factory _BankDataModel(
      {required final String bankName,
      required final String accountNumber,
      required final String accountName,
      required final String logo,
      required final bool isSelected}) = _$BankDataModelImpl;

  factory _BankDataModel.fromJson(Map<String, dynamic> json) =
      _$BankDataModelImpl.fromJson;

  @override
  String get bankName;
  @override
  String get accountNumber;
  @override
  String get accountName;
  @override
  String get logo;
  @override
  bool get isSelected;
  @override
  @JsonKey(ignore: true)
  _$$BankDataModelImplCopyWith<_$BankDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
