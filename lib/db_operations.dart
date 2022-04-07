import 'package:angela_yu_practice/db.dart';
import 'package:angela_yu_practice/user.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBOperations {
  final _database;

  DBOperations(this._database);

  Future<void> insertUser(user user) async {
    // Get a reference to the database.

    // Insert the Dog into the correct table. You might also specify the
    // `conflictAlgorithm` to use in case the same dog is inserted twice.
    //
    // In this case, replace any previous data.
    await _database.insert(
      'users',
      user.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<user>> getAllUsers() async {
    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await _database.query('users');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return user(
        email: maps[i]['email'],
        password: maps[i]['password'],
      );
    });
  }
}
