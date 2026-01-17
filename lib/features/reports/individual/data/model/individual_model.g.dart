// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'individual_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_IndividualModel _$IndividualModelFromJson(Map<String, dynamic> json) =>
    _IndividualModel(
      sitioName: json['sitio_name'] as String,
      conHouseholdNumber: json['con_household_number'] as String,
      conFamilyId: json['con_family_id'] as String,
      indivId: json['indiv_id'] as String,
      conLname: json['con_lname'] as String,
      conFname: json['con_fname'] as String,
      conMname: json['con_mname'] as String,
      conDob: json['con_dob'] as String,
      conSex: json['con_sex'] as String,
      conContact: json['con_contact'] as String,
      civilStatus: json['civil_status'] as String,
    );

Map<String, dynamic> _$IndividualModelToJson(_IndividualModel instance) =>
    <String, dynamic>{
      'sitio_name': instance.sitioName,
      'con_household_number': instance.conHouseholdNumber,
      'con_family_id': instance.conFamilyId,
      'indiv_id': instance.indivId,
      'con_lname': instance.conLname,
      'con_fname': instance.conFname,
      'con_mname': instance.conMname,
      'con_dob': instance.conDob,
      'con_sex': instance.conSex,
      'con_contact': instance.conContact,
      'civil_status': instance.civilStatus,
    };
