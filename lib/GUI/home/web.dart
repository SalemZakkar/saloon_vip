import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saloon_vip/GUI/home/home.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Web extends StatefulWidget {
  @override
  _WebState createState() => _WebState();
}

class _WebState extends State<Web> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(224,174,201, 1),
        title: new Text("Home"),
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: (){
            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (builder) => Home()), (route) => false);
          },
        ),

        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: WebView(initialUrl: "https://salla.sa/salone.vip/",javascriptMode: JavascriptMode.unrestricted,gestureNavigationEnabled: true,),
      ));
  }
}
