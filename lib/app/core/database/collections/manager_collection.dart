import 'package:isar_community/isar.dart';
import 'people_collection.dart';
part 'manager_collection.g.dart';

@collection
class ManagerCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  @Index(unique: true)
  late String peopleId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final people = IsarLink<PeopleCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
