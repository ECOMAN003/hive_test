import 'dart:io';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

void main() async {
  //get directory using path provider,  and "Directory" is from dart:io
  Directory directory = await getApplicationDocumentsDirectory();
  //initialize Hive with the directory obtained above
  Hive.init(directory.path);
  //open a new box
  //boxes are like tables in sql
  await Hive.openBox('users');
}
