import 'dart:async';

import 'package:flutter/material.dart';
import 'package:saloon_vip/GUI/home/home.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  void starter(var context){
    Timer(Duration(milliseconds: 3000), (){Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Home()), (route) => false);});
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    starter(context);
  }
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return new Scaffold(
      body: Container(
        width: width,
        height: height,
        alignment: Alignment.center,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          new Image.asset("assets/icon.jpg",width: width*0.5,),
          new Text("Saloon VIP" , style: TextStyle(color: Color.fromRGBO(156, 71, 159, 1),fontSize: 18),textScaleFactor: 1,), 
            new Text("\nPowered By ICR Company" , style: TextStyle(color: Color.fromRGBO(156, 71, 159, 1),fontSize: 13),textScaleFactor: 1,),
          ],
        ),
      ),
    );
  }
}
