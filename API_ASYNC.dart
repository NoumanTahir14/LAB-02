// Nouman Tahir
// 474537

import 'dart:async';

Future<String> fetchWeatherData() async {
  await Future.delayed(Duration(seconds: 3));

  return "Weather: Sunny, Temperature: 25°C";
}

void main() async {
  try {
    String weatherData = await fetchWeatherData();

    print("Fetched Weather Data: $weatherData");
  } catch (e) {
    print("Error fetching weather data: $e");
  }
}
