import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:open_weather/bloc/location/location_bloc.dart';
import 'package:open_weather/data/datasource/remote/location_remote_data_source.dart';
import 'package:open_weather/data/datasource/remote/weather_remote_data_source.dart';
import 'package:open_weather/data/repositories/location_repository_impl.dart';
import 'package:open_weather/data/repositories/weather_repository_impl.dart';
import 'package:open_weather/domain/repositories/location_repository.dart';
import 'package:open_weather/domain/repositories/weather_repository.dart';
import 'package:open_weather/domain/usecases/get_general_weather_usecase.dart';
import 'package:open_weather/domain/usecases/get_position_location.dart';

final getIt = GetIt.instance;

void init() {
  // bloc
  getIt.registerFactory(() => LocationBloc(getIt()));

  // usecase
  getIt.registerLazySingleton(() => GetGeneralWeatherUsecase(getIt()));
  getIt.registerLazySingleton(() => GetPositionLocationUsecase(getIt()));

  // repository
  getIt.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(getIt()));
  getIt.registerLazySingleton<LocationRepository>(() => LocationRepositoryImpl(getIt()));

  // data source
  getIt.registerLazySingleton<WeatherRemoteDataSource>(() => WeatherRemoteDataSourceImpl(getIt()));
  getIt.registerLazySingleton<LocationRemoteDataSource>(() => LocationRemoteDataSourceImpl(getIt()));

  getIt.registerLazySingleton(() => Dio());
}
