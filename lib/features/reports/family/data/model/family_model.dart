import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/family.dart';

part 'family_model.freezed.dart';
part 'family_model.g.dart';

@freezed
abstract class FamilyModel with _$FamilyModel {
  const factory FamilyModel({
    @JsonKey(name: 'sitio_name') required String sitioName,
    @JsonKey(name: 'con_household_number') required String conHouseholdNumber,
    @JsonKey(name: 'con_family_id') required String conFamilyId,
    @JsonKey(name: 'indiv_id') required String indivId,
    @JsonKey(name: 'con_lname') required String conLname,
    @JsonKey(name: 'con_fname') required String conFname,
    @JsonKey(name: 'con_mname') required String conMname,
    @JsonKey(name: 'con_dob') required String conDob,
    @JsonKey(name: 'con_sex') required String conSex,
    @JsonKey(name: 'con_contact') required String conContact,
    @JsonKey(name: 'civil_status') required String civilStatus, 
  }) = _FamilyModel;

  factory FamilyModel.fromJson(Map<String, dynamic> json) =>
      _$FamilyModelFromJson(json);
}

extension FamilyModelX on FamilyModel {
  // Convert Model → Domain Entity
  Family toEntity() => Family(
        sitioName: sitioName,
        conHouseholdNumber: conHouseholdNumber,
        conFamilyId: conFamilyId,
        indivId: indivId,
        conLname: conLname,
        conFname: conFname,
        conMname: conMname,
        conDob: conDob,
        conSex: conSex,
        conContact: conContact,
        civilStatus: civilStatus,
   
      );
}
