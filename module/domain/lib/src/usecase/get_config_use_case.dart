import 'package:data/data.dart';
import 'package:domain/src/model/config_record.dart';
import 'package:domain/src/repository/config_repository.dart';
import 'package:domain/src/usecase/base/future/base_future_use_case.dart';
import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'get_config_use_case.freezed.dart';

@Injectable()
class GetConfigUseCase extends BaseFutureUseCase<GetConfigInput, ConfigRecord> {
  final ConfigRepository _repository;

  const GetConfigUseCase(this._repository): super();

  @protected
  @override
  Future<ConfigRecord> buildUseCase(GetConfigInput input) async {
    DataResponse<ConfigRecord> record = await _repository.getConfig();
    AppLogger().log(record.data, name: 'DATA');
    return record.data ?? const ConfigRecord();
  }
}

@freezed
class GetConfigInput extends BaseInput with _$GetConfigInput {
  const factory GetConfigInput() = _GetConfigInput;
}
