import 'package:flutter/material.dart';
import 'package:STG/Style/Style/StyleText.dart';
import 'package:flutter/foundation.dart';


class GeneralTheme {

  String _titleApp = 'My App Stage';

  StyleText _styleText =StyleText();

  ThemeData _styleTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  AppBar _styleAppBar = new AppBar(
    title: new Text('Stage',
      textAlign: TextAlign.center,
      textScaleFactor: 2.0,
      style: new TextStyle(
          color: Colors.black,
          fontSize: 10.0,
          fontStyle: FontStyle.italic
      ),
    ),
    elevation: 10,//
  );


  MaterialApp buildMaterialApp(
      StatefulWidget statefulWidget,
      bool debugShow){

    return MaterialApp(
      title: _titleApp,
      theme: _styleTheme,
      debugShowCheckedModeBanner: debugShow,
      home: statefulWidget,
    );
  }



  Widget builderCommon(
      Widget bodyCreator,
      Widget drawerCreator,
      bool appBarexist,
      Alignment alignmentbegin,
      Alignment alignmentend,
      Color colorStart,
      Color colorEnd) {



    return Scaffold(
      appBar: appBarexist==true ? _styleAppBar:null,
      drawer: drawerCreator,
      body: Center(
        child: Stack(
          children: [
            Center(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: alignmentbegin,
                    end: alignmentend,
                    colors: [colorStart,colorEnd]
                  )
                ),
              )
            ),
            bodyCreator
          ],
        ),
      ),
    );

  }

}
