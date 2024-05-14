import 'package:data/data.dart';
import 'package:domain/src/model/config_record.dart';

abstract class ConfigRepository {

  Future<DataResponse<ConfigRecord>> getConfig();

}