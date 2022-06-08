import 'package:flutter/material.dart';

TextStyle infoText =
    const TextStyle(fontWeight: FontWeight.w600, fontSize: 18.0);
Widget additionalInfo(
  String wind,
  String humidity,
  String pressure,
  String feelsLike,
  String maxTemp,
  String minTemp,
) {
  return Container(
    width: double.infinity,
    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Wind", style: infoText),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Humidity",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Pressure",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Feels Like",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Maximumm Temperature",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Minimum Temperature",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(wind, style: infoText),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  humidity,
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  pressure + " Ba",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  feelsLike + " C",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  maxTemp + " C",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  minTemp + " C",
                  style: infoText,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
