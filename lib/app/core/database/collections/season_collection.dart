import 'package:isar_community/isar.dart';
import 'plot_collection.dart';
import 'crop_collection.dart';
part 'season_collection.g.dart';

enum SeasonStatus { planted, growing, harvested, cancelled }

@collection
class SeasonCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  @enumerated
  late SeasonStatus status;

  late DateTime plantedAt;
  DateTime? harvestAt;
  String? photo;

  @Index()
  late String plotId;
  @Index()
  late String cropId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final plot = IsarLink<PlotCollection>();
  final crop = IsarLink<CropCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
