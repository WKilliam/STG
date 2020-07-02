import 'package:STG/Style/Style/StyleIcons.dart';
import 'package:STG/Style/Style/StyleText.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';


class FrontHomePage {

  Widget frHomePage(BuildContext context,bool debugShow,Text txtName,Text txtFirstName,Text txtEmail,Text password,Text confPassword,Text adress) {
    StyleText styleText = StyleText();
    StyleIcons styleIcons = StyleIcons();

    return SingleChildScrollView(
        child: Center(
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: debugShow==true ? Colors.green:null,
                child: Stack(
                    children: [
                      Center(
                          child: Opacity(
                            opacity: 0.5,
                            child: Container(
                                margin: EdgeInsets.only(
                                    top:MediaQuery.of(context).size.height/15,
                                    left: MediaQuery.of(context).size.width/8,
                                    right: MediaQuery.of(context).size.width/8,
                                    bottom: MediaQuery.of(context).size.height/15),
                                width: MediaQuery.of(context).size.width,
                                height: MediaQuery.of(context).size.height,
                                color: debugShow==true ? Colors.red:null,
                              child: Card(
                                elevation: 10,
                                color: Colors.white24,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              )
                            ),
                          )
                      ),
                      Center(
                        child: Column(
                          children: [
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/10,
                                          left: MediaQuery.of(context).size.width/7,
                                          right: MediaQuery.of(context).size.width/7,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/10,
                                      color: debugShow==true ? Colors.purple:null,
                                      child: Center(child:Text('Connectez-vous',style: styleText.style1(context),),)
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/50,
                                          left: MediaQuery.of(context).size.width/7,
                                          right: MediaQuery.of(context).size.width/7,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/5,
                                      color: debugShow==true ? Colors.brown:null,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Center(
                                                child:Text('Mail kkkkkkk',style: styleText.style1(context),)
                                            ),
                                            Center(
                                                child:TextField(
                                                  style: styleText.style1(context),
                                                  textAlign: TextAlign.center,
                                                )
                                            ),
                                          ],
                                        ),
                                      )
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/50,
                                          left: MediaQuery.of(context).size.width/7,
                                          right: MediaQuery.of(context).size.width/7,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/5,
                                      color: debugShow==true ? Colors.indigo:null,
                                      child: Center(
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Center(
                                                child:Text('Mail kkkkkkk',style: styleText.style1(context),)
                                            ),
                                            Center(
                                                child:TextField(
                                                  style: styleText.style1(context),
                                                  textAlign: TextAlign.center,
                                                )
                                            ),
                                          ],
                                        ),
                                      )
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/50,
                                          left: MediaQuery.of(context).size.width/4,
                                          right: MediaQuery.of(context).size.width/4,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/15,
                                      color: debugShow==true ? Colors.orange:null,
                                      child: InkWell(
                                        onTap: (){
                                          print('test');
                                        },
                                        child: Card(
                                            elevation: 10,
                                            color: Colors.white24,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0),
                                            ),
                                            child: Center(child:Text('Mail kkkkkkk',style: styleText.style1(context),),)
                                        ),
                                      )
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/50,
                                          left: MediaQuery.of(context).size.width/4,
                                          right: MediaQuery.of(context).size.width/4,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/15,
                                      color: debugShow==true ? Colors.red:null,
                                      child: InkWell(
                                        onTap: (){
                                          print('test');
                                        },
                                        child: Card(
                                            elevation: 10,
                                            color: Colors.white24,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(20.0),
                                            ),
                                            child: Center(child:Text('Mail kkkkkkk',style: styleText.style1(context),),)
                                        ),
                                      )
                                  ),
                                )
                            ),
                          ],
                        ),
                      ),
                    ]
                )
            )
        )
    );
  }


  Widget frHomePagedrawer(){
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