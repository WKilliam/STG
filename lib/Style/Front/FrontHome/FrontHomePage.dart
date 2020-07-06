
import 'package:STG/Style/Front/FrontHome/FrontInscriptionPage.dart';
import 'package:STG/Style/Style/StyleText.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:STG/main.dart';



class FrontHomePage with ChangeNotifier{

  int connect = 2;
  int inscription = 3;


  Widget frHomePage (
      BuildContext context,
      bool debugShow,
      Text message,
      Text txtMail,
      Text txtMDP,
      Text connect,
      Text inscription,
      int whatContext
      ) {

    final Frt = Provider.of<FrontHomePage>(context,listen: false);
    StyleText styleText = StyleText();

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
                                      height: MediaQuery.of(context).size.height/20,
                                      color: debugShow==true ? Colors.purple:null,
                                      child: Center(child:Text(message.data,style: styleText.style(context),),)
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/15,
                                          left: MediaQuery.of(context).size.width/7,
                                          right: MediaQuery.of(context).size.width/7,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/20,
                                      color: debugShow==true ? Colors.purple:null,
                                      child: Center(child:Text(txtMail.data,style: styleText.style(context),),)
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/20,
                                          left: MediaQuery.of(context).size.width/5,
                                          right: MediaQuery.of(context).size.width/5,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/20,
                                      color: debugShow==true ? Colors.indigo:null,
                                      child: Center(child:TextField(
                                        style: styleText.style(context),
                                        textAlign: TextAlign.center,
                                      )
                                      )
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/15,
                                          left: MediaQuery.of(context).size.width/7,
                                          right: MediaQuery.of(context).size.width/7,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/20,
                                      color: debugShow==true ? Colors.purple:null,
                                      child: Center(child:Text(txtMDP.data,style: styleText.style(context),),)
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/20,
                                          left: MediaQuery.of(context).size.width/5,
                                          right: MediaQuery.of(context).size.width/5,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/20,
                                      color: debugShow==true ? Colors.indigo:null,
                                      child: Center(child:TextField(
                                        style: styleText.style(context),
                                        textAlign: TextAlign.center,
                                      )
                                      )
                                  ),
                                )
                            ),
                            Center(
                                child: Opacity(
                                  opacity: 1,
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          top:MediaQuery.of(context).size.height/20,
                                          left: MediaQuery.of(context).size.width/4,
                                          right: MediaQuery.of(context).size.width/4,
                                          bottom: MediaQuery.of(context).size.height/100),
                                      width: MediaQuery.of(context).size.width,
                                      height: MediaQuery.of(context).size.height/15,
                                      color: debugShow==true ? Colors.red:null,
                                      child: RaisedButton(
                                            color: Colors.white24,
                                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                            child: Center(child:Text(connect.data,style: styleText.style(context),),),
                                            onPressed: (){
                                              print('test press');
                                            },
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
                                      child:
                                      Consumer<MyHomePageState>(
                                        builder: (context ,MyHomePageState,child){
                                          return RaisedButton(
                                            color: Colors.white24,
                                            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                                            child: Center(child:Text(inscription.data,style: styleText.style(context),),),
                                            onPressed: (){
                                              MyHomePageState.whatContext=2;
                                            },
                                          );
                                        }
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

  @override
  Element createElement() {
    // TODO: implement createElement
    throw UnimplementedError();
  }


}
