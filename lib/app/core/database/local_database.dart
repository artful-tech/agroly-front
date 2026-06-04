import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';

// Importações dos esquemas que geraremos no próximo passo
import 'collections/user_collection.dart';
import 'collections/people_collection.dart';
import 'collections/manager_collection.dart';
import 'collections/address_collection.dart';
import 'collections/farm_collection.dart';
import 'collections/plot_collection.dart';
import 'collections/crop_collection.dart';
import 'collections/season_collection.dart';
import 'collections/field_log_collection.dart';
import 'collections/inventory_item_collection.dart';
import 'collections/transaction_collection.dart';
import 'collections/finance_collection.dart';

class LocalDatabase {
  static Isar? _instance;

  static Isar get instance {
    if (_instance == null) {
      throw StateError("Isar não foi inicializado. Chame initialize() no main.dart.");
    }
    return _instance!;
  }

  static Future<void> initialize() async {
    if (_instance != null) return;

    final dir = await getApplicationDocumentsDirectory();

    _instance = await Isar.open(
      [
        UserCollectionSchema,
        PeopleCollectionSchema,
        ManagerCollectionSchema,
        AddressCollectionSchema,
        FarmCollectionSchema,
        PlotCollectionSchema,
        CropCollectionSchema,
        SeasonCollectionSchema,
        FieldLogCollectionSchema,
        InventoryItemCollectionSchema,
        TransactionCollectionSchema,
        FinanceCollectionSchema,
      ],
      directory: dir.path,
      inspector: true, // Habilita o Isar Inspector para depuração em desenvolvimento
    );
  }

  static Future<void> close() async {
    await _instance?.close();
    _instance = null;
  }
}
