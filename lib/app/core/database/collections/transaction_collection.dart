import 'package:isar_community/isar.dart';
import 'manager_collection.dart';
import 'season_collection.dart';
part 'transaction_collection.g.dart';

enum TransactionType { income, expense }

enum Currency { brl, mumbuca, dolar, euro }

@collection
class TransactionCollection {
  Id id = Isar.autoIncrement;

  @Index(unique: true, replace: true)
  String? uuid;

  late String description;

  // O Isar não possui tipo nativo Decimal do Postgresql.
  // Para aplicações Offline-First de alta precisão financeira, salvamos como double ou int (em centavos).
  late double amount;

  @enumerated
  late TransactionType type;

  @enumerated
  late Currency currency;

  late DateTime date;
  String? category;

  @Index()
  late String managerId;
  @Index()
  String? seasonId;

  late DateTime createdAt;
  late DateTime updatedAt;
  DateTime? deletedAt;

  final manager = IsarLink<ManagerCollection>();
  final season = IsarLink<SeasonCollection>();

  bool isSynced = false;
  bool isPendingUpdate = false;
}
