import 'package:game_it_out_v2/common/exports/exports.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getAppBody(),
    );
  }

  StatefulWidget getAppBody() {
    var isLoggedIn = GBM.storageService.getDeviceFirstOpen() == true &&
        GBM.storageService.getIsLoggedIn() == true;
    var isNotNewUserAndIsNotLoggedIn =
        GBM.storageService.getDeviceFirstOpen() == true &&
            GBM.storageService.getIsLoggedIn() == false;
    var isNewUser = GBM.storageService.getDeviceFirstOpen() == false &&
        GBM.storageService.getIsLoggedIn() == false;

    if (isLoggedIn) {
      return const MainPage();
    } else if (isNotNewUserAndIsNotLoggedIn) {
      return const LoginPage();
    } else if (isNewUser) {
      return const OnBoardingPage();
    }
    return const Scaffold();
  }
}
