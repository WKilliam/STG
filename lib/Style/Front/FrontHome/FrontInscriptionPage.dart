import 'package:STG/Bloc/BlocHome/OptionBloc.dart';
import 'package:STG/Body/AllTextOutput.dart';
import 'package:STG/Style/Style/StyleIcons.dart';
import 'package:STG/Style/Style/StyleText.dart';
import 'package:flutter/material.dart';

class FrontInscriptionPage{

  static final TextNeed _text = TextNeed();

  Widget frInscriptionPage(State state,BuildContext context,OptionBloc optionBloc,bool debugShow){


    StyleText styleText = StyleText();
    StyleIcons styleIcons = StyleIcons();

    return SingleChildScrollView(
      child: Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0,bottom: 15.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.redAccent,
                      child: TextField(
                        style: styleText.style1(context),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: _text.WHRITENAME,
                            hintStyle: styleText.style(context),
                            icon: styleIcons.iconAccount(context)
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0,bottom: 15.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.redAccent,
                      child: TextField(
                        style: styleText.style1(context),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: _text.WHRITEFRISTNAME,
                            hintStyle: styleText.style(context),
                            icon: styleIcons.iconAccount(context)
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0,bottom: 15.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.redAccent,
                      child: TextField(
                        style: styleText.style1(context),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: _text.WHRITEEMAIL,
                            hintStyle: styleText.style(context),
                            icon: styleIcons.iconMail(context)
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0,bottom: 15.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.redAccent,
                      child: TextField(
                        style: styleText.style1(context),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: _text.WHRITEPASSWORD,
                            hintStyle: styleText.style(context),
                            icon: styleIcons.iconLock(context)
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0,bottom: 15.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.redAccent,
                      child: TextField(
                        style: styleText.style1(context),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: _text.WHRITECONFIRMPASSWORD,
                            hintStyle: styleText.style(context),
                            icon: styleIcons.iconLock(context)
                        ),
                      )
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      margin: EdgeInsets.only(top: 15.0,left: 15.0,right: 15.0,bottom: 15.0),
                      //width: MediaQuery.of(context).size.width,
                      //height: MediaQuery.of(context).size.height,
                      //color: Colors.redAccent,
                      child: TextField(
                        style: styleText.style1(context),
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                            hintText: _text.WHRITEADRESS,
                            hintStyle: styleText.style(context),
                            icon: styleIcons.iconLocation(context)
                        ),
                      )
                  ),
                ),

              ],
            ),
          )
      ),
    );
  }

  Widget frInscriptionPagedrawer(){
    StyleText styleText = StyleText();
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Drawer Header'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            title: Text('Item 1'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
          ListTile(
            title: Text('Item 2'),
            onTap: () {
              // Update the state of the app.
              // ...
            },
          ),
        ],
      ),
    );
  }

}