import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:temp/untils/sqlite/lo_dbManager.dart';

class LOSqflitePage extends StatefulWidget {
  LOSqflitePage({Key key}) : super(key: key);

  @override
  _LOSqflitePageState createState() => _LOSqflitePageState();
}

class _LOSqflitePageState extends State<LOSqflitePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sqflite"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Column(
              children: [
                TextButton(
                  child: Text("添加一个Father"),
                  onPressed: () {
                    var father = {
                      "stringValue": 'father',
                      "intValue": 1,
                      "boolValue": 1,
                      "doubleValue": 1.25
                    };
                    LOSqliteManager.insert(
                        LONeedCreatSQ.fatherModelTable, father);
                  },
                ),
                TextButton(
                  child: Text("查找并修改Father"),
                  onPressed: () async {
                    await LOSqliteManager.rawUpdate(
                        'UPDATE ${LONeedCreatSQ.fatherModelTable} SET doubleValue = ?, boolValue = ? WHERE doubleValue = ?',
                        [Random().nextDouble() * 10000, 0, 1.25]);

                    List<Map> list = await LOSqliteManager.rawQuery(
                        'SELECT * FROM ${LONeedCreatSQ.fatherModelTable}');
                    print(list);
                  },
                ),
                TextButton(
                  child: Text("清空Father表"),
                  onPressed: () {
                    LOSqliteManager.clearTable(LONeedCreatSQ.fatherModelTable);
                  },
                ),
                TextButton(
                  child: Text("添加一个Child"),
                  onPressed: () {
                    var child = {
                      "childString": 'child',
                      "childInt": 1,
                    };
                    LOSqliteManager.insert(
                        LONeedCreatSQ.childModelTable, child);
                  },
                ),
                TextButton(
                  child: Text("清空Child表"),
                  onPressed: () {
                    LOSqliteManager.clearTable(LONeedCreatSQ.childModelTable);
                  },
                ),
                TextButton(
                  child: Text("查找Child"),
                  onPressed: () async {
                    List<Map> list = await LOSqliteManager.rawQuery(
                        'SELECT * FROM ${LONeedCreatSQ.childModelTable}');
                    print(list);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
