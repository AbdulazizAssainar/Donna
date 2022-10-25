// ignore_for_file: depend_on_referenced_packages, file_names, prefer_const_declarations

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model/main.dart';

class MainsDatabase {
  static final MainsDatabase instance = MainsDatabase._init();

  static Database? _database;

  MainsDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;

    _database = await _initDB('mains.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);

    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  Future _createDB(Database db, int version) async {
    final idType = 'INTEGER PRIMARY KEY AUTOINCREMENT';
    final textType = 'TEXT NOT NULL';
    final boolType = 'BOOLEAN NOT NULL';
    final integerType = 'INTEGER NOT NULL';

    await db.execute('''
CREATE TABLE $tableMains ( 
  ${MainFields.id} $idType, 
  ${MainFields.isImportant} $boolType,
  ${MainFields.number} $integerType,
  ${MainFields.title} $textType,
  ${MainFields.description} $textType,
  ${MainFields.time} $textType
  )
''');
  }

  Future<Main> create(Main main) async {
    final db = await instance.database;

    // final json = main.toJson();
    // final columns =
    //     '${MainFields.title}, ${MainFields.description}, ${MainFields.time}';
    // final values =
    //     '${json[MainFields.title]}, ${json[MainFields.description]}, ${json[MainFields.time]}';
    // final id = await db
    //     .rawInsert('INSERT INTO table_name ($columns) VALUES ($values)');

    final id = await db.insert(tableMains, main.toJson());
    return main.copy(id: id);
  }

  Future<Main> readMain(int id) async {
    final db = await instance.database;

    final maps = await db.query(
      tableMains,
      columns: MainFields.values,
      where: '${MainFields.id} = ?',
      whereArgs: [id],
    );

    if (maps.isNotEmpty) {
      return Main.fromJson(maps.first);
    } else {
      throw Exception('ID $id not found');
    }
  }

  Future<List<Main>> readAllMains() async {
    final db = await instance.database;

    final orderBy = '${MainFields.time} ASC';
    // final result =
    //     await db.rawQuery('SELECT * FROM $tableMains ORDER BY $orderBy');

    final result = await db.query(tableMains, orderBy: orderBy);

    return result.map((json) => Main.fromJson(json)).toList();
  }

  Future<int> update(Main main) async {
    final db = await instance.database;

    return db.update(
      tableMains,
      main.toJson(),
      where: '${MainFields.id} = ?',
      whereArgs: [main.id],
    );
  }

  Future<int> delete(int id) async {
    final db = await instance.database;

    return await db.delete(
      tableMains,
      where: '${MainFields.id} = ?',
      whereArgs: [id],
    );
  }

  Future close() async {
    final db = await instance.database;

    db.close();
  }
}
