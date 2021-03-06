import 'controllers/words_controller.dart';
import 'dart_api.dart';

class DartApiChannel extends ApplicationChannel {
  ManagedContext context;

  @override
  Future prepare() async {
    logger.onRecord.listen(
<<<<<<< HEAD
            (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
=======
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));

    final dataModel = ManagedDataModel.fromCurrentMirrorSystem();

    final config = WordConfig(options.configurationFilePath);

    final database = PostgreSQLPersistentStore.fromConnectionInfo(
      config.database.username,
      config.database.password,
      config.database.host,
      config.database.port,
      config.database.databaseName,
    );

    context = ManagedContext(dataModel, database);
>>>>>>> 028e411d5f8559abfc8eb465ca906130cc7fc34d
  }

  @override
  Controller get entryPoint {
    final router = Router();
    router.route("/words/[:id]").link(() => WordsController());
    return router;
  }
}

class WordConfig extends Configuration {
  WordConfig(String path) : super.fromFile(File(path));
  DatabaseConfiguration database;
}
