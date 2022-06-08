// ignore_for_file: non_constant_identifier_names

class Weather {
  String? cityName;
  double? temp;
  double? wind;
  int? humidity;
  double? feels_like;
  int? pressure;
  double? temp_max;
  double? temp_min;

  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.feels_like,
    this.pressure,
    this.temp_max,
    this.temp_min,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    cityName = json["name"];
    temp = json["main"]["temp"];
    wind = json["wind"]["speed"];
    humidity = json["main"]["humidity"];
    feels_like = json["main"]["feels_like"];
    pressure = json["main"]["pressure"];
    temp_max = json["main"]["temp_max"];
    temp_min = json["main"]["temp_min"];
  }
}
