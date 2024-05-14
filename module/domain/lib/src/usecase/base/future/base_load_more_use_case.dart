import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

abstract class BaseLoadMoreUseCase<Input extends BaseInput, Output extends BaseOutput>
extends BaseUseCase<Input, Future<PagedList<Output>>> {
  BaseLoadMoreUseCase({
    this.initPage = PagingConstants.initialPage,
    this.initOffset = 0,
  })  : _output = LoadMoreOutput<Output>(data: <Output>[], page: initPage, offset: initOffset),
        _oldOutput = LoadMoreOutput<Output>(data: <Output>[], page: initPage, offset: initOffset);

  final int initPage;
  final int initOffset;

  LoadMoreOutput<Output> _output;
  LoadMoreOutput<Output> _oldOutput;

  int get page => _output.page;
  int get offset => _output.offset;

  Future<LoadMoreOutput<Output>> execute(Input input, bool isInitialLoad) async {
    try {
      if (isInitialLoad) {
        _output = LoadMoreOutput<Output>(data: <Output>[], page: initPage, offset: initOffset);
      }
      if (LogConfig.enableLogUseCaseInput) {
        AppLogger().log(
          'LoadMoreUseCase Input: $input, page: $page, offset: $offset',
        );
      }
      final pagedList = await buildUseCase(input);

      final newOutput = _oldOutput.copyWith(
        data: pagedList.data,
        otherData: pagedList.otherData,
        page: isInitialLoad
            ? initPage + (pagedList.data.isNotEmpty ? 1 : 0)
            : _oldOutput.page + (pagedList.data.isNotEmpty ? 1 : 0),
        offset: isInitialLoad
            ? (initOffset + pagedList.data.length)
            : _oldOutput.offset + pagedList.data.length,
        isLastPage: pagedList.isLastPage,
        isRefreshSuccess: isInitialLoad,
      );

      _output = newOutput;
      _oldOutput = newOutput;
      if (LogConfig.enableLogUseCaseOutput) {
        AppLogger().log(
          'LoadMoreUseCase Output: pagedList: $pagedList, inputPage: $page, inputOffset: $offset, newOutput: $newOutput',
        );
      }

      return newOutput;
    }  on Exception catch (e) {
      if (LogConfig.enableLogUseCaseError) {
        AppLogger().log('FutureUseCase Error: $e');
      }
      _output = _oldOutput;

      throw e is AppException ? e : AppUncaughtException(e);
    }
  }
}
