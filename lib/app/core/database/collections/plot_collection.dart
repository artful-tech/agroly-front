import 'package:isar_community/isar.dart';
import 'farm_collection.dart';
part 'plot_collection.g.dart';

@collection
class PlotCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late String name;
  late double area;
  late String unity;
  String? soilType;
  String? photo;
  String? observation;

  @Index()
  late String farmId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final farm = IsarLink<FarmCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
