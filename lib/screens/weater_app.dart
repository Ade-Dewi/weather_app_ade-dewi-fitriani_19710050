// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import  'package:transformer_page_view/transformer_page_view.dart';

import '../models/weather_locations.dart';
import '../widgets/building_transform.dart';
import '../widgets/single_weather.dart';
import '../widgets/slider_dot.dart';

abstract class weatherapp extends StatefulWidget{
  _weatherappstate createsate () => _weatherappstate ();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
  
}

class _weatherappstate extends  State<weatherapp> {
  int _currentpage =0;
  String bgimg;

  _onpagechanged (int index){
    setState(() {
      _currentpage =index;
    });
  }

  @override
  Widget build (BuildContext context){
    if (locationlist[_currentpage].weathertype == 'sunny'){
      bgimg ='assets/sunny.jpg';
    }else if (locationlist[_currentpage].weathertype == 'night'){
      bgimg ='assets/night.jpg';
    }else if (locationlist[_currentpage].weathertype == 'rainy'){
      bgimg ='assets/rainy.jpg';
    }else if (locationlist[_currentpage].weathertype == 'cloudy'){
      bgimg ='assets/cloudy.jpg';
    }

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(''),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () => print('menu clicked!'),
              child: SvgPicture.asset(
                'assets/menu.svg',
                height:30,
                width:30,
                color:Colors.white,
              
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              bgimg,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left:15),
              child:Row (
                children: [
                  for(int i =0; i<locationlist.length; i++)
                  if (i == _currentpage)
                  sliderdot(true)
                  else
                  sliderdot (false)
                ],

              ),
            ),
            TransformerPageView(
              scrollDirection:Axis.horizontal,
              transformer:scaleandfadetransformer(),
              viewportFraction:0.8,
              onPageChanged:_onpagechanged,
              itemCount:locationlist.length,
              itemBuilder:(ctx,i) => singleweather(i),


            ),
          ],
        ),
      )
    );
  }

  scaleandfadetransformer() {}
}
