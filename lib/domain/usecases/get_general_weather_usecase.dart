import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/error/exceptions.dart';
import 'package:open_weather/core/error/failure.dart';
import 'package:open_weather/core/usecase/usecase.dart';
import 'package:open_weather/domain/entities/general_weather.dart';
import 'package:open_weather/domain/repositories/weather_repository.dart';

class GetGeneralWeatherUsecase extends UseCase<GeneralWeather, GetGeneralWeatherParams> {
  final WeatherRepository repository;
  GetGeneralWeatherUsecase(this.repository);

  @override
  Future<Either<Failure, GeneralWeather>> call(GetGeneralWeatherParams params) async {
    try {
      final result = await repository.getGeneralWeather(params);
      return Right(result);
    } on ServerExceptions catch (e) {
      return Left(ServerFailure(e.message));
    } on SocketException {
      return const Left(ConnectionFailure(MessagesConstants.failedToConnectToNetwork));
    } catch (e) {
      return const Left(ServerFailure(MessagesConstants.thereIsUnexpectedError));
    }
  }
}

class GetGeneralWeatherParams extends Equatable {
  final Tuple2 latlon;

  const GetGeneralWeatherParams({
    required this.latlon,
  });

  @override
  List<Object?> get props => [
        latlon,
      ];
}
