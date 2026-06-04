import 'package:isar_community/isar.dart';
import 'address_collection.dart';
import 'people_collection.dart';
part 'farm_collection.g.dart';

@collection
class FarmCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late String name;
  late double totalArea;
  late String unity;
  String? resume;
  String? photo;
  String? observation;

  @Index(unique: true)
  late String addressId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final address = IsarLink<AddressCollection>();

  // Tabela pivot N:M implicitamente mapeada por IsarLinks
  final peoples = IsarLinks<PeopleCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
