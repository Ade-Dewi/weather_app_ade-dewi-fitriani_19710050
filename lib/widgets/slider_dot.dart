import 'package:flutter/material.dart';

class sliderdot extends StatelessWidget {
  bool isactive;
  sliderdot(this.isactive);

  Widget build (BuildContext context){
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 5),
      width: isactive ? 12 : 5,
      height: 5,
      decoration: BoxDecoration(
        color: isactive ? Colors.white:Colors.white54,
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        ),
      );

    
  }
  
}