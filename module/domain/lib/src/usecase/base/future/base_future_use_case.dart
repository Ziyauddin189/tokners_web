import 'package:data/data.dart';
import 'package:domain/src/usecase/base/base_use_case.dart';
import 'package:domain/src/usecase/base/io/base_input.dart';
import 'package:shared/shared.dart';

abstract class BaseFutureUseCase<Input extends BaseInput, Output>
    extends BaseUseCase<Input, Future<Output>> {
  const BaseFutureUseCase();

  Future<Output> execute(Input input) async {
    try {
      if (LogConfig.enableLogUseCaseInput) {
        AppLogger().log('FutureUseCase Input: $input');
      }
      final output = await buildUseCase(input);
      if (LogConfig.enableLogUseCaseOutput) {
        AppLogger().log('FutureUseCase Output: $output');
      }

      return output;
    } on Exception catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        AppLogger().log('FutureUseCase Error: $e', level: LogLevel.error);
      }

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
