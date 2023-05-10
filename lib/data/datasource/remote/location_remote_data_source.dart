import 'dart:io';

import 'package:dio/dio.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/error/exceptions.dart';
import 'package:open_weather/domain/usecases/get_position_location.dart';

abstract class LocationRemoteDataSource {
  Future<Position> getPositionLocation(GetPositionLocationParams params);
}

class LocationRemoteDataSourceImpl implements LocationRemoteDataSource {
  final Dio client;
  LocationRemoteDataSourceImpl(this.client);

  @override
  Future<Position> getPositionLocation(GetPositionLocationParams params) async {
    try {
      return Geolocator.getCurrentPosition();
    } on DioError catch (e) {
      if (e.type == DioErrorType.badResponse) {
        throw ServerExceptions(MessagesConstants.somethingWentWrong);
      } else if (e.type == DioErrorType.unknown && e.message!.contains("SocketException")) {
        throw const SocketException('');
      } else {
        throw ServerExceptions(MessagesConstants.somethingWentWrong);
      }
    }
  }
}
