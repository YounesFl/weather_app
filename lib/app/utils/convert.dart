import 'package:intl/intl.dart';

class Convert {
  static String convertUnixTimeToDay(String dt) {
    final now = DateTime.fromMillisecondsSinceEpoch(int.parse(dt) * 1000);
    return DateFormat('yyyy-MM-dd').format(now);
  }

  static String convertUnixTimeToHour(String dt) {
    final date = DateTime.fromMillisecondsSinceEpoch(int.parse(dt) * 1000);
    return DateFormat('HH:mm').format(date);
  }

  static int kelvinToCelsius(double kelvin) {
    return (kelvin - 273.15).toInt();
  }
}
