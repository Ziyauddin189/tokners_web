import 'package:data/src/common/enum/enumerations.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class UserManager {
  late Box _box;

  Future init() async {
    _box = await Hive.openBox(HiveKey.ACT_USER_BOX.name);
  }

  bool isLogin() {
    String token = _box.get(HiveKey.TOKEN.name, defaultValue: '');
    return token.isNotEmpty == true;
  }

  Future logout() async {
    await _box.clear();
  }

  Future saveToken(String token) async {
    await _box.put(HiveKey.TOKEN.name, token);
  }

  String getToken() {
    return _box.get(HiveKey.TOKEN.name, defaultValue: '');
  }

  Future saveUserId(String id) async {
    await _box.put(HiveKey.ID.name, id);
  }

  String getUserId() {
    return _box.get(HiveKey.ID.name, defaultValue: '');
  }
}
