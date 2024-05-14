import 'package:data/src/common/enum/enumerations.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class AppManager {
  late Box _box;

  Future init() async {
    _box = await Hive.openBox(HiveKey.ACT_BOX.name);
  }

  bool isDarkMode() {
    String token = _box.get(HiveKey.IS_DARK_MODE.name, defaultValue: false);
    return token.isNotEmpty == true;
  }

  Future setDarkMode(bool id) async {
    await _box.put(HiveKey.IS_DARK_MODE.name, id);
  }

  Future clear() async {
    await _box.clear();
  }
}
