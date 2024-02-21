import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_wallet_clone/application.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.white, // navigation bar color
    statusBarColor: Colors.white, // status bar color
  ));

  runApp(const Application());
}
