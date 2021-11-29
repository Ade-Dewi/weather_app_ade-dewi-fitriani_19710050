import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wheater_app/models/weather_locations.dart'; 
import 'package:google_fonts/google_fonts.dart';
import 'package:wheater_app/models/weather_locations.dart';

class singleweather extends StatelessWidget {
  final int index;
  singleweather (this.index);

  get googlefonts => null;

  get svgpicture => null;

  Widget build (BuildContext context){
    var google;
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 150,
                    ),
                    Text(
                      locationlist[index].city,
                      style: googlefonts.lato(
                        fontsize:35,
                        FontWeight:FontWeight.bold,
                        Color:Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      locationlist[index].datetime,
                      style: googlefonts.lato(
                        fontsize:14,
                        FontWeight:FontWeight.bold,
                        color:Colors.white,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      locationlist[index].temparature,
                      style: googlefonts.lato(
                      fontsize:85,
                      fontweight:FontWeight.w300,
                      color:Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        svgpicture.assets(
                          locationlist[index].iconurl,
                          width:34,
                          height:34,
                          Color:Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          locationlist[index].weathertype,
                          style: googlefonts.lato(
                            fontsize:25,
                            FontWeight:FontWeight.w500,
                            color:Colors.white,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 40),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                      Text(
                        'wind',
                        style: google.fonts.lato(
                          fontsize:14,
                          FontWeight:FontWeight.bold,
                          Color:Colors.white
                        ),
                      ),
                      Text(
                        locationlist[index].wind.toString(),
                        style: google.fonts.lato(
                          fontsize:24,
                          FontWeight:FontWeight.bold,
                          color:Colors.white,
                        ),
                      ),
                      Text(
                        'km/h',
                        style: google.fonts.lato(
                          fontsize:14,
                          FontWeight:FontWeight.bold,
                          Color:Colors.white
                        ),
                      ),
                      Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 50,
                            color: Colors.white30,
                          ),
                          Container(
                            height: 5,
                            width: locationlist[index].wind/2,
                            color: Colors.greenAccent,
                          ),
                        ],
                      )
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'rain',
                          style: google.fonts.lato(
                            fontsize:14,
                            FontWeight:FontWeight.bold,
                            Color:Colors.white,
                          ),
                        ),
                        Text(
                          locationlist[index].rain.toString(),
                          style: google.fonts.lato(
                            fontsize:24,
                            FontWeight:FontWeight.bold,
                            Color:Colors.white,
                          ),
                        ),
                        Text(
                          '%',
                          style: googlefonts.lato(
                            fontsize:14,
                            FontWeight:FontWeight.bold,
                            Color:Colors.white
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5,
                              width: locationlist[index].rain/2,
                              color: Colors.redAccent,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'humidy',
                          style: google.fonts.lato(
                            fontsize:14,
                            FontWeight:FontWeight.bold,
                            Color:Colors.white,
                          ),
                        ),
                        Text(
                          '%',
                          style:GoogleFonts.lato(
                            fontSize:14,
                            fontWeight:FontWeight.bold,
                            color:Colors.white,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 5,
                              width: 50,
                              color: Colors.white38,
                            ),
                            Container(
                              height: 5,
                              width: locationlist[index].humidity/2,
                              color: Colors.redAccent,
                            )
                          ],
                        )
                      ],
                    )
                  ],
                )),
              
            ],
          ),
        ],
      ),
    );
  }
  
}