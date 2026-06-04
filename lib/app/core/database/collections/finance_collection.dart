import 'package:agroly/app/core/database/collections/transaction_collection.dart';
import 'package:isar_community/isar.dart';
import 'manager_collection.dart';
part 'finance_collection.g.dart';

@collection
class FinanceCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late double balance;

  @enumerated
  late Currency currency;

  @Index(unique: true)
  late String managerId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final manager = IsarLink<ManagerCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
