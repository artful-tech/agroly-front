import 'package:isar_community/isar.dart';
import 'farm_collection.dart';
part 'inventory_item_collection.g.dart';

@collection
class InventoryItemCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late String name;
  String? category;
  late double quantity;
  late String unit;
  late double minStock;

  @Index()
  late String farmId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final farm = IsarLink<FarmCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
