import 'package:dart_json_mapper/dart_json_mapper.dart';

class Model {
  static T fromJson<T>(data) {
    return JsonMapper.deserialize<T>(data);
  }

  String toJson() {
    return JsonMapper.serialize(this);
  }
}
