import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:quickstart_flutter/core/model.dart';

@jsonSerializable
class UserModel extends Model {
  String id;

  String username;

  String gender;

  String birthday;

  String introduction;

  String lastLoginTime;

  String lastLoginIp;

  String nickname;

  String mobile;

  String avatar;

  String shortKey;

  UserModel(
    this.id,
    this.username,
    this.gender,
    this.birthday,
    this.introduction,
    this.lastLoginTime,
    this.lastLoginIp,
    this.nickname,
    this.mobile,
    this.avatar,
    this.shortKey,
  );
}
