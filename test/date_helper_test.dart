import 'package:amazon_cognito_identity_dart_2/src/date_helper.dart';
import 'package:test/test.dart';

void main() {
  test('.getNowString() starts with short day', () {
    final dateHelper = DateHelper();
    expect(dateHelper.getNowString(),
        matches(r'^(Sun|Mon|Tue|Wed|Thu|Fri|Sat)\s'));
  });
  test('.getNowString() includes short month', () {
    final dateHelper = DateHelper();
    expect(dateHelper.getNowString(),
        matches(r'\s(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\s'));
  });
  test('.getNowString() includes day', () {
    final dateHelper = DateHelper();
    expect(dateHelper.getNowString(), matches(r'\s([1-9]|[12]\d|3[01])\s'));
  });
  test('.getNowString() includes time', () {
    final dateHelper = DateHelper();
    expect(dateHelper.getNowString(),
        matches(r'\s([01]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])\s'));
  });
  test('.getNowString() includes UTC', () {
    final dateHelper = DateHelper();
    expect(dateHelper.getNowString(), matches(r'\sUTC\s'));
  });
  test('.getNowString() ends with Year', () {
    final dateHelper = DateHelper();
    expect(dateHelper.getNowString(), matches(r'\d{4}$'));
  });
  test('.getNowString() generates valid timestamp', () {
    final dateHelper = DateHelper();
    expect(
        dateHelper.getNowString(),
        matches(r'^[SMTWF][uoehra][neduit]\s'
            r'[JFMASOND][aepuco][nbrylgptvc]\s'
            r'([1-9]|[12]\d|3[01])\s'
            r'([01]?[0-9]|2[0-3]):([0-5][0-9]):([0-5][0-9])\s'
            r'UTC\s\d{4}$'));
  });
}
