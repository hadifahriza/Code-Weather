import 'package:geolocator/geolocator.dart';
import 'package:open_weather/domain/usecases/get_position_location.dart';

abstract class LocationRepository {
  Future<Position> getPositionLocation(GetPositionLocationParams params);
}
