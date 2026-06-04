import 'package:isar_community/isar.dart';
import 'user_collection.dart';
part 'people_collection.g.dart';

enum Role { admin, manager, worker, owner }

@collection
class PeopleCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late String name;
  String? cellphone;

  @enumerated
  late Role role;

  String? photo;

  @Index(unique: true)
  late String userId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  // Relacionamento 1:1 Inverso
  final user = IsarLink<UserCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
