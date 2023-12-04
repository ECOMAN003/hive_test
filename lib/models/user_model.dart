import 'package:hive/hive.dart';

class User {
  User(this.name, this.age, this.id);
  String name;
  int age;
  int id;

  Box userdb = Hive.box('user');

  void createUser() async {
    await userdb.put('user', this);
  }

  void readUser() async {

  }

  void updateUser() async {}

  void deleteUser() async {}
}
