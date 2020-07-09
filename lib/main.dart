import 'package:STG/Style/Front/FrontHome/FrontInscriptionPage.dart';
import 'package:flutter/material.dart';


import 'Bloc/BlocHome/OptionBloc.dart';
import 'Body/GeneralTheme.dart';
import 'Style/Front/FrontHome/FrontHomePage.dart';

void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  GeneralTheme primeryBody = GeneralTheme();
  @override
  Widget build(BuildContext context) {
    return  primeryBody.buildMaterialApp(MyHomePage(this.primeryBody));
  }
}

class MyHomePage extends StatefulWidget {
  GeneralTheme primeryBody;
  MyHomePage(this.primeryBody);
  @override
  _MyHomePageState createState() => _MyHomePageState(this.primeryBody);
}

class _MyHomePageState extends State<MyHomePage> {
  GeneralTheme primeryBody;

  _MyHomePageState(this.primeryBody);

  OptionBloc optionBloc = OptionBloc();

  FrontHomePage _frontHomePage = FrontHomePage();

  FrontInscriptionPage _frontInscriptionPage = FrontInscriptionPage();


  @override
  Widget build(BuildContext context) {

    print('Information : '
        '\ndebugShow is :  ${primeryBody.DEBUGSHOW}'
        '\nOptionBlock is : ${optionBloc.what}');

    switch(optionBloc.what){
      case enumC.accuil:
        return primeryBody.
        builderCREATOR(
            _frontHomePage.frHomePage(this,context,optionBloc,primeryBody.DEBUGSHOW),
            _frontHomePage.frHomePagedrawer(),primeryBody.DRAWERSHOW,
        );// builderCREATOR
        break;
      case enumC.inscription:
        return primeryBody.
        builderCREATOR(
          _frontInscriptionPage.frInscriptionPage(this,context,optionBloc,primeryBody.DEBUGSHOW),
          _frontInscriptionPage.frInscriptionPagedrawer(),primeryBody.DRAWERSHOW,
        );// builderCREATOR
        break;
      case enumC.connection:
        break;
    }

  }
}
