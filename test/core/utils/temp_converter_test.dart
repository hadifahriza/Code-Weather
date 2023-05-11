import 'package:flutter_test/flutter_test.dart';
import 'package:open_weather/core/utils/temp_converter.dart';

void main() {
  group('kelvinToCelcius', () {
    test('success', () {
      // arrange
      double value = 0;

      // act
      String result = TempConverter.kelvinToCelcius(value);

      // assert
      expect(result, '-273.1 \u00B0C');
    });
  });

  group('celciusToKelvin', () {
    test('success', () {
      // arrange
      double value = 0;

      // act
      String result = TempConverter.celciusToKelvin(value);

      // assert
      expect(result, '273.1 K');
    });
  });
}
