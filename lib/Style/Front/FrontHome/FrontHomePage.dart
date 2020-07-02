import 'package:STG/Style/Style/StyleIcons.dart';
import 'package:STG/Style/Style/StyleText.dart';
import 'package:flutter/material.dart';
import 'package:neon/neon.dart';


class FrontHomePage {

  Widget frHomePage(BuildContext context,Text txtName,Text txtFirstName,Text txtEmail,Text password,Text confPassword,Text adress) {
    StyleText styleText = StyleText();
    StyleIcons styleIcons = StyleIcons();

    return SingleChildScrollView(
        child: Center(
            child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
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
                              //color: Colors.white54,
                              child: Card(
                                elevation: 10,
                                color: Colors.white24,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                )
                              )
                            ),
                          )
                      ),
                      Center(
                          child: Opacity(
                            opacity: 1,
                            child: Container(
                                width: MediaQuery.of(context).size.width/2.1,
                                height: MediaQuery.of(context).size.height/9,
                                //color: Colors.white54,
                                child: Card(
                                    elevation: 10,
                                    color: Colors.red,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    )
                                )
                            ),
                          )
                      )

                    ]
                )
            )
        )
    );
  }
              /*
              Center(
                    Opacity(
                        opacity: 0.5,
                      child: Container(
                        width: MediaQuery.of(context).size.width/2,
                        height: MediaQuery.of(context).size.height/1.5,
                        //color: Colors.white54,
                        child: Card(
                          elevation: 10,
                          color: Colors.white24,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                      )
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }

               */

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