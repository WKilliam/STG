import 'dart:async';

import 'package:STG/ConnectorFirebase/ClasseObject/User.dart';
import 'package:STG/Style/Front/FrontHome/FrontHomePage.dart';
import 'package:STG/TestRoot.dart';
import 'package:STG/ConnectorFirebase/ObjectService/UserService.dart';
import 'package:flutter/material.dart';
import 'package:STG/Body/GeneralTheme.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  GeneralTheme primeryBody = GeneralTheme();
  bool debugShow = false;
  @override
  Widget build(BuildContext context) {
    //FR : transfére de primeryBody au autre couche d'affichage, buildMaterialApp permet d'affiché un MaterialApp prédéfini prennent en compte une primaryBody pour les autres couches
    //EN : transfer from primeryBody to the other display layer, buildMaterialApp allows to display a predefined MaterialApp take into account a primaryBody for the other layers
    return primeryBody.buildMaterialApp(MyHomePage(this.primeryBody,this.debugShow),this.debugShow);
  }
}

class MyHomePage extends StatefulWidget {
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  GeneralTheme primeryBody;
  bool debugShow;
  MyHomePage(this.primeryBody,this.debugShow);

  @override
  //FR : transfére de primeryBody au autre couche d'affichage
  //EN : transfer from primeryBody to the other display layer
  MyHomePageState createState() => MyHomePageState(this.primeryBody,this.debugShow);


}

class MyHomePageState extends State<MyHomePage> with ChangeNotifier {


  UserService _service = UserService();


  FrontHomePage _frontHomePage = FrontHomePage();
  int whatContext=1;
  Text messagetext = Text("Bienvenue connectez-vous !");
  Text emailText = Text("Inscrivez votre adresse mail");
  Text mdpText = Text("Votre mot de passe");
  Text connectionText = Text("Connection");
  Text inscriptionText = Text("Inscription");
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  GeneralTheme primeryBody;
  bool debugShow;
  MyHomePageState(this.primeryBody,this.debugShow);


  @override
  //FR : transfére de primeryBody au autre couche d'affichage , builderCommon affiche la base d'une page
  //EN : transfer from primeryBody to the other display layer, builderCommon display a base of page
  Widget build(BuildContext context) {

    //User user = User('test','toto','mytest','tata',12,'gogo','lolol',23);
    //_service.addUser(user.toMap());
    print('debug Show is :  ${debugShow}');
    print('whatContext is :  ${whatContext}');

    //context.watch<String>();



    switch(whatContext){

      case 1:

        return ChangeNotifierProvider<MyHomePageState>(
          create: (context)=>MyHomePageState(this.primeryBody,this.debugShow),
          child: primeryBody.builderCommon(
            _frontHomePage.frHomePage(
                context,          debugShow,
                messagetext,      emailText,
                mdpText,          connectionText,
                inscriptionText,  whatContext),
            _frontHomePage.frHomePagedrawer(),
            false,
            Alignment.bottomRight, Alignment.topLeft,
            Colors.blue,           Colors.redAccent,),
        );

        break;
      case 2:
        return ChangeNotifierProvider<MyHomePageState>(
          create: (context)=>MyHomePageState(this.primeryBody,this.debugShow),
          child: primeryBody.builderCommon(
            _frontHomePage.frHomePage(
                context,          debugShow,
                messagetext,      emailText,
                mdpText,          connectionText,
                inscriptionText,  whatContext),
            _frontHomePage.frHomePagedrawer(),
            false,
            Alignment.bottomRight, Alignment.topLeft,
            Colors.yellow,           Colors.redAccent,),
        );
        break;
    }


  }

}
