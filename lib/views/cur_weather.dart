import 'package:flutter/material.dart';

TextStyle titleStyle = const TextStyle(fontSize: 20.0, color: Colors.amber);

Widget currentWeather(IconData icon, String location, String temperature) {
  return Stack(children: [
    Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(icon, size: 70.0, color: Colors.orange),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                location,
                style: const TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                temperature + " C",
                style: titleStyle,
              ),
            ]),
      ),
    ),
  ]);
}
