import 'package:remote/src/enum/remote_enum.dart';
import 'package:data/src/mapper/base/base_data_mapper.dart';
import 'package:data/src/mapper/base_error_mapper/json_array_error_response_mapper.dart';
import 'package:data/src/mapper/base_error_mapper/json_object_error_response_mapper.dart';
import 'package:data/src/mapper/base_error_mapper/line_error_response_mapper.dart';
import 'package:shared/shared.dart';


abstract class BaseErrorResponseMapper<T> extends BaseDataMapper<T, ServerError> {
  const BaseErrorResponseMapper();

  factory BaseErrorResponseMapper.fromType(ErrorResponseMapperType type) {
    switch (type) {
      case ErrorResponseMapperType.jsonObject:
        return JsonObjectErrorResponseMapper() as BaseErrorResponseMapper<T>;
      case ErrorResponseMapperType.jsonArray:
        return JsonArrayErrorResponseMapper() as BaseErrorResponseMapper<T>;
      case ErrorResponseMapperType.line:
        return LineErrorResponseMapper() as BaseErrorResponseMapper<T>;
    }
  }
}
