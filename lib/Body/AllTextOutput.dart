import 'package:flutter/material.dart';
class TextNeed{
  static final String _txtFirstName = "Prenom";
  static final String _txtName =  "Nom";
  static final String _txtEmail = "Email";
  static final String _password = "Mot de Passe";
  static final String _cpassword = "Confirmer Votre Mot De Passe";
  static final String _connectyou = "Connectez-vous";
  static final String _connect = "Connection";
  static final String _inscription = "Inscription";
  static final String _adress = "Adresse";

  String get WHRITEFRISTNAME => _txtFirstName;
  String get WHRITEPASSWORD => _password;
  String get WHRITEEMAIL => _txtEmail;
  String get WHRITENAME => _txtName;
  String get CONNECTYOU => _connectyou;
  String get CONNECT => _connect;
  String get INSCRIPTION => _inscription;
  String get WHRITECONFIRMPASSWORD => _cpassword;
  String get WHRITEADRESS => _adress;
}