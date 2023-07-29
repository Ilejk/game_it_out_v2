import 'package:game_it_out_v2/common/utils/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  late final SharedPreferences _prefs;
  Future<StorageService> init() async {
    _prefs = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setBool(String key, bool value) async {
    return await _prefs.setBool(key, value);
  }

  Future<bool> setString(String key, String value) async {
    return await _prefs.setString(key, value);
  }

  bool getDeviceFirstOpen() {
    return _prefs.getBool(AppConsts.STORAGE_DEVICE_OPEN_FIRST_TIME) ?? false;
  }

  bool getIsLoggedIn() {
    return _prefs.getString(AppConsts.STORAGE_USER_TOKEN_KEY) == null
        ? false
        : true;
  }

  Future<bool> remove(String key) {
    return _prefs.remove(key);
  }
}
