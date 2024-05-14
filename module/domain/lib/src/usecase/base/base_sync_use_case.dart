import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract class BaseSyncUseCase<Input extends BaseInput, Output extends BaseOutput>
    extends BaseUseCase<Input, Output> {
  const BaseSyncUseCase();

  Output execute(Input input) {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        AppLogger().log('SyncUseCase Input: $input');
      }
      final output = buildUseCase(input);
      if (LogConfig.enableLogUseCaseOutput) {
        AppLogger().log('SyncUseCase Output: $output');
      }

      return output;
    }  on Exception catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        AppLogger().log('SyncUseCase Error: $e', level: LogLevel.error);
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
