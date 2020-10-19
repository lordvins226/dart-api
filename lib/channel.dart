import 'controllers/words_controller.dart';
import 'dart_api.dart';

class DartApiChannel extends ApplicationChannel {
  @override
  Future prepare() async {
    logger.onRecord.listen(
        (rec) => print("$rec ${rec.error ?? ""} ${rec.stackTrace ?? ""}"));
  }

  @override
  Controller get entryPoint {
    final router = Router();

    router.route("/words/[:id]").link(() => WordsController());

    return router;
  }
}
