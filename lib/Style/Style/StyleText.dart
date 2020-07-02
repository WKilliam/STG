import 'package:flutter/material.dart';


class StyleText extends TextStyle{

  TextStyle style1(BuildContext context){
    return TextStyle(
        color: Colors.blue,
        fontSize: MediaQuery.of(context).size.height/30,
        fontFamily: 'Raleway',
    );
  }

  TextStyle style2(BuildContext context){
    return TextStyle(
      color: Colors.black,
      fontSize: MediaQuery.of(context).size.width/40,
      fontStyle: FontStyle.italic,
    );
  }

}