import 'dart:io';

import 'package:equatable/equatable.dart';
import 'package:fpdart/fpdart.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather/core/constants/message_constants.dart';
import 'package:open_weather/core/error/exceptions.dart';
import 'package:open_weather/core/error/failure.dart';
import 'package:open_weather/core/usecase/usecase.dart';
import 'package:open_weather/domain/repositories/location_repository.dart';

class GetPositionLocationUsecase extends UseCase<Position, GetPositionLocationParams> {
  final LocationRepository repository;
  GetPositionLocationUsecase(this.repository);

  @override
  Future<Either<Failure, Position>> call(GetPositionLocationParams params) async {
    try {
      final result = await repository.getPositionLocation(params);
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

class GetPositionLocationParams extends Equatable {
  const GetPositionLocationParams();

  @override
  List<Object?> get props => [];
}
