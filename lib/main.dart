import 'package:STG/Style/Front/FrontHome/FrontHomePage.dart';
import 'package:flutter/material.dart';
import 'package:STG/Body/GeneralTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  GeneralTheme primeryBody = GeneralTheme();
  bool debugShow = true;
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
  _MyHomePageState createState() => _MyHomePageState(this.primeryBody,this.debugShow);

}

class _MyHomePageState extends State<MyHomePage> {
  FrontHomePage _frontHomePage = FrontHomePage();
  Text txtName = Text("Nom");
  Text txtFirstName = Text("Prenom");
  Text txtEmail = Text("Email");
  Text password = Text("Mot de Passe");
  Text conf_Password = Text("Confirmation du Mot de Passe");
  Text adress = Text("Adresse");
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  GeneralTheme primeryBody;
  bool debugShow;
  _MyHomePageState(this.primeryBody,this.debugShow);
  @override
  //FR : transfére de primeryBody au autre couche d'affichage , builderCommon affiche la base d'une page
  //EN : transfer from primeryBody to the other display layer, builderCommon display a base of page
  Widget build(BuildContext context) {
    print(debugShow);
    return primeryBody.builderCommon(
        _frontHomePage.frHomePage(
            context,
            debugShow,
            txtName,
            txtFirstName,
            txtEmail,
            password,
            conf_Password,
            adress),
        _frontHomePage.frHomePagedrawer(),
        false,
        Alignment.bottomRight,
        Alignment.topLeft,
        Colors.black,
        Colors.black87);
  }

}
