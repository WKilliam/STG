import 'package:flutter/material.dart';
import 'package:STG/Style/Style/StyleText.dart';




class GeneralTheme {

  static final MaterialColor _COLORSBLUE = Colors.blue;
  MaterialColor get COLORSBLUE => _COLORSBLUE;

  static final Color _COLORSRED = Colors.redAccent;
  Color get COLORSRED => _COLORSRED;

  static final bool _DEBUGSHOW =false;
  bool get DEBUGSHOW => _DEBUGSHOW;

  static bool _DRAWERSHOW =false;
  bool get DRAWERSHOW => _DRAWERSHOW;

  static final Alignment _ALIGNEMENTSTART = Alignment.bottomRight;
  Alignment get ALIGNEMENTSTART => _ALIGNEMENTSTART;

  static final Alignment _ALIGNEMENTEND = Alignment.topLeft;
  Alignment get ALIGNEMENTEND => _ALIGNEMENTEND;



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
      StatefulWidget statefulWidget){

    return MaterialApp(
      title: _titleApp,
      theme: _styleTheme,
      debugShowCheckedModeBanner: DEBUGSHOW,
      home:  statefulWidget
    );
  }


  Widget builderCREATOR(
      Widget bodyCreator,
      Widget drawerCreator,
      bool appBarexist) {

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
                    begin: ALIGNEMENTSTART,
                    end: ALIGNEMENTEND,
                    colors: [COLORSBLUE,COLORSRED]
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
