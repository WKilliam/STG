
import 'package:flutter/material.dart';

class StyleText extends TextStyle{

  TextStyle style1(BuildContext context){
    return TextStyle(
        color: Colors.blue,
        fontSize: MediaQuery.of(context).size.width/25,
        fontStyle: FontStyle.italic,
    );
  }



}