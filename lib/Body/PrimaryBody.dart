import 'package:flutter/material.dart';

class PrimaryBody{

  String _titleApp = 'My App Stage';
  ThemeData _styleTheme = ThemeData(
    primarySwatch: Colors.amber,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
  AppBar _styleAppBar = new AppBar(
    title: new Text('DIDAX',
      textAlign: TextAlign.center,
      textScaleFactor: 2.0,
      style: new TextStyle(
          color: Colors.black,
          fontSize: 10.0,
          fontStyle: FontStyle.italic
      ),
    ),//
  );

  MaterialApp buildMaterialApp(StatefulWidget statefulWidget){
    return MaterialApp(
      title: _titleApp,
      theme: _styleTheme,
      debugShowCheckedModeBanner: false,
      home: statefulWidget,
    );
  }


  Widget builderCommon() {
    return Scaffold(
      appBar: _styleAppBar,
      body: Text('toto'),
    );
  }

}
