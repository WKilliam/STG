import 'package:flutter/material.dart';

import 'Bloc/BlocHome/OptionBloc.dart';
import 'Body/GeneralTheme.dart';
import 'Style/Front/FrontHome/FrontHomePage.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  GeneralTheme primeryBody = GeneralTheme();
  bool debugShow = false;
  @override
  Widget build(BuildContext context) {
    return  primeryBody.buildMaterialApp(MyHomePage(this.primeryBody,this.debugShow), debugShow);
  }
}

class MyHomePage extends StatefulWidget {
  GeneralTheme primeryBody;
  bool debugShow;
  MyHomePage(this.primeryBody, this.debugShow);
  @override
  _MyHomePageState createState() => _MyHomePageState(this.primeryBody,this.debugShow);
}

class _MyHomePageState extends State<MyHomePage> {
  GeneralTheme primeryBody;
  bool debugShow;
  _MyHomePageState(this.primeryBody,this.debugShow);
  OptionBloc optionBloc = OptionBloc();
  FrontHomePage _frontHomePage = FrontHomePage();
  Text txtName = Text("Nom");
  Text txtFirstName = Text("Prenom");
  Text txtEmail = Text("Email");
  Text password = Text("Mot de Passe");
  @override
  Widget build(BuildContext context) {
    print('debug Show is :  ${optionBloc.what}');

    switch(optionBloc.what){
      case enumC.accuil:
        return primeryBody.builderCommon(
            _frontHomePage.frHomePage(this,
                context,
                optionBloc,
                debugShow,
                txtName,
                txtFirstName,
                txtEmail,
                password),
            _frontHomePage.frHomePagedrawer()
            ,
            false,
            Alignment.bottomRight,
            Alignment.topLeft,
            Colors.blue,
            Colors.redAccent);
        break;
      case enumC.inscription:
        return primeryBody.builderCommon(
            _frontHomePage.frHomePage(this,
                context,
                optionBloc,
                debugShow,
                txtName,
                txtFirstName,
                txtEmail,
                password),
            _frontHomePage.frHomePagedrawer()
            ,
            false,
            Alignment.bottomRight,
            Alignment.topLeft,
            Colors.yellow,
            Colors.green);
        break;
      case enumC.connection:
        
        break;
    }

  }
}
