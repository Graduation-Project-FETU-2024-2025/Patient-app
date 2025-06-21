import 'package:get_it/get_it.dart';
import 'package:patient_app/core/database/api/api_consumer.dart';
import 'package:patient_app/core/database/api/dio_consumer.dart';
import 'package:patient_app/core/database/api/dio_factory.dart';
import 'package:patient_app/core/database/cache/cashe_helper.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());

  getIt.registerLazySingleton<ApiConsumer>(
    () => DioConsumer(
      dio: DioFactory.getDio(),
    ),
  );
}
