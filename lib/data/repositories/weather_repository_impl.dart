import 'package:open_weather/data/datasource/remote/weather_remote_data_source.dart';
import 'package:open_weather/domain/entities/general_weather.dart';
import 'package:open_weather/domain/repositories/weather_repository.dart';
import 'package:open_weather/domain/usecases/get_general_weather_usecase.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl(this.remoteDataSource);

  @override
  Future<GeneralWeather> getGeneralWeather(GetGeneralWeatherParams params) async {
    final result = await remoteDataSource.getGeneralWeather(params);
    return result;
  }
}
