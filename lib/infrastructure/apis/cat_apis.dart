
import 'package:chopper/chopper.dart';

import '../core/built_value_converter.dart';
import '../core/interceptors.dart';

part 'cat_apis.chopper.dart';


@ChopperApi(baseUrl: '/facts')
abstract class GetCatService extends ChopperService {
  @Get(path: 'random?animal_type={animal_type}&amount={amount}')
  Future<Response<dynamic>> getCat(
      @Path('animal_type') String animalType,
      @Path('amount') int amount,
      );

  static GetCatService create() =>
      _$GetCatService(_Client('https://cat-fact.herokuapp.com', true));
}


class _Client extends ChopperClient {
  _Client(String baseUrl, bool useInterceptors)
      : super(
            baseUrl: baseUrl,
            interceptors: useInterceptors
                ? [
                    HttpLoggingInterceptor(),
                    CurlInterceptor(),
                    NetworkInterceptor(),
                    BackendInterceptor(),
                  ]
                : const [],
            converter: BuiltValueConverter(),
            errorConverter: ErrorMyConverter());
}