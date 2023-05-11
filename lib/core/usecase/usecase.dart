import 'package:fpdart/fpdart.dart';
import 'package:open_weather/core/error/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}
