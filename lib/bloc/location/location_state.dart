part of 'location_bloc.dart';

@freezed
class LocationState with _$LocationState {
  const factory LocationState.initial(
    Position? currentPosition,
  ) = _Initial;
}
