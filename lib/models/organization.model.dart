import 'package:dart_json_mapper/dart_json_mapper.dart';
import 'package:xbt_app/core/model.dart';

@jsonSerializable
class OrganizationModel extends Model {
  int id;

  String name;

  String state;

  String parentOrganization;

  String dingTalkId;

  OrganizationModel(
      this.id, this.name, this.state, this.parentOrganization, this.dingTalkId);
}
