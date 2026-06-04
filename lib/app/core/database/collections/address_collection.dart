import 'package:isar_community/isar.dart';
part 'address_collection.g.dart';

@collection
class AddressCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  String? street;
  int? number;
  String? complement;
  String? neighborhood;
  late String city;
  late String state;
  late String country;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  bool isSynced = false;
  bool isPendingUpdate = false;
}
