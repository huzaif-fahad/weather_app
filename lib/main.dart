import 'package:flutter/material.dart';
import 'package:weather_app/export_pages.dart';

void main() {
  runApp(const MyApp());
}

TextStyle titleStyle = const TextStyle(
    fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold);
String curLocation = "Delhi";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  WeatherApiClient client = WeatherApiClient();
  Weather data = Weather();

  Future<Weather> getData() async =>
      data = (await client.getCurrentWeather(curLocation))!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          elevation: 0.0,
        ),
        extendBodyBehindAppBar: true,
        body: FutureBuilder(
            future: getData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return Stack(children: [
                  Image.asset("assets/sky.jpg",
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: double.infinity),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextFormField(
                            cursorHeight: 20,
                            decoration: InputDecoration(
                                alignLabelWithHint: true,
                                labelText: 'Enter Your Location',
                                labelStyle: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white.withOpacity(1)),
                                icon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(2))),
                                focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white),
                                )),
                            onFieldSubmitted: (value) {
                              setState(() {
                                curLocation = value;
                              });
                            }),
                      ),
                      currentWeather(Icons.wb_sunny_rounded, "${data.cityName}",
                          "${data.temp}"),
                      // const SizedBox(
                      // height: 60,
                      //),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Additional Information",
                              style: titleStyle,
                            ),
                            const Icon(Icons.cloud_circle_outlined,
                                color: Colors.orange)
                          ],
                        ),
                      ),
                      const Divider(),
                      additionalInfo(
                          "${data.wind}",
                          "${data.humidity}",
                          "${data.pressure}",
                          "${data.feels_like}",
                          "${data.temp_max}",
                          "${data.temp_min}"),
                    ],
                  ),
                ]);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
