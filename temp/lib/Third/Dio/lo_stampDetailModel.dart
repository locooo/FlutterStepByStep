import 'package:json_annotation/json_annotation.dart';
// 2.user.g.dart 将在我们运行生成命令后json_serializable帮我们自动生成.g.dart文件，在未执行命令前该行可能会报错
part 'lo_stampDetailModel.g.dart';

// part 'lo_stampDetailModel.g.dart';
@JsonSerializable()
class LOStampDetailModel {
  String name;
  List<ColumList> columList;
  Use_result_imgs use_result_imgs;
  //显式关联JSON字段名与Model属性的对应关系,
  // 如下将属性registerDate和register_date字段关联
  // @JsonKey(name: "register_date")
  // String registerDate;

  LOStampDetailModel(this.name, this.columList, this.use_result_imgs);
  // 5.必须有的对应工厂构造器
  factory LOStampDetailModel.fromJson(Map<String, dynamic> json) =>
      _$LOStampDetailModelFromJson(json);
  Map<String, dynamic> toJson() => _$LOStampDetailModelToJson(this);
}

@JsonSerializable()
class ColumList {
  String column_key;
  String column_name;
  String column_value;
  ColumList(this.column_key, this.column_name, this.column_value);
  factory ColumList.fromJson(Map<String, dynamic> json) =>
      _$ColumListFromJson(json);
  Map<String, dynamic> toJson() => _$ColumListToJson(this);
}

@JsonSerializable()
class Use_result_imgs {
  List<Imgs> imgs;
  String address;
  String createTime;
  Use_result_imgs(this.imgs, this.address, this.createTime);
  factory Use_result_imgs.fromJson(Map<String, dynamic> json) =>
      _$Use_result_imgsFromJson(json);
  Map<String, dynamic> toJson() => _$Use_result_imgsToJson(this);
}

@JsonSerializable()
class Imgs {
  String path;
  String fileName;
  String path_thumbnail;
  String seal_id;
  int fileLength;
  Imgs(this.path, this.fileName, this.path_thumbnail, this.seal_id,
      this.fileLength);
  factory Imgs.fromJson(Map<String, dynamic> json) => _$ImgsFromJson(json);
  Map<String, dynamic> toJson() => _$ImgsToJson(this);
}
