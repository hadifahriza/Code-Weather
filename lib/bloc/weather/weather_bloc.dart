import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather/core/error/failure.dart';
import 'package:open_weather/domain/entities/general_weather.dart';
import 'package:open_weather/domain/usecases/get_general_weather_usecase.dart';

part 'weather_event.dart';
part 'weather_state.dart';
part 'weather_bloc.freezed.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  // Usecase
  final GetGeneralWeatherUsecase _getGeneralWeatherUsecase;

  WeatherBloc(this._getGeneralWeatherUsecase) : super(const _Initial(null)) {
    on<WeatherEvent>((event, emit) async {
      await event.mapOrNull(
        started: (value) async => _getGeneralWeather(value.position, emit),
      );
    });
  }

  void _getGeneralWeather(Position? position, Emitter emit) async {
    if (position != null) {
      Either<Failure, GeneralWeather> result = await _getGeneralWeatherUsecase.call(GetGeneralWeatherParams(position: position));

      result.fold((l) => null, (r) => emit(state.copyWith(generalWeather: r)));
    }
  }
}
