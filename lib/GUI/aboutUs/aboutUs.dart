import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Color.fromRGBO(224,174,201, 1),
        toolbarHeight: 80,
        title: new Text("About US"),
      ),
      body: new Container(
        width: width,
        height: height,
        alignment: Alignment.topCenter,
        child: new SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              new Text("\n",textScaleFactor: 1,),
              new Image.asset("assets/icon.jpg",width: width*0.4,),
              new Text("\n\n",textScaleFactor: 1,),
              new Text("تطبيق متخصص بتقديم خدمات صالونات التجميل\n في المنزل للعميلات" , style: new TextStyle(fontSize: 20),textAlign: TextAlign.center,textScaleFactor: 1,),
              new Text("\n",textScaleFactor: 1,),
              new Container(
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  //color: Color.fromRGBO(224,174,201, 1),
                ),
                height: 100,
                child: ElevatedButton(
                  child: new Text("Instagram   " , textScaleFactor: 1,),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Color.fromRGBO(224,174,201, 1)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)))
                  ),
                  onPressed: () async {
                    if(await canLaunch("https://www.instagram.com/salonevip/")){
                      await launch("https://www.instagram.com/salonevip/");
                    }
                  },
                ),
              ),
              new Text("\n",textScaleFactor: 1,),
              new Container(
                width: width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(22.0),
                  //color: Color.fromRGBO(224,174,201, 1),
                ),
                height: 100,
                child: ElevatedButton(
                  child: new Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
                    new Icon(Icons.phone),
                    new Text("+966533312389" , textScaleFactor: 1,)
                  ],),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromRGBO(224,174,201, 1)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.0)))
                  ),
                  onPressed: () async {
                    await FlutterPhoneDirectCaller.callNumber("+966533312389");
                  },
                ),
              ),

            ],
          ),
        ),
      )
    );
  }
}
