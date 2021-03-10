class LOFatherModel {
  String stringValue;
  int intValue;
  bool boolValue;
  double doubleValue;
}
/*
NULL
某一列不存储数据的时候，默认值是NULL.
INTEGER
dart中的int类型，值的范围是-2^63 到 2^63 - 1
REAL
dart中的num类型，即int和double类型
TEXT
dart中的String类型
BLOB
dart中的Uint8List类型，虽然能够存储List< int >，但官方并不建议，因为转化比较慢
bool
存储INTEGER类型，0为false，1为true.


*/