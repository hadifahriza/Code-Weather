import 'package:geolocator/geolocator.dart';
import 'package:open_weather/data/datasource/remote/location_remote_data_source.dart';
import 'package:open_weather/domain/repositories/location_repository.dart';
import 'package:open_weather/domain/usecases/get_position_location.dart';

class LocationRepositoryImpl implements LocationRepository {
  final LocationRemoteDataSource remoteDataSource;

  LocationRepositoryImpl(this.remoteDataSource);

  @override
  Future<Position> getPositionLocation(GetPositionLocationParams params) async {
    final result = await remoteDataSource.getPositionLocation(params);
    return result;
  }
}
