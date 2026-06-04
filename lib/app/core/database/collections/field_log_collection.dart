import 'package:isar_community/isar.dart';
import 'season_collection.dart';
part 'field_log_collection.g.dart';

enum LogCategory { weather, pest, emergency, observation }

@collection
class FieldLogCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late String description;

  @enumerated
  late LogCategory category;

  late DateTime date;

  @Index()
  late String seasonId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final season = IsarLink<SeasonCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
