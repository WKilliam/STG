import 'package:flutter/material.dart';

class StyleIcons{

  Icon iconMail(BuildContext context){
    return Icon(
      Icons.mail_outline,
      color: Colors.white,
      size: MediaQuery.of(context).size.height/20
    );
  }

  Icon iconAccount(BuildContext context){
    return Icon(
        Icons.account_circle,
        color: Colors.white,
        size: MediaQuery.of(context).size.height/20
    );
  }

  Icon iconLocation(BuildContext context){
    return Icon(
        Icons.location_on,
        color: Colors.white,
        size: MediaQuery.of(context).size.height/20
    );
  }

  Icon iconLock(BuildContext context){
    return Icon(
        Icons.lock_outline,
        color: Colors.white,
        size: MediaQuery.of(context).size.height/20
    );
  }
}