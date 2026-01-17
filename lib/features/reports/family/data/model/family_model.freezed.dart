// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'family_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FamilyModel {
  @JsonKey(name: 'sitio_name')
  String get sitioName;
  @JsonKey(name: 'con_household_number')
  String get conHouseholdNumber;
  @JsonKey(name: 'con_family_id')
  String get conFamilyId;
  @JsonKey(name: 'indiv_id')
  String get indivId;
  @JsonKey(name: 'con_lname')
  String get conLname;
  @JsonKey(name: 'con_fname')
  String get conFname;
  @JsonKey(name: 'con_mname')
  String get conMname;
  @JsonKey(name: 'con_dob')
  String get conDob;
  @JsonKey(name: 'con_sex')
  String get conSex;
  @JsonKey(name: 'con_contact')
  String get conContact;
  @JsonKey(name: 'civil_status')
  String get civilStatus;

  /// Create a copy of FamilyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FamilyModelCopyWith<FamilyModel> get copyWith =>
      _$FamilyModelCopyWithImpl<FamilyModel>(this as FamilyModel, _$identity);

  /// Serializes this FamilyModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FamilyModel &&
            (identical(other.sitioName, sitioName) ||
                other.sitioName == sitioName) &&
            (identical(other.conHouseholdNumber, conHouseholdNumber) ||
                other.conHouseholdNumber == conHouseholdNumber) &&
            (identical(other.conFamilyId, conFamilyId) ||
                other.conFamilyId == conFamilyId) &&
            (identical(other.indivId, indivId) || other.indivId == indivId) &&
            (identical(other.conLname, conLname) ||
                other.conLname == conLname) &&
            (identical(other.conFname, conFname) ||
                other.conFname == conFname) &&
            (identical(other.conMname, conMname) ||
                other.conMname == conMname) &&
            (identical(other.conDob, conDob) || other.conDob == conDob) &&
            (identical(other.conSex, conSex) || other.conSex == conSex) &&
            (identical(other.conContact, conContact) ||
                other.conContact == conContact) &&
            (identical(other.civilStatus, civilStatus) ||
                other.civilStatus == civilStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sitioName,
      conHouseholdNumber,
      conFamilyId,
      indivId,
      conLname,
      conFname,
      conMname,
      conDob,
      conSex,
      conContact,
      civilStatus);

  @override
  String toString() {
    return 'FamilyModel(sitioName: $sitioName, conHouseholdNumber: $conHouseholdNumber, conFamilyId: $conFamilyId, indivId: $indivId, conLname: $conLname, conFname: $conFname, conMname: $conMname, conDob: $conDob, conSex: $conSex, conContact: $conContact, civilStatus: $civilStatus)';
  }
}

/// @nodoc
abstract mixin class $FamilyModelCopyWith<$Res> {
  factory $FamilyModelCopyWith(
          FamilyModel value, $Res Function(FamilyModel) _then) =
      _$FamilyModelCopyWithImpl;
  @useResult
  $Res call(
      {@JsonKey(name: 'sitio_name') String sitioName,
      @JsonKey(name: 'con_household_number') String conHouseholdNumber,
      @JsonKey(name: 'con_family_id') String conFamilyId,
      @JsonKey(name: 'indiv_id') String indivId,
      @JsonKey(name: 'con_lname') String conLname,
      @JsonKey(name: 'con_fname') String conFname,
      @JsonKey(name: 'con_mname') String conMname,
      @JsonKey(name: 'con_dob') String conDob,
      @JsonKey(name: 'con_sex') String conSex,
      @JsonKey(name: 'con_contact') String conContact,
      @JsonKey(name: 'civil_status') String civilStatus});
}

/// @nodoc
class _$FamilyModelCopyWithImpl<$Res> implements $FamilyModelCopyWith<$Res> {
  _$FamilyModelCopyWithImpl(this._self, this._then);

  final FamilyModel _self;
  final $Res Function(FamilyModel) _then;

  /// Create a copy of FamilyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sitioName = null,
    Object? conHouseholdNumber = null,
    Object? conFamilyId = null,
    Object? indivId = null,
    Object? conLname = null,
    Object? conFname = null,
    Object? conMname = null,
    Object? conDob = null,
    Object? conSex = null,
    Object? conContact = null,
    Object? civilStatus = null,
  }) {
    return _then(_self.copyWith(
      sitioName: null == sitioName
          ? _self.sitioName
          : sitioName // ignore: cast_nullable_to_non_nullable
              as String,
      conHouseholdNumber: null == conHouseholdNumber
          ? _self.conHouseholdNumber
          : conHouseholdNumber // ignore: cast_nullable_to_non_nullable
              as String,
      conFamilyId: null == conFamilyId
          ? _self.conFamilyId
          : conFamilyId // ignore: cast_nullable_to_non_nullable
              as String,
      indivId: null == indivId
          ? _self.indivId
          : indivId // ignore: cast_nullable_to_non_nullable
              as String,
      conLname: null == conLname
          ? _self.conLname
          : conLname // ignore: cast_nullable_to_non_nullable
              as String,
      conFname: null == conFname
          ? _self.conFname
          : conFname // ignore: cast_nullable_to_non_nullable
              as String,
      conMname: null == conMname
          ? _self.conMname
          : conMname // ignore: cast_nullable_to_non_nullable
              as String,
      conDob: null == conDob
          ? _self.conDob
          : conDob // ignore: cast_nullable_to_non_nullable
              as String,
      conSex: null == conSex
          ? _self.conSex
          : conSex // ignore: cast_nullable_to_non_nullable
              as String,
      conContact: null == conContact
          ? _self.conContact
          : conContact // ignore: cast_nullable_to_non_nullable
              as String,
      civilStatus: null == civilStatus
          ? _self.civilStatus
          : civilStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [FamilyModel].
extension FamilyModelPatterns on FamilyModel {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_FamilyModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FamilyModel() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FamilyModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FamilyModel():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_FamilyModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FamilyModel() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'sitio_name') String sitioName,
            @JsonKey(name: 'con_household_number') String conHouseholdNumber,
            @JsonKey(name: 'con_family_id') String conFamilyId,
            @JsonKey(name: 'indiv_id') String indivId,
            @JsonKey(name: 'con_lname') String conLname,
            @JsonKey(name: 'con_fname') String conFname,
            @JsonKey(name: 'con_mname') String conMname,
            @JsonKey(name: 'con_dob') String conDob,
            @JsonKey(name: 'con_sex') String conSex,
            @JsonKey(name: 'con_contact') String conContact,
            @JsonKey(name: 'civil_status') String civilStatus)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _FamilyModel() when $default != null:
        return $default(
            _that.sitioName,
            _that.conHouseholdNumber,
            _that.conFamilyId,
            _that.indivId,
            _that.conLname,
            _that.conFname,
            _that.conMname,
            _that.conDob,
            _that.conSex,
            _that.conContact,
            _that.civilStatus);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            @JsonKey(name: 'sitio_name') String sitioName,
            @JsonKey(name: 'con_household_number') String conHouseholdNumber,
            @JsonKey(name: 'con_family_id') String conFamilyId,
            @JsonKey(name: 'indiv_id') String indivId,
            @JsonKey(name: 'con_lname') String conLname,
            @JsonKey(name: 'con_fname') String conFname,
            @JsonKey(name: 'con_mname') String conMname,
            @JsonKey(name: 'con_dob') String conDob,
            @JsonKey(name: 'con_sex') String conSex,
            @JsonKey(name: 'con_contact') String conContact,
            @JsonKey(name: 'civil_status') String civilStatus)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FamilyModel():
        return $default(
            _that.sitioName,
            _that.conHouseholdNumber,
            _that.conFamilyId,
            _that.indivId,
            _that.conLname,
            _that.conFname,
            _that.conMname,
            _that.conDob,
            _that.conSex,
            _that.conContact,
            _that.civilStatus);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            @JsonKey(name: 'sitio_name') String sitioName,
            @JsonKey(name: 'con_household_number') String conHouseholdNumber,
            @JsonKey(name: 'con_family_id') String conFamilyId,
            @JsonKey(name: 'indiv_id') String indivId,
            @JsonKey(name: 'con_lname') String conLname,
            @JsonKey(name: 'con_fname') String conFname,
            @JsonKey(name: 'con_mname') String conMname,
            @JsonKey(name: 'con_dob') String conDob,
            @JsonKey(name: 'con_sex') String conSex,
            @JsonKey(name: 'con_contact') String conContact,
            @JsonKey(name: 'civil_status') String civilStatus)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _FamilyModel() when $default != null:
        return $default(
            _that.sitioName,
            _that.conHouseholdNumber,
            _that.conFamilyId,
            _that.indivId,
            _that.conLname,
            _that.conFname,
            _that.conMname,
            _that.conDob,
            _that.conSex,
            _that.conContact,
            _that.civilStatus);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _FamilyModel implements FamilyModel {
  const _FamilyModel(
      {@JsonKey(name: 'sitio_name') required this.sitioName,
      @JsonKey(name: 'con_household_number') required this.conHouseholdNumber,
      @JsonKey(name: 'con_family_id') required this.conFamilyId,
      @JsonKey(name: 'indiv_id') required this.indivId,
      @JsonKey(name: 'con_lname') required this.conLname,
      @JsonKey(name: 'con_fname') required this.conFname,
      @JsonKey(name: 'con_mname') required this.conMname,
      @JsonKey(name: 'con_dob') required this.conDob,
      @JsonKey(name: 'con_sex') required this.conSex,
      @JsonKey(name: 'con_contact') required this.conContact,
      @JsonKey(name: 'civil_status') required this.civilStatus});
  factory _FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyModelFromJson(json);

  @override
  @JsonKey(name: 'sitio_name')
  final String sitioName;
  @override
  @JsonKey(name: 'con_household_number')
  final String conHouseholdNumber;
  @override
  @JsonKey(name: 'con_family_id')
  final String conFamilyId;
  @override
  @JsonKey(name: 'indiv_id')
  final String indivId;
  @override
  @JsonKey(name: 'con_lname')
  final String conLname;
  @override
  @JsonKey(name: 'con_fname')
  final String conFname;
  @override
  @JsonKey(name: 'con_mname')
  final String conMname;
  @override
  @JsonKey(name: 'con_dob')
  final String conDob;
  @override
  @JsonKey(name: 'con_sex')
  final String conSex;
  @override
  @JsonKey(name: 'con_contact')
  final String conContact;
  @override
  @JsonKey(name: 'civil_status')
  final String civilStatus;

  /// Create a copy of FamilyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FamilyModelCopyWith<_FamilyModel> get copyWith =>
      __$FamilyModelCopyWithImpl<_FamilyModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FamilyModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FamilyModel &&
            (identical(other.sitioName, sitioName) ||
                other.sitioName == sitioName) &&
            (identical(other.conHouseholdNumber, conHouseholdNumber) ||
                other.conHouseholdNumber == conHouseholdNumber) &&
            (identical(other.conFamilyId, conFamilyId) ||
                other.conFamilyId == conFamilyId) &&
            (identical(other.indivId, indivId) || other.indivId == indivId) &&
            (identical(other.conLname, conLname) ||
                other.conLname == conLname) &&
            (identical(other.conFname, conFname) ||
                other.conFname == conFname) &&
            (identical(other.conMname, conMname) ||
                other.conMname == conMname) &&
            (identical(other.conDob, conDob) || other.conDob == conDob) &&
            (identical(other.conSex, conSex) || other.conSex == conSex) &&
            (identical(other.conContact, conContact) ||
                other.conContact == conContact) &&
            (identical(other.civilStatus, civilStatus) ||
                other.civilStatus == civilStatus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      sitioName,
      conHouseholdNumber,
      conFamilyId,
      indivId,
      conLname,
      conFname,
      conMname,
      conDob,
      conSex,
      conContact,
      civilStatus);

  @override
  String toString() {
    return 'FamilyModel(sitioName: $sitioName, conHouseholdNumber: $conHouseholdNumber, conFamilyId: $conFamilyId, indivId: $indivId, conLname: $conLname, conFname: $conFname, conMname: $conMname, conDob: $conDob, conSex: $conSex, conContact: $conContact, civilStatus: $civilStatus)';
  }
}

/// @nodoc
abstract mixin class _$FamilyModelCopyWith<$Res>
    implements $FamilyModelCopyWith<$Res> {
  factory _$FamilyModelCopyWith(
          _FamilyModel value, $Res Function(_FamilyModel) _then) =
      __$FamilyModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sitio_name') String sitioName,
      @JsonKey(name: 'con_household_number') String conHouseholdNumber,
      @JsonKey(name: 'con_family_id') String conFamilyId,
      @JsonKey(name: 'indiv_id') String indivId,
      @JsonKey(name: 'con_lname') String conLname,
      @JsonKey(name: 'con_fname') String conFname,
      @JsonKey(name: 'con_mname') String conMname,
      @JsonKey(name: 'con_dob') String conDob,
      @JsonKey(name: 'con_sex') String conSex,
      @JsonKey(name: 'con_contact') String conContact,
      @JsonKey(name: 'civil_status') String civilStatus});
}

/// @nodoc
class __$FamilyModelCopyWithImpl<$Res> implements _$FamilyModelCopyWith<$Res> {
  __$FamilyModelCopyWithImpl(this._self, this._then);

  final _FamilyModel _self;
  final $Res Function(_FamilyModel) _then;

  /// Create a copy of FamilyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? sitioName = null,
    Object? conHouseholdNumber = null,
    Object? conFamilyId = null,
    Object? indivId = null,
    Object? conLname = null,
    Object? conFname = null,
    Object? conMname = null,
    Object? conDob = null,
    Object? conSex = null,
    Object? conContact = null,
    Object? civilStatus = null,
  }) {
    return _then(_FamilyModel(
      sitioName: null == sitioName
          ? _self.sitioName
          : sitioName // ignore: cast_nullable_to_non_nullable
              as String,
      conHouseholdNumber: null == conHouseholdNumber
          ? _self.conHouseholdNumber
          : conHouseholdNumber // ignore: cast_nullable_to_non_nullable
              as String,
      conFamilyId: null == conFamilyId
          ? _self.conFamilyId
          : conFamilyId // ignore: cast_nullable_to_non_nullable
              as String,
      indivId: null == indivId
          ? _self.indivId
          : indivId // ignore: cast_nullable_to_non_nullable
              as String,
      conLname: null == conLname
          ? _self.conLname
          : conLname // ignore: cast_nullable_to_non_nullable
              as String,
      conFname: null == conFname
          ? _self.conFname
          : conFname // ignore: cast_nullable_to_non_nullable
              as String,
      conMname: null == conMname
          ? _self.conMname
          : conMname // ignore: cast_nullable_to_non_nullable
              as String,
      conDob: null == conDob
          ? _self.conDob
          : conDob // ignore: cast_nullable_to_non_nullable
              as String,
      conSex: null == conSex
          ? _self.conSex
          : conSex // ignore: cast_nullable_to_non_nullable
              as String,
      conContact: null == conContact
          ? _self.conContact
          : conContact // ignore: cast_nullable_to_non_nullable
              as String,
      civilStatus: null == civilStatus
          ? _self.civilStatus
          : civilStatus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
