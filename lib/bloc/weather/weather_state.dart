part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial(
    GeneralWeather? generalWeather,
  ) = _Initial;
}
