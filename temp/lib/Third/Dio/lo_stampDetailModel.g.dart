// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lo_stampDetailModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LOStampDetailModel _$LOStampDetailModelFromJson(Map<String, dynamic> json) {
  return LOStampDetailModel(
    json['name'] as String,
    (json['columList'] as List)
        ?.map((e) =>
            e == null ? null : ColumList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['use_result_imgs'] == null
        ? null
        : Use_result_imgs.fromJson(
            json['use_result_imgs'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LOStampDetailModelToJson(LOStampDetailModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'columList': instance.columList,
      'use_result_imgs': instance.use_result_imgs,
    };

ColumList _$ColumListFromJson(Map<String, dynamic> json) {
  return ColumList(
    json['column_key'] as String,
    json['column_name'] as String,
    json['column_value'] as String,
  );
}

Map<String, dynamic> _$ColumListToJson(ColumList instance) => <String, dynamic>{
      'column_key': instance.column_key,
      'column_name': instance.column_name,
      'column_value': instance.column_value,
    };

// ignore: non_constant_identifier_names
Use_result_imgs _$Use_result_imgsFromJson(Map<String, dynamic> json) {
  return Use_result_imgs(
    (json['imgs'] as List)
        ?.map(
            (e) => e == null ? null : Imgs.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    json['address'] as String,
    json['createTime'] as String,
  );
}

// ignore: non_constant_identifier_names
Map<String, dynamic> _$Use_result_imgsToJson(Use_result_imgs instance) =>
    <String, dynamic>{
      'imgs': instance.imgs,
      'address': instance.address,
      'createTime': instance.createTime,
    };

Imgs _$ImgsFromJson(Map<String, dynamic> json) {
  return Imgs(
    json['path'] as String,
    json['fileName'] as String,
    json['path_thumbnail'] as String,
    json['seal_id'] as String,
    json['fileLength'] as int,
  );
}

Map<String, dynamic> _$ImgsToJson(Imgs instance) => <String, dynamic>{
      'path': instance.path,
      'fileName': instance.fileName,
      'path_thumbnail': instance.path_thumbnail,
      'seal_id': instance.seal_id,
      'fileLength': instance.fileLength,
    };
