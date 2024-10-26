// First create user_model.dart
import 'package:hive/hive.dart';


@HiveType(typeId: 0)
class User extends HiveObject {
  @HiveField(0)
  String username;

  @HiveField(1)
  String email;

  @HiveField(2)
  String password;

  User({
    required this.username,
    required this.email,
    required this.password,
  });
}