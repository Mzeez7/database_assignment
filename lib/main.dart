import 'package:angela_yu_practice/db.dart';
import 'package:angela_yu_practice/db_operations.dart';
import 'package:angela_yu_practice/my_homepage.dart';
import 'package:angela_yu_practice/my_login_page.dart';
import 'package:angela_yu_practice/user.dart';
import 'package:flutter/material.dart';

import 'my_app.dart';
import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

//the main function is the starting point for all our apps
//the material app is the basic start point for all apps
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
    final db = await database().initDB();

  // await DBOperations().insertUser(fido);
  var users = await DBOperations(db).getAllUsers();
  print(users);
  runApp(
    MaterialApp(
      home: users.isNotEmpty ? Myhomepage(title: '') : LoginScreen(title: ''),
    ),
  );
}
