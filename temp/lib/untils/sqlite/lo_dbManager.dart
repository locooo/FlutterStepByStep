import 'dart:async';
import 'package:synchronized/synchronized.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class LONeedCreatSQ {
  //添加表格
  static String fatherModelTable = "fatherModel";
  static String fatherModelSQ =
      '''CREATE TABLE IF NOT EXISTS $fatherModelTable (
    stringValue TEXT PRIMARY KEY, 
    intValue INTEGER,
    boolValue INTEGER,
    doubleValue REAL)
    ''';

  //添加表格
  static String childModelTable = "childModel";
  static String childModelSQ = '''CREATE TABLE IF NOT EXISTS $childModelTable (
    childString TEXT, 
    childInt INTEGER)
    ''';
}

class LOSqliteManager {
  //数据库名称
  static const _DB_NAME = "MyDataBase.db";
  //数据版本号
  static const _DB_VERSION = 1;

  static LOSqliteManager _singleton;
  static Lock _lock = Lock();
  static Database _database;

  static Future<LOSqliteManager> getInstance() async {
    if (_singleton == null) {
      await _lock.synchronized(() async {
        if (_singleton == null) {
          // keep local instance till it is fully initialized.
          // 保持本地实例直到完全初始化。
          var singleton = LOSqliteManager._();
          await singleton._init();
          _singleton = singleton;
        }
      });
    }
    return _singleton;
  }

  LOSqliteManager._();

  Future _init() async {
    _database = await initDatabase();
  }

  Future<Database> get database async {
    if (_database == null) {
      await _lock.synchronized(
        () async {
          // Check again once entering the synchronized block
          if (_database == null) {
            _database = await initDatabase();
          }
        },
      );
    }
    return _database;
  }

  Future initDatabase() async {
    String dataBasesPath = await getDatabasesPath();
    String path = join(dataBasesPath, _DB_NAME);
    print(path);
    return await openDatabase(
      path,
      version: _DB_VERSION,
      onOpen: (Database db) async {
        _onOpen(db);
      },
      onCreate: (Database db, int version) async {
        _onCreatDB(db, version);
      },
      onUpgrade: (Database db, int oldVersion, int newVersion) async {
        // 数据库升级
        _onUpgradeDB(db, oldVersion, newVersion);
      },
    );
  }

  //打开数据库后
  void _onOpen(Database db) {}

  ///表格初始化
  void _onCreatDB(Database db, int version) async {
    Batch batch = db.batch();
    batch.execute(LONeedCreatSQ.fatherModelSQ);
    batch.execute(LONeedCreatSQ.childModelSQ);
    batch.commit();
  }

  ///数据库升级
  void _onUpgradeDB(Database db, int oldVersion, int newVersion) async {
    Batch batch = db.batch();
    if (oldVersion == 1) {
      // batch.execute('alter table ta_person add fire text');
    } else if (oldVersion == 2) {
      // batch.execute('alter table ta_person add water text');
    } else if (oldVersion == 3) {}
    oldVersion++;
    //升级后版本还低于当前版本，继续递归升级
    if (oldVersion < newVersion) {
      _onUpgradeDB(db, oldVersion, newVersion);
    }
    await batch.commit();
  }

  //关闭数据库
  close() async {
    await _database.close();
    _database = null;
  }

  //删除数据库
  static deleteDataBase() async {
    String dataBasesPath = await getDatabasesPath();
    String path = join(dataBasesPath, _DB_NAME);
    await deleteDatabase(path);
  }

  //清空表格
  static clearTable(String table) async {
    await _database.execute('DELETE FROM $table');
  }

  //删除表格
  static deleteTable(String table) async {
    await _database.execute('DROP table $table');
  }

  //重命名表格
  static renameTable(String oldTable, String newTable) async {
    await _database.execute('ALTER TABLE $oldTable RENAME TO $newTable');
  }

  //添加表格字段
  static addFieldToTable(String filed, String filedKind, String table) async {
    await _database.execute('ALTER TABLE $table ADD $filed $filedKind');
  }

  //删除表格字段
  static deleteFieldInTable(String filed, String table) async {
    await _database.execute('ALTER TABLE $table DROP COLUMN $filed');
  }

  //修改表格字段类型
  static renameKindInTable(String filed, String newKind, String table) async {
    await _database.execute('ALTER TABLE $table ALTER COLUMN $filed $newKind');
  }

  //插入数据
  static Future<int> insert(String table, Map<String, dynamic> values,
      {String nullColumnHack, ConflictAlgorithm conflictAlgorithm}) async {
    return await _database.insert(table, values,
        nullColumnHack: nullColumnHack, conflictAlgorithm: conflictAlgorithm);
  }

  //插入数据2
  static Future<int> rawInsert(String sql, [List<dynamic> arguments]) async {
    return await _database.rawInsert(
        'INSERT INTO tableName(name, value, num) VALUES("Civet", 18, 456.7)');
  }

  //删除数据
  static Future<int> delete(String table,
      {String where, List<dynamic> whereArgs}) async {
    return await _database.delete(table, where: where, whereArgs: whereArgs);
  }

  //删除数据2
  static Future<int> rawdelete(String sql, [List<dynamic> arguments]) async {
    return await _database.rawDelete(sql, arguments);
  }

  //更新数据
  static Future<int> update(String table, Map<String, dynamic> values,
      {String where,
      List<dynamic> whereArgs,
      ConflictAlgorithm conflictAlgorithm}) async {
    return await _database.update(table, values,
        where: where,
        whereArgs: whereArgs,
        conflictAlgorithm: conflictAlgorithm);
  }

  //更新数据2
  static Future<int> rawUpdate(String sql, [List<dynamic> arguments]) async {
    return await _database.rawUpdate(sql, arguments);
  }

  //查数据
  static Future<List<Map<String, dynamic>>> query(String table,
      {bool distinct,
      List<String> columns,
      String where,
      List<dynamic> whereArgs,
      String groupBy,
      String having,
      String orderBy,
      int limit,
      int offset}) async {
    return await _database.query(table,
        distinct: distinct,
        columns: columns,
        where: where,
        whereArgs: whereArgs,
        groupBy: groupBy,
        having: having,
        orderBy: orderBy,
        limit: limit,
        offset: offset);
  }

  //查数据2
  static Future<List<Map<String, dynamic>>> rawQuery(String sql,
      [List<dynamic> arguments]) async {
    return await _database.rawQuery(sql, arguments);
  }

  // Future<String> generateSQ(String table,
  //     {String primaryKey, List<dynamic> args}) async {
  //   var singleSQ = '';
  //   if ((await instance.isTableExit(table)) == false) {
  //     if (primaryKey != null) {
  //       String primaryKeyKind = '';
  //       if (primaryKey is String) {
  //         primaryKeyKind = 'TEXT';
  //       }
  //       var primaryKey = '(${primaryKey} INTEGER PRIMARY KEY';
  //     }

  //     // singleSQ = ''

  //   }
  //   return singleSQ;
  //   return 'CREATE TABLE test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)';
  // }

}

/*

Insert
int id = await database.insert(‘test’, {'name': 'Civet', 'value': '18', 'num': '456.7'});
int id = await database.rawInsert('INSERT INTO test(name, value, num) VALUES("Civet", 18, 456.7)');

Delete
返回值需要注意下：Returns the number of changes made（返回受影响的的数量，即删除的条目数量）。另外，如果没where语句，会清空表格，要特别小心。
int count = await database.delete('test', where: 'name = ?', whereArgs: ['Civet']);
int count = await database.rawDelete('DELETE FROM test WHERE name = ?', ['Civet']);

Update
返回值需要注意下：Returns the number of changes made（返回受影响的的数量）.
int count = await database.update(
  'test', 
  {'name': 'Home', 'value': '20'}
  where: 'name = ?', 
  whereArgs: ['Civet']
);

int count = await database.rawUpdate('UPDATE test SET name = ?, value = ? WHERE name = ?', ['Home', 20, 'Civet']);
*/