import 'package:isar_community/isar.dart';
part 'crop_collection.g.dart';

@collection
class CropCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  @Index()
  late String name;
  String? variety;
  String? photo;
  late int daysToHarvest;
  String? observation;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  bool isSynced = false;
  bool isPendingUpdate = false;
}
