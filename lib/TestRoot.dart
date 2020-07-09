import 'package:STG/Bloc/BlocHome/OptionBloc.dart';
import 'package:STG/ConnectorFirebase/ClasseObject/User.dart';
import 'package:STG/Style/Front/FrontHome/FrontHomePage.dart';
import 'package:STG/TestRoot.dart';
import 'package:STG/ConnectorFirebase/ObjectService/UserService.dart';
import 'package:flutter/material.dart';
import 'package:STG/Body/GeneralTheme.dart';
import 'package:provider/provider.dart';

void main() => runApp(Application());



class Application extends StatelessWidget {
  GeneralTheme primeryBody = GeneralTheme();
  bool debugShow = false;
  @override
  Widget build(BuildContext context) {
    //FR : transfére de primeryBody au autre couche d'affichage, buildMaterialApp permet d'affiché un MaterialApp prédéfini prennent en compte une primaryBody pour les autres couches
    //EN : transfer from primeryBody to the other display layer, buildMaterialApp allows to display a predefined MaterialApp take into account a primaryBody for the other layers
    //return primeryBody.buildMaterialApp(MyHomePage(this.primeryBody,this.debugShow), debugShow);

  }
}

class MyHomePage extends StatefulWidget{
  GeneralTheme primeryBody;
  bool debugShow;
  MyHomePage(this.primeryBody,this.debugShow);
  @override
  _Home createState() => _Home(this.primeryBody,this.debugShow);


}

class _Home extends State<MyHomePage>{
  GeneralTheme primeryBody;
  bool debugShow;
  FrontHomePage _frontHomePage = FrontHomePage();
  OptionBloc optionBloc = OptionBloc();
  Text txtName = Text("Nom");
  Text txtFirstName = Text("Prenom");
  Text txtEmail = Text("Email");
  Text password = Text("Mot de Passe");
  _Home(this.primeryBody,this.debugShow);

  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) {
      print('debug Show is :  $debugShow');
      print('debug Show is :  ${optionBloc.what}');

    }
  }

}

/*


class HomePage extends StatelessWidget {
  GeneralTheme primeryBody = GeneralTheme();
  bool debugShow = false;
  FrontHomePage _frontHomePage = FrontHomePage();
  OptionBloc optionBloc = OptionBloc();
  Text txtName = Text("Nom");
  Text txtFirstName = Text("Prenom");
  Text txtEmail = Text("Email");
  Text password = Text("Mot de Passe");

  HomePage(this.primeryBody, this.debugShow);

  @override
  Widget build(BuildContext context) {
    print('debug Show is :  $debugShow');
    print('debug Show is :  ${optionBloc.what}');

    if(optionBloc.what==enumC.accuil){
      return primeryBody.builderCommon(
          _frontHomePage.frHomePage(
              context,
              optionBloc,
              debugShow,
              txtName,
              txtFirstName,
              txtEmail,
              password),
          _frontHomePage.frHomePagedrawer()
          , false,
          Alignment.bottomRight,
          Alignment.topLeft,
          Colors.blue,
          Colors.redAccent);
    }else{
      return primeryBody.builderCommon(
          _frontHomePage.frHomePage(
              context,
              optionBloc,
              debugShow,
              txtName,
              txtFirstName,
              txtEmail,
              password),
          _frontHomePage.frHomePagedrawer()
          , false,
          Alignment.bottomRight,
          Alignment.topLeft,
          Colors.yellow,
          Colors.green);
    }
  }

}


    return primeryBody.builderCommon(
        _frontHomePage.frHomePage(
            context,
            optionBloc,
            debugShow,
            txtName,
            txtFirstName,
            txtEmail,
            password),
        _frontHomePage.frHomePagedrawer()
        , false,
        Alignment.bottomRight,
        Alignment.topLeft,
        Colors.blue,
        Colors.redAccent);


  }
}



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
  _MyHomePageState createState() => _MyHomePageState(this.primeryBody,this.debugShow);

}

class _MyHomePageState extends State<MyHomePage> {

  UserService _service = UserService();
  //User _user = User();
  FrontHomePage _frontHomePage = FrontHomePage();
  Text txtName = Text("Nom");
  Text txtFirstName = Text("Prenom");
  Text txtEmail = Text("Email");
  Text password = Text("Mot de Passe");
  Text conf_Password = Text("Confirmation du Mot de Passe");
  eNum _a=eNum.connection;
  // FR : la variable primaryBody permet d'utilisé les widget sous forme de classe elle sera commune au autre page
  // EN : the primaryBody variable allows to use the widget as a class it will be common to the other page
  GeneralTheme primeryBody;
  bool debugShow;
  _MyHomePageState(this.primeryBody,this.debugShow);

  @override
  //FR : transfére de primeryBody au autre couche d'affichage , builderCommon affiche la base d'une page
  //EN : transfer from primeryBody to the other display layer, builderCommon display a base of page
  Widget build(BuildContext context) {
    //_user.id='test';
    //_user.passWord='test2';
    //_service.addUser(_user.toMap());
    print('debug Show is :  $debugShow');
    print('_a is :  $_a');
    return ChangeNotifierProvider<FrontHomePage>(
        create: (_)=>FrontHomePage(),
        child: Consumer(
            builder: (context,AppState,FrontHomePage)=>Container(
              width: 100,
              height: 100,
              color: Colors.red,
            )
        )
    );
  }

}




enum eNum {
  home,
  inscription,
  connection,
}


ChangeNotifierProvider<AppState>(
      create: (_)=>AppState(),
      child: Consumer(
        builder: (context,AppState,_MyHomePageState)=>Container(
          width: 100,
          height: 100,
          color: Colors.red,
        )
      )
    );

switch (_a){
        case eNum.home:
          return primeryBody.builderCommon(
              _frontHomePage.frHomePage(
                  context,
                  debugShow,
                  txtName,
                  txtFirstName,
                  txtEmail,
                  password,
                  conf_Password,
                  setEnumChoice(null)),
              _frontHomePage.frHomePagedrawer(),
              false,
              Alignment.bottomRight,
              Alignment.topLeft,
              Colors.blue,
              Colors.redAccent);
          break;
        case eNum.inscription:
          return primeryBody.builderCommon(
              _frontHomePage.frHomePage(
                  context,
                  debugShow,
                  txtName,
                  txtFirstName,
                  txtEmail,
                  password,
                  conf_Password,
                  setEnumChoice(null)),
              _frontHomePage.frHomePagedrawer(),
              false,
              Alignment.bottomRight,
              Alignment.topLeft,
              Colors.black,
              Colors.yellow);
          break;
        case eNum.connection:
          return primeryBody.builderCommon(
              _frontHomePage.frHomePage(
                  context,
                  debugShow,
                  txtName,
                  txtFirstName,
                  txtEmail,
                  password,
                  conf_Password,
                  setEnumChoice(null)),
              _frontHomePage.frHomePagedrawer(),
              false,
              Alignment.bottomRight,
              Alignment.topLeft,
              Colors.black,
              Colors.blue);
          break;
    }
  }

  setEnumChoice(eNum value){

      _a=value;
  }


return primeryBody.builderCommon(
        _frontHomePage.frHomePage(
            context,
            debugShow,
            txtName,
            txtFirstName,
            txtEmail,
            password,
            conf_Password),
        _frontHomePage.frHomePagedrawer(),
        false,
        Alignment.bottomRight,
        Alignment.topLeft,
        Colors.blue,
        Colors.redAccent);
return primeryBody.builderCommon(
        _frontInscriptionPage.frInscriptionPage(
            context,
            txtName,
            txtFirstName,
            txtEmail,
            password,
            password,
            adress),
        _frontInscriptionPage.frInscriptionPagedrawer(),
        false,
        Alignment.bottomRight,
        Alignment.topLeft,
        Colors.blue,
        Colors.redAccent);
 */

