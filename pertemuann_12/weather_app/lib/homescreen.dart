import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_app/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLoaded = false;
  num temp = 0;
  num press = 0;
  num hum = 0;
  num cover = 0;
  String cityname = '';
  String description = '';
  String iconCode = '';
  TextEditingController controller = TextEditingController();

  Future<void> getCityWeather(String cityname) async {
    final url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityname&appid=$apiKey&units=metric');
    try {
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        updateUI(data);
        setState(() {
          isLoaded = true;
        });
      } else {
        print("Error: ${response.statusCode}");
        setState(() {
          isLoaded = false;
          this.cityname = cityname;
        });
      }
    } catch (e) {
      print("Error: $e");
      setState(() {
        isLoaded = false;
        this.cityname = cityname;
      });
    }
  }

  void updateUI(var decodedData) {
    setState(() {
      if (decodedData == null) {
        temp = 0;
        press = 0;
        hum = 0;
        cover = 0;
        cityname = '';
        description = '';
        iconCode = '';
        isLoaded = false;
      } else {
        temp = decodedData['main']['temp'];
        press = decodedData['main']['pressure'];
        hum = decodedData['main']['humidity'];
        cover = decodedData['clouds']['all'];
        cityname = decodedData['name'];
        description = decodedData['weather'][0]['description'];
        iconCode = decodedData['weather'][0]['icon'];
        isLoaded = true;
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset:
            true, // Agar layout menyesuaikan dengan keyboard
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.blue.shade700,
                Colors.blue.shade300,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  // Input kota dengan gaya yang menarik
                  Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 4),
                          blurRadius: 8,
                        ),
                      ],
                    ),
                    child: TextFormField(
                      onFieldSubmitted: (String s) {
                        setState(() {
                          cityname = s;
                          getCityWeather(s);
                          isLoaded = false;
                          controller.clear();
                        });
                      },
                      controller: controller,
                      cursorColor: Colors.blue,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                      decoration: InputDecoration(
                        hintText: 'Search city',
                        hintStyle: TextStyle(
                          fontSize: 18,
                          color: Colors.black.withOpacity(0.7),
                        ),
                        prefixIcon: Icon(
                          Icons.search_rounded,
                          size: 25,
                          color: Colors.black.withOpacity(0.7),
                        ),
                        border: InputBorder.none,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Tampilkan nama kota
                  if (cityname != '')
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.location_city,
                              color: Colors.white,
                              size: 40,
                            ),
                            SizedBox(width: 8),
                            Text(
                              cityname,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        // Tampilkan ikon dan deskripsi cuaca
                        if (iconCode != '')
                          Column(
                            children: [
                              Image.network(
                                'http://openweathermap.org/img/wn/$iconCode@2x.png',
                              ),
                              SizedBox(height: 8),
                              Text(
                                description.toUpperCase(),
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                      ],
                    ),
                  SizedBox(height: 20),
                  // Kartu cuaca
                  Visibility(
                    visible: isLoaded,
                    child: Column(
                      children: [
                        // Kartu Suhu
                        buildWeatherCard(
                          'Temperature',
                          '${temp.toInt()} ºC',
                          Icons.thermostat_rounded,
                        ),
                        // Kartu Tekanan
                        buildWeatherCard(
                          'Pressure',
                          '${press.toInt()} hPa',
                          Icons.speed,
                        ),
                        // Kartu Kelembapan
                        buildWeatherCard(
                          'Humidity',
                          '${hum.toInt()} %',
                          Icons.opacity,
                        ),
                        // Kartu Tutupan Awan
                        buildWeatherCard(
                          'Cloud Cover',
                          '${cover.toInt()} %',
                          Icons.cloud,
                        ),
                      ],
                    ),
                    replacement: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildWeatherCard(String title, String value, IconData iconData) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 12),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: Colors.white.withOpacity(0.9),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            offset: Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            iconData,
            size: 50,
            color: Colors.blue,
          ),
          SizedBox(width: 20),
          Text(
            '$title: $value',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
