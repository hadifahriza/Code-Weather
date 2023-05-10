import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:open_weather/core/error/failure.dart';
import 'package:open_weather/domain/usecases/get_position_location.dart';

part 'location_event.dart';
part 'location_state.dart';
part 'location_bloc.freezed.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  // Usecase
  final GetPositionLocationUsecase _getPositionLocationUsecase;

  LocationBloc(this._getPositionLocationUsecase) : super(_Initial(null)) {
    on<LocationEvent>((event, emit) {
      event.mapOrNull(
        started: (value) => _getPosition(emit),
      );
    });
  }

  void _getPosition(Emitter emit) async {
    Either<Failure, Position> result = await _getPositionLocationUsecase.call(const GetPositionLocationParams());

    result.fold((l) => null, (r) => emit(result));
  }
}
