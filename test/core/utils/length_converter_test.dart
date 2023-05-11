import 'package:flutter_test/flutter_test.dart';
import 'package:open_weather/core/utils/length_converter.dart';

void main() {
  group('kmToM', () {
    test('success', () {
      // arrange
      double value = 1;

      // act
      String result = LengthConverter.kmToM(value);

      // assert
      expect(result, '1000.00');
    });
  });

  group('mToKm', () {
    test('success', () {
      // arrange
      double value = 1000;

      // act
      String result = LengthConverter.mToKm(value);

      // assert
      expect(result, '1.0');
    });
  });
}
