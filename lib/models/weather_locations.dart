import 'package:flutter/material.dart';

class weatherlocation{
  final String city;
  final String datetime;
  final String temparature;
  final String weathertype;
  final String iconurl;
  final int wind;
  final int rain;
  final int humidity;

weatherlocation({
  @required this.city,
  @required this.datetime,
   @required this.temparature,
    @required this.weathertype,
     @required this.iconurl,
      @required this.wind,
       @required this.rain,
        @required this.humidity,

});
}
final locationlist=[
  weatherlocation(
    city: 'banjarmasin',
    datetime: '07:50 pm-monday,9nov 2021',
    temparature: '24\u2103',
    weathertype: 'night',
    iconurl: 'assets/moon.svg',
    wind: 10,
    rain: 2,
    humidity: 10,
  ),
  weatherlocation(
    city: 'banjarbaru',
    datetime: '02:20 pm-monday,9 nov 2021',
    temparature: '15\u2103',
    weathertype: 'cloudy',
    iconurl: 'assets/cloudy.svg',
    wind: 8,
    rain: 7,
    humidity: 82,

  ),

  weatherlocation(
    city: 'anjir muara',
    datetime: '02:20 pm-monday,9 nov 2021',
    temparature: '17\u2103',
    weathertype: 'sunny',
    iconurl: 'assets/sunny.svg',
    wind: 5,
    rain: 15,
    humidity: 61,

  ),

weatherlocation(
city: 'sungai andai',
    datetime: '02:20 pm-monday,9 nov 2021',
    temparature: '10\u2103',
    weathertype: 'rainy',
    iconurl: 'assets/rain.svg',
    wind: 20,
    rain: 70,
    humidity: 91,
),
];
