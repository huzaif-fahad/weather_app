import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/export_pages.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String location) async {
    var url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=ba581aa06e259f5dc5d526706e77c771&units=metric");
    var respone = await http.get(url);
    var body = jsonDecode(respone.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);
  }
}
