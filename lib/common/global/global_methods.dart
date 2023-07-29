import 'package:game_it_out_v2/common/exports/exports.dart';
import 'package:game_it_out_v2/common/service/storage_service.dart';

class GBM {
  GBM._();

  static pushNamed({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static pushAndReplaceNamed({
    required BuildContext context,
    required String routeName,
    Object? arguments,
  }) {
    Navigator.of(context).pushReplacementNamed(routeName, arguments: arguments);
  }

  static pop({required BuildContext context}) {
    Navigator.of(context).pop();
  }

  static late StorageService storageService;
  static Future init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    storageService = await StorageService().init();
  }
}
