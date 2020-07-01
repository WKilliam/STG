import 'package:flutter/material.dart';
import 'package:STG/Body/PrimaryBody.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  PrimaryBody primeryBody = PrimaryBody();
  @override
  Widget build(BuildContext context) {
    //FR : transfére de primeryBody au autre couche d'affichage, buildMaterialApp permet d'affiché un MaterialApp prédéfini prennent en compte une primaryBody pour les autres couches
    //EN : transfer from primeryBody to the other display layer, buildMaterialApp allows to display a predefined MaterialApp take into account a primaryBody for the other layers
    return primeryBody.buildMaterialApp(MyHomePage(this.primeryBody));
  }
}

class MyHomePage extends StatefulWidget {
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  PrimaryBody primeryBody;
  MyHomePage(this.primeryBody);
  @override
  //FR : transfére de primeryBody au autre couche d'affichage
  //EN : transfer from primeryBody to the other display layer
  _MyHomePageState createState() => _MyHomePageState(this.primeryBody);

}

class _MyHomePageState extends State<MyHomePage> {
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  PrimaryBody primeryBody;
  _MyHomePageState(this.primeryBody);
  @override
  //FR : transfére de primeryBody au autre couche d'affichage , builderCommon affiche la base d'une page
  //EN : transfer from primeryBody to the other display layer, builderCommon display a base of page
  Widget build(BuildContext context) {
    return primeryBody.builderCommon();
  }

}
