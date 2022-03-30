import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saloon_vip/GUI/home/home.dart';
import 'package:saloon_vip/GUI/splash/Splash.dart';
import 'package:saloon_vip/classes/locat.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  if(await checkLocation() == false){
    SystemNavigator.pop(animated: true);
  }
  runApp(
    new MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    )
  );
}