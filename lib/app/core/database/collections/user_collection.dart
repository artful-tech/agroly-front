import 'package:isar_community/isar.dart';
part 'user_collection.g.dart';

@collection
class UserCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid; // String UUID mapeada com o Prisma remoto

  @Index(unique: true)
  late String email;

  late String password;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  // Controle Offline-First
  @Index()
  bool isSynced = false;
  bool isPendingUpdate = false;
}
